import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_policy_attachment_args.dart';
import 'customer_managed_policy_attachment_customer_managed_policy_reference.dart';
import 'customer_managed_policy_attachment_state.dart';

/// Provides a customer managed policy attachment for a Single Sign-On (SSO) Permission Set resource
///
/// &gt; **WARNING:** Do not use this resource together with the `aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive` resource for the same permission set. Doing so will cause a conflict and will lead to customer managed policies being removed.
///
/// &gt; **NOTE:** Creating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
///     name: "Example",
///     instanceArn: example.then(example => example.arns?.[0]),
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
///     name: "TestPolicy",
///     description: "My test policy",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: ["ec2:Describe*"],
///             Effect: "Allow",
///             Resource: "*",
///         }],
///     }),
/// });
/// const exampleCustomerManagedPolicyAttachment = new aws.ssoadmin.CustomerManagedPolicyAttachment("example", {
///     customerManagedPolicyReference: {
///         name: examplePolicy.name,
///         path: "/",
///     },
///     instanceArn: examplePermissionSet.instanceArn,
///     permissionSetArn: examplePermissionSet.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_permission_set = aws.ssoadmin.PermissionSet("example",
///     name="Example",
///     instance_arn=example.arns[0])
/// example_policy = aws.iam.Policy("example",
///     name="TestPolicy",
///     description="My test policy",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": ["ec2:Describe*"],
///             "Effect": "Allow",
///             "Resource": "*",
///         }],
///     }))
/// example_customer_managed_policy_attachment = aws.ssoadmin.CustomerManagedPolicyAttachment("example",
///     customer_managed_policy_reference={
///         "name": example_policy.name,
///         "path": "/",
///     },
///     instance_arn=example_permission_set.instance_arn,
///     permission_set_arn=example_permission_set.arn)
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
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var examplePermissionSet = new Aws.SsoAdmin.PermissionSet("example", new()
///     {
///         Name = "Example",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///     });
///
///     var examplePolicy = new Aws.Iam.Policy("example", new()
///     {
///         Name = "TestPolicy",
///         Description = "My test policy",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "ec2:Describe*",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var exampleCustomerManagedPolicyAttachment = new Aws.SsoAdmin.CustomerManagedPolicyAttachment("example", new()
///     {
///         CustomerManagedPolicyReference = new Aws.SsoAdmin.Inputs.CustomerManagedPolicyAttachmentCustomerManagedPolicyReferenceArgs
///         {
///             Name = examplePolicy.Name,
///             Path = "/",
///         },
///         InstanceArn = examplePermissionSet.InstanceArn,
///         PermissionSetArn = examplePermissionSet.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePermissionSet, err := ssoadmin.NewPermissionSet(ctx, "example", &ssoadmin.PermissionSetArgs{
/// 			Name:        pulumi.String("Example"),
/// 			InstanceArn: pulumi.String(example.Arns[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"ec2:Describe*",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		examplePolicy, err := iam.NewPolicy(ctx, "example", &iam.PolicyArgs{
/// 			Name:        pulumi.String("TestPolicy"),
/// 			Description: pulumi.String("My test policy"),
/// 			Policy:      pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewCustomerManagedPolicyAttachment(ctx, "example", &ssoadmin.CustomerManagedPolicyAttachmentArgs{
/// 			CustomerManagedPolicyReference: &ssoadmin.CustomerManagedPolicyAttachmentCustomerManagedPolicyReferenceArgs{
/// 				Name: examplePolicy.Name,
/// 				Path: pulumi.String("/"),
/// 			},
/// 			InstanceArn:      examplePermissionSet.InstanceArn,
/// 			PermissionSetArn: examplePermissionSet.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ssoadmin_getinstances" "example" {
/// }
///
/// resource "aws_ssoadmin_permissionset" "example" {
///   name         = "Example"
///   instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
/// }
/// resource "aws_iam_policy" "example" {
///   name        = "TestPolicy"
///   description = "My test policy"
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action"   = ["ec2:Describe*"]
///       "Effect"   = "Allow"
///       "Resource" = "*"
///     }]
///   })
/// }
/// resource "aws_ssoadmin_customermanagedpolicyattachment" "example" {
///   customer_managed_policy_reference = {
///     name = aws_iam_policy.example.name
///     path = "/"
///   }
///   instance_arn       = aws_ssoadmin_permissionset.example.instance_arn
///   permission_set_arn = aws_ssoadmin_permissionset.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachment;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentArgs;
/// import com.pulumi.aws.ssoadmin.inputs.CustomerManagedPolicyAttachmentCustomerManagedPolicyReferenceArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var examplePermissionSet = new PermissionSet("examplePermissionSet", PermissionSetArgs.builder()
///             .name("Example")
///             .instanceArn(example.arns()[0])
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .name("TestPolicy")
///             .description("My test policy")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray("ec2:Describe*")),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///         var exampleCustomerManagedPolicyAttachment = new CustomerManagedPolicyAttachment("exampleCustomerManagedPolicyAttachment", CustomerManagedPolicyAttachmentArgs.builder()
///             .customerManagedPolicyReference(CustomerManagedPolicyAttachmentCustomerManagedPolicyReferenceArgs.builder()
///                 .name(examplePolicy.name())
///                 .path("/")
///                 .build())
///             .instanceArn(examplePermissionSet.instanceArn())
///             .permissionSetArn(examplePermissionSet.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePermissionSet:
///     type: aws:ssoadmin:PermissionSet
///     name: example
///     properties:
///       name: Example
///       instanceArn: ${example.arns[0]}
///   examplePolicy:
///     type: aws:iam:Policy
///     name: example
///     properties:
///       name: TestPolicy
///       description: My test policy
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - ec2:Describe*
///               Effect: Allow
///               Resource: '*'
///   exampleCustomerManagedPolicyAttachment:
///     type: aws:ssoadmin:CustomerManagedPolicyAttachment
///     name: example
///     properties:
///       customerManagedPolicyReference:
///         name: ${examplePolicy.name}
///         path: /
///       instanceArn: ${examplePermissionSet.instanceArn}
///       permissionSetArn: ${examplePermissionSet.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Managed Policy Attachments using the `name`, `path`, `permissionSetArn`, and `instanceArn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/customerManagedPolicyAttachment:CustomerManagedPolicyAttachment example TestPolicy,/,arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class CustomerManagedPolicyAttachment extends pulumi.CustomResource {
  /// Specifies the name and path of a customer managed policy. See below.
  late final pulumi.Output<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference> customerManagedPolicyReference;
  /// ARN of the SSO Instance under which the operation will be executed.
  late final pulumi.Output<String> instanceArn;
  /// ARN of the Permission Set.
  late final pulumi.Output<String> permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [CustomerManagedPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomerManagedPolicyAttachment]. {@macro pulumi_ssoadmin_customer_managed_policy_attachment_customer_managed_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomerManagedPolicyAttachment(
    String name, {
    CustomerManagedPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/customerManagedPolicyAttachment:CustomerManagedPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    customerManagedPolicyReference = registerOutput<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>('customerManagedPolicyReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomerManagedPolicyAttachmentCustomerManagedPolicyReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [CustomerManagedPolicyAttachment] resource's state with the given [name] and [id].
  static CustomerManagedPolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    CustomerManagedPolicyAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CustomerManagedPolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CustomerManagedPolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/customerManagedPolicyAttachment:CustomerManagedPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customerManagedPolicyReference = registerOutput<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>('customerManagedPolicyReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomerManagedPolicyAttachmentCustomerManagedPolicyReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [CustomerManagedPolicyAttachment] resource.
  CustomerManagedPolicyAttachment.reference(String urn)
    : super(
        'aws:ssoadmin/customerManagedPolicyAttachment:CustomerManagedPolicyAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    customerManagedPolicyReference = registerOutput<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>('customerManagedPolicyReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomerManagedPolicyAttachmentCustomerManagedPolicyReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
  }
}
