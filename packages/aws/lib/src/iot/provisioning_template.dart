import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_template_args.dart';
import 'provisioning_template_pre_provisioning_hook.dart';

/// Manages an IoT fleet provisioning template. For more info, see the AWS documentation on [fleet provisioning](https://docs.aws.amazon.com/iot/latest/developerguide/provision-wo-cert.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const iotAssumeRolePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["iot.amazonaws.com"],
///         }],
///     }],
/// });
/// const iotFleetProvisioning = new aws.iam.Role("iot_fleet_provisioning", {
///     name: "IoTProvisioningServiceRole",
///     path: "/service-role/",
///     assumeRolePolicy: iotAssumeRolePolicy.then(iotAssumeRolePolicy => iotAssumeRolePolicy.json),
/// });
/// const iotFleetProvisioningRegistration = new aws.iam.RolePolicyAttachment("iot_fleet_provisioning_registration", {
///     role: iotFleetProvisioning.name,
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSIoTThingsRegistration",
/// });
/// const devicePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["iot:Subscribe"],
///         resources: ["*"],
///     }],
/// });
/// const devicePolicyPolicy = new aws.iot.Policy("device_policy", {
///     name: "DevicePolicy",
///     policy: devicePolicy.then(devicePolicy => devicePolicy.json),
/// });
/// const fleet = new aws.iot.ProvisioningTemplate("fleet", {
///     name: "FleetTemplate",
///     description: "My provisioning template",
///     provisioningRoleArn: iotFleetProvisioning.arn,
///     enabled: true,
///     templateBody: pulumi.jsonStringify({
///         Parameters: {
///             SerialNumber: {
///                 Type: "String",
///             },
///         },
///         Resources: {
///             certificate: {
///                 Properties: {
///                     CertificateId: {
///                         Ref: "AWS::IoT::Certificate::Id",
///                     },
///                     Status: "Active",
///                 },
///                 Type: "AWS::IoT::Certificate",
///             },
///             policy: {
///                 Properties: {
///                     PolicyName: devicePolicyPolicy.name,
///                 },
///                 Type: "AWS::IoT::Policy",
///             },
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// iot_assume_role_policy = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["iot.amazonaws.com"],
///     }],
/// }])
/// iot_fleet_provisioning = aws.iam.Role("iot_fleet_provisioning",
///     name="IoTProvisioningServiceRole",
///     path="/service-role/",
///     assume_role_policy=iot_assume_role_policy.json)
/// iot_fleet_provisioning_registration = aws.iam.RolePolicyAttachment("iot_fleet_provisioning_registration",
///     role=iot_fleet_provisioning.name,
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSIoTThingsRegistration")
/// device_policy = aws.iam.get_policy_document(statements=[{
///     "actions": ["iot:Subscribe"],
///     "resources": ["*"],
/// }])
/// device_policy_policy = aws.iot.Policy("device_policy",
///     name="DevicePolicy",
///     policy=device_policy.json)
/// fleet = aws.iot.ProvisioningTemplate("fleet",
///     name="FleetTemplate",
///     description="My provisioning template",
///     provisioning_role_arn=iot_fleet_provisioning.arn,
///     enabled=True,
///     template_body=pulumi.Output.json_dumps({
///         "Parameters": {
///             "SerialNumber": {
///                 "Type": "String",
///             },
///         },
///         "Resources": {
///             "certificate": {
///                 "Properties": {
///                     "CertificateId": {
///                         "Ref": "AWS::IoT::Certificate::Id",
///                     },
///                     "Status": "Active",
///                 },
///                 "Type": "AWS::IoT::Certificate",
///             },
///             "policy": {
///                 "Properties": {
///                     "PolicyName": device_policy_policy.name,
///                 },
///                 "Type": "AWS::IoT::Policy",
///             },
///         },
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iotAssumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "iot.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var iotFleetProvisioning = new Aws.Iam.Role("iot_fleet_provisioning", new()
///     {
///         Name = "IoTProvisioningServiceRole",
///         Path = "/service-role/",
///         AssumeRolePolicy = iotAssumeRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var iotFleetProvisioningRegistration = new Aws.Iam.RolePolicyAttachment("iot_fleet_provisioning_registration", new()
///     {
///         Role = iotFleetProvisioning.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSIoTThingsRegistration",
///     });
///
///     var devicePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "iot:Subscribe",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var devicePolicyPolicy = new Aws.Iot.Policy("device_policy", new()
///     {
///         Name = "DevicePolicy",
///         PolicyDocument = devicePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var fleet = new Aws.Iot.ProvisioningTemplate("fleet", new()
///     {
///         Name = "FleetTemplate",
///         Description = "My provisioning template",
///         ProvisioningRoleArn = iotFleetProvisioning.Arn,
///         Enabled = true,
///         TemplateBody = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Parameters"] = new Dictionary<string, object?>
///             {
///                 ["SerialNumber"] = new Dictionary<string, object?>
///                 {
///                     ["Type"] = "String",
///                 },
///             },
///             ["Resources"] = new Dictionary<string, object?>
///             {
///                 ["certificate"] = new Dictionary<string, object?>
///                 {
///                     ["Properties"] = new Dictionary<string, object?>
///                     {
///                         ["CertificateId"] = new Dictionary<string, object?>
///                         {
///                             ["Ref"] = "AWS::IoT::Certificate::Id",
///                         },
///                         ["Status"] = "Active",
///                     },
///                     ["Type"] = "AWS::IoT::Certificate",
///                 },
///                 ["policy"] = new Dictionary<string, object?>
///                 {
///                     ["Properties"] = new Dictionary<string, object?>
///                     {
///                         ["PolicyName"] = devicePolicyPolicy.Name,
///                     },
///                     ["Type"] = "AWS::IoT::Policy",
///                 },
///             },
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		iotAssumeRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"iot.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iotFleetProvisioning, err := iam.NewRole(ctx, "iot_fleet_provisioning", &iam.RoleArgs{
/// 			Name:             pulumi.String("IoTProvisioningServiceRole"),
/// 			Path:             pulumi.String("/service-role/"),
/// 			AssumeRolePolicy: pulumi.String(iotAssumeRolePolicy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "iot_fleet_provisioning_registration", &iam.RolePolicyAttachmentArgs{
/// 			Role:      iotFleetProvisioning.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSIoTThingsRegistration"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		devicePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"iot:Subscribe",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		devicePolicyPolicy, err := iot.NewPolicy(ctx, "device_policy", &iot.PolicyArgs{
/// 			Name:   pulumi.String("DevicePolicy"),
/// 			Policy: pulumi.String(devicePolicy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewProvisioningTemplate(ctx, "fleet", &iot.ProvisioningTemplateArgs{
/// 			Name:                pulumi.String("FleetTemplate"),
/// 			Description:         pulumi.String("My provisioning template"),
/// 			ProvisioningRoleArn: iotFleetProvisioning.Arn,
/// 			Enabled:             pulumi.Bool(true),
/// 			TemplateBody: devicePolicyPolicy.Name.ApplyT(func(name string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Parameters": map[string]interface{}{
/// 						"SerialNumber": map[string]interface{}{
/// 							"Type": "String",
/// 						},
/// 					},
/// 					"Resources": map[string]interface{}{
/// 						"certificate": map[string]interface{}{
/// 							"Properties": map[string]interface{}{
/// 								"CertificateId": map[string]interface{}{
/// 									"Ref": "AWS::IoT::Certificate::Id",
/// 								},
/// 								"Status": "Active",
/// 							},
/// 							"Type": "AWS::IoT::Certificate",
/// 						},
/// 						"policy": map[string]interface{}{
/// 							"Properties": map[string]interface{}{
/// 								"PolicyName": name,
/// 							},
/// 							"Type": "AWS::IoT::Policy",
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.iot.Policy;
/// import com.pulumi.aws.iot.PolicyArgs;
/// import com.pulumi.aws.iot.ProvisioningTemplate;
/// import com.pulumi.aws.iot.ProvisioningTemplateArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var iotAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("iot.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var iotFleetProvisioning = new Role("iotFleetProvisioning", RoleArgs.builder()
///             .name("IoTProvisioningServiceRole")
///             .path("/service-role/")
///             .assumeRolePolicy(iotAssumeRolePolicy.json())
///             .build());
///
///         var iotFleetProvisioningRegistration = new RolePolicyAttachment("iotFleetProvisioningRegistration", RolePolicyAttachmentArgs.builder()
///             .role(iotFleetProvisioning.name())
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSIoTThingsRegistration")
///             .build());
///
///         final var devicePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("iot:Subscribe")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var devicePolicyPolicy = new Policy("devicePolicyPolicy", PolicyArgs.builder()
///             .name("DevicePolicy")
///             .policy(devicePolicy.json())
///             .build());
///
///         var fleet = new ProvisioningTemplate("fleet", ProvisioningTemplateArgs.builder()
///             .name("FleetTemplate")
///             .description("My provisioning template")
///             .provisioningRoleArn(iotFleetProvisioning.arn())
///             .enabled(true)
///             .templateBody(devicePolicyPolicy.name().applyValue(_name -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Parameters", jsonObject(
///                         jsonProperty("SerialNumber", jsonObject(
///                             jsonProperty("Type", "String")
///                         ))
///                     )),
///                     jsonProperty("Resources", jsonObject(
///                         jsonProperty("certificate", jsonObject(
///                             jsonProperty("Properties", jsonObject(
///                                 jsonProperty("CertificateId", jsonObject(
///                                     jsonProperty("Ref", "AWS::IoT::Certificate::Id")
///                                 )),
///                                 jsonProperty("Status", "Active")
///                             )),
///                             jsonProperty("Type", "AWS::IoT::Certificate")
///                         )),
///                         jsonProperty("policy", jsonObject(
///                             jsonProperty("Properties", jsonObject(
///                                 jsonProperty("PolicyName", _name)
///                             )),
///                             jsonProperty("Type", "AWS::IoT::Policy")
///                         ))
///                     ))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   iotFleetProvisioning:
///     type: aws:iam:Role
///     name: iot_fleet_provisioning
///     properties:
///       name: IoTProvisioningServiceRole
///       path: /service-role/
///       assumeRolePolicy: ${iotAssumeRolePolicy.json}
///   iotFleetProvisioningRegistration:
///     type: aws:iam:RolePolicyAttachment
///     name: iot_fleet_provisioning_registration
///     properties:
///       role: ${iotFleetProvisioning.name}
///       policyArn: arn:aws:iam::aws:policy/service-role/AWSIoTThingsRegistration
///   devicePolicyPolicy:
///     type: aws:iot:Policy
///     name: device_policy
///     properties:
///       name: DevicePolicy
///       policy: ${devicePolicy.json}
///   fleet:
///     type: aws:iot:ProvisioningTemplate
///     properties:
///       name: FleetTemplate
///       description: My provisioning template
///       provisioningRoleArn: ${iotFleetProvisioning.arn}
///       enabled: true
///       templateBody:
///         fn::toJSON:
///           Parameters:
///             SerialNumber:
///               Type: String
///           Resources:
///             certificate:
///               Properties:
///                 CertificateId:
///                   Ref: AWS::IoT::Certificate::Id
///                 Status: Active
///               Type: AWS::IoT::Certificate
///             policy:
///               Properties:
///                 PolicyName: ${devicePolicyPolicy.name}
///               Type: AWS::IoT::Policy
/// variables:
///   iotAssumeRolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - iot.amazonaws.com
///   devicePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - iot:Subscribe
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT fleet provisioning templates using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iot/provisioningTemplate:ProvisioningTemplate fleet FleetProvisioningTemplate
/// ```
class ProvisioningTemplate extends pulumi.CustomResource {
  /// The ARN that identifies the provisioning template.
  late final pulumi.Output<String> arn;

