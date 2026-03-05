import 'package:pulumi/pulumi.dart' as pulumi;
import 'proactive_engagement_args.dart';
import 'proactive_engagement_state.dart';

/// Resource for managing a AWS Shield Proactive Engagement.
/// Proactive engagement authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example-role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "",
///             Effect: "Allow",
///             Principal: {
///                 Service: "drt.shield.amazonaws.com",
///             },
///             Action: "sts:AssumeRole",
///         }],
///     }),
/// });
/// const exampleDrtAccessRoleArnAssociation = new aws.shield.DrtAccessRoleArnAssociation("example", {roleArn: exampleRole.arn});
/// const example = new aws.shield.ProactiveEngagement("example", {
///     enabled: true,
///     emergencyContacts: [
///         {
///             contactNotes: "Notes",
///             emailAddress: "contact1@example.com",
///             phoneNumber: "+12358132134",
///         },
///         {
///             contactNotes: "Notes 2",
///             emailAddress: "contact2@example.com",
///             phoneNumber: "+12358132134",
///         },
///     ],
/// }, {
///     dependsOn: [exampleDrtAccessRoleArnAssociation],
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     role: exampleRole.name,
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy",
/// });
/// const exampleProtectionGroup = new aws.shield.ProtectionGroup("example", {
///     protectionGroupId: "example",
///     aggregation: "MAX",
///     pattern: "ALL",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_role = aws.iam.Role("example",
///     name="example-role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "drt.shield.amazonaws.com",
///             },
///             "Action": "sts:AssumeRole",
///         }],
///     }))
/// example_drt_access_role_arn_association = aws.shield.DrtAccessRoleArnAssociation("example", role_arn=example_role.arn)
/// example = aws.shield.ProactiveEngagement("example",
///     enabled=True,
///     emergency_contacts=[
///         {
///             "contact_notes": "Notes",
///             "email_address": "contact1@example.com",
///             "phone_number": "+12358132134",
///         },
///         {
///             "contact_notes": "Notes 2",
///             "email_address": "contact2@example.com",
///             "phone_number": "+12358132134",
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example_drt_access_role_arn_association]))
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     role=example_role.name,
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy")
/// example_protection_group = aws.shield.ProtectionGroup("example",
///     protection_group_id="example",
///     aggregation="MAX",
///     pattern="ALL")
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
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example-role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "drt.shield.amazonaws.com",
///                     },
///                     ["Action"] = "sts:AssumeRole",
///                 },
///             },
///         }),
///     });
///
///     var exampleDrtAccessRoleArnAssociation = new Aws.Shield.DrtAccessRoleArnAssociation("example", new()
///     {
///         RoleArn = exampleRole.Arn,
///     });
///
///     var example = new Aws.Shield.ProactiveEngagement("example", new()
///     {
///         Enabled = true,
///         EmergencyContacts = new[]
///         {
///             new Aws.Shield.Inputs.ProactiveEngagementEmergencyContactArgs
///             {
///                 ContactNotes = "Notes",
///                 EmailAddress = "contact1@example.com",
///                 PhoneNumber = "+12358132134",
///             },
///             new Aws.Shield.Inputs.ProactiveEngagementEmergencyContactArgs
///             {
///                 ContactNotes = "Notes 2",
///                 EmailAddress = "contact2@example.com",
///                 PhoneNumber = "+12358132134",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleDrtAccessRoleArnAssociation,
///         },
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = exampleRole.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy",
///     });
///
///     var exampleProtectionGroup = new Aws.Shield.ProtectionGroup("example", new()
///     {
///         ProtectionGroupId = "example",
///         Aggregation = "MAX",
///         Pattern = "ALL",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "drt.shield.amazonaws.com",
/// 					},
/// 					"Action": "sts:AssumeRole",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDrtAccessRoleArnAssociation, err := shield.NewDrtAccessRoleArnAssociation(ctx, "example", &shield.DrtAccessRoleArnAssociationArgs{
/// 			RoleArn: exampleRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = shield.NewProactiveEngagement(ctx, "example", &shield.ProactiveEngagementArgs{
/// 			Enabled: pulumi.Bool(true),
/// 			EmergencyContacts: shield.ProactiveEngagementEmergencyContactArray{
/// 				&shield.ProactiveEngagementEmergencyContactArgs{
/// 					ContactNotes: pulumi.String("Notes"),
/// 					EmailAddress: pulumi.String("contact1@example.com"),
/// 					PhoneNumber:  pulumi.String("+12358132134"),
/// 				},
/// 				&shield.ProactiveEngagementEmergencyContactArgs{
/// 					ContactNotes: pulumi.String("Notes 2"),
/// 					EmailAddress: pulumi.String("contact2@example.com"),
/// 					PhoneNumber:  pulumi.String("+12358132134"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleDrtAccessRoleArnAssociation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// 			Role:      exampleRole.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = shield.NewProtectionGroup(ctx, "example", &shield.ProtectionGroupArgs{
/// 			ProtectionGroupId: pulumi.String("example"),
/// 			Aggregation:       pulumi.String("MAX"),
/// 			Pattern:           pulumi.String("ALL"),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.shield.DrtAccessRoleArnAssociation;
/// import com.pulumi.aws.shield.DrtAccessRoleArnAssociationArgs;
/// import com.pulumi.aws.shield.ProactiveEngagement;
/// import com.pulumi.aws.shield.ProactiveEngagementArgs;
/// import com.pulumi.aws.shield.inputs.ProactiveEngagementEmergencyContactArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.shield.ProtectionGroup;
/// import com.pulumi.aws.shield.ProtectionGroupArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example-role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", ""),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "drt.shield.amazonaws.com")
///                         )),
///                         jsonProperty("Action", "sts:AssumeRole")
///                     )))
///                 )))
///             .build());
///
///         var exampleDrtAccessRoleArnAssociation = new DrtAccessRoleArnAssociation("exampleDrtAccessRoleArnAssociation", DrtAccessRoleArnAssociationArgs.builder()
///             .roleArn(exampleRole.arn())
///             .build());
///
///         var example = new ProactiveEngagement("example", ProactiveEngagementArgs.builder()
///             .enabled(true)
///             .emergencyContacts(
///                 ProactiveEngagementEmergencyContactArgs.builder()
///                     .contactNotes("Notes")
///                     .emailAddress("contact1@example.com")
///                     .phoneNumber("+12358132134")
///                     .build(),
///                 ProactiveEngagementEmergencyContactArgs.builder()
///                     .contactNotes("Notes 2")
///                     .emailAddress("contact2@example.com")
///                     .phoneNumber("+12358132134")
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleDrtAccessRoleArnAssociation)
///                 .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(exampleRole.name())
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy")
///             .build());
///
///         var exampleProtectionGroup = new ProtectionGroup("exampleProtectionGroup", ProtectionGroupArgs.builder()
///             .protectionGroupId("example")
///             .aggregation("MAX")
///             .pattern("ALL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:shield:ProactiveEngagement
///     properties:
///       enabled: true
///       emergencyContacts:
///         - contactNotes: Notes
///           emailAddress: contact1@example.com
///           phoneNumber: '+12358132134'
///         - contactNotes: Notes 2
///           emailAddress: contact2@example.com
///           phoneNumber: '+12358132134'
///     options:
///       dependsOn:
///         - ${exampleDrtAccessRoleArnAssociation}
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example-role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: ""
///               Effect: Allow
///               Principal:
///                 Service: drt.shield.amazonaws.com
///               Action: sts:AssumeRole
///   exampleRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: example
///     properties:
///       role: ${exampleRole.name}
///       policyArn: arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy
///   exampleDrtAccessRoleArnAssociation:
///     type: aws:shield:DrtAccessRoleArnAssociation
///     name: example
///     properties:
///       roleArn: ${exampleRole.arn}
///   exampleProtectionGroup:
///     type: aws:shield:ProtectionGroup
///     name: example
///     properties:
///       protectionGroupId: example
///       aggregation: MAX
///       pattern: ALL
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield proactive engagement using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:shield/proactiveEngagement:ProactiveEngagement example 123456789012
/// ```
class ProactiveEngagement extends pulumi.CustomResource {
  /// One or more emergency contacts. You must provide at least one phone number in the emergency contact list. See `emergency_contacts`.
  late final pulumi.Output<List<Map<String, dynamic>>> emergencyContacts;
  /// Boolean value indicating if Proactive Engagement should be enabled or not.
  late final pulumi.Output<bool> enabled;

  /// Creates a new [ProactiveEngagement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProactiveEngagement]. {@macro pulumi_shield_proactive_engagement_proactive_engagement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProactiveEngagement(
    String name, {
    ProactiveEngagementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/proactiveEngagement:ProactiveEngagement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    emergencyContacts = registerOutput<List<Map<String, dynamic>>>('emergencyContacts');
    enabled = registerOutput<bool>('enabled');
  }

  /// Gets an existing [ProactiveEngagement] resource's state with the given [name] and [id].
  static ProactiveEngagement get(
    String name,
    pulumi.Input<String> id, {
    ProactiveEngagementState? state,
  }) {
    return ProactiveEngagement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProactiveEngagement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/proactiveEngagement:ProactiveEngagement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    emergencyContacts = registerOutput<List<Map<String, dynamic>>>('emergencyContacts');
    enabled = registerOutput<bool>('enabled');
  }
}