  /// The default version of the fleet provisioning template.
  late final pulumi.Output<int> defaultVersionId;

  /// The description of the fleet provisioning template.
  late final pulumi.Output<String?> description;

  /// True to enable the fleet provisioning template, otherwise false.
  late final pulumi.Output<bool?> enabled;

  /// The name of the fleet provisioning template.
  late final pulumi.Output<String> name;

  /// Creates a pre-provisioning hook template. Details below.
  late final pulumi.Output<ProvisioningTemplatePreProvisioningHook?>
  preProvisioningHook;

  /// The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device.
  late final pulumi.Output<String> provisioningRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The JSON formatted contents of the fleet provisioning template.
  late final pulumi.Output<String> templateBody;

  /// The type you define in a provisioning template.
  late final pulumi.Output<String> type;

  /// Creates a new [ProvisioningTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisioningTemplate]. {@macro pulumi_iot_provisioning_template_provisioning_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisioningTemplate(
    String name, {
    ProvisioningTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:iot/provisioningTemplate:ProvisioningTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersionId = registerOutput<int>('defaultVersionId');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    this.preProvisioningHook =
        registerOutput<ProvisioningTemplatePreProvisioningHook?>(
          'preProvisioningHook',
        );
    this.provisioningRoleArn = registerOutput<String>('provisioningRoleArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateBody = registerOutput<String>('templateBody');
    this.type = registerOutput<String>('type');
  }
}
