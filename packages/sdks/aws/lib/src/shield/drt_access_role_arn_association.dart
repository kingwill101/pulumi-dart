import 'package:pulumi/pulumi.dart' as pulumi;
import 'drt_access_role_arn_association_args.dart';
import 'drt_access_role_arn_association_state.dart';
import 'drt_access_role_arn_association_timeouts.dart';

/// Authorizes the Shield Response Team (SRT) using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks.
/// For more information see [Configure AWS SRT Support](https://docs.aws.amazon.com/waf/latest/developerguide/authorize-srt.html)
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
/// const example = new aws.shield.DrtAccessRoleArnAssociation("example", {roleArn: exampleRole.arn});
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
///     role: exampleRole.name,
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy",
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
/// example = aws.shield.DrtAccessRoleArnAssociation("example", role_arn=example_role.arn)
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
///     role=example_role.name,
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy")
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
///     var example = new Aws.Shield.DrtAccessRoleArnAssociation("example", new()
///     {
///         RoleArn = exampleRole.Arn,
///     });
///
///     var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
///     {
///         Role = exampleRole.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy",
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
/// 					"Principal": map[string]string{
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
/// 		_, err = shield.NewDrtAccessRoleArnAssociation(ctx, "example", &shield.DrtAccessRoleArnAssociationArgs{
/// 			RoleArn: exampleRole.Arn,
/// 		})
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
/// resource "aws_shield_drtaccessrolearnassociation" "example" {
///   role_arn = aws_iam_role.example.arn
/// }
/// resource "aws_iam_role" "example" {
///   name = "example-role"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"    = ""
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "drt.shield.amazonaws.com"
///       }
///       "Action" = "sts:AssumeRole"
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicyattachment" "example" {
///   role       = aws_iam_role.example.name
///   policy_arn = "arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy"
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
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
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
///         var example = new DrtAccessRoleArnAssociation("example", DrtAccessRoleArnAssociationArgs.builder()
///             .roleArn(exampleRole.arn())
///             .build());
///
///         var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(exampleRole.name())
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:shield:DrtAccessRoleArnAssociation
///     properties:
///       roleArn: ${exampleRole.arn}
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
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield DRT access role ARN association using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:shield/drtAccessRoleArnAssociation:DrtAccessRoleArnAssociation example 123456789012
/// ```
class DrtAccessRoleArnAssociation extends pulumi.CustomResource {
  /// ARN of the role the SRT will use to access your AWS account. Prior to making the AssociateDRTRole request, you must attach the `AWSShieldDRTAccessPolicy` managed policy to this role.
  late final pulumi.Output<String> roleArn;
  late final pulumi.Output<DrtAccessRoleArnAssociationTimeouts?> timeouts;

  /// Creates a new [DrtAccessRoleArnAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DrtAccessRoleArnAssociation]. {@macro pulumi_shield_drt_access_role_arn_association_drt_access_role_arn_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DrtAccessRoleArnAssociation(
    String name, {
    DrtAccessRoleArnAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/drtAccessRoleArnAssociation:DrtAccessRoleArnAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    roleArn = registerOutput<String>('roleArn');
    timeouts = registerOutput<DrtAccessRoleArnAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DrtAccessRoleArnAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DrtAccessRoleArnAssociation] resource's state with the given [name] and [id].
  static DrtAccessRoleArnAssociation get(
    String name,
    pulumi.Input<String> id, {
    DrtAccessRoleArnAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DrtAccessRoleArnAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DrtAccessRoleArnAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/drtAccessRoleArnAssociation:DrtAccessRoleArnAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    roleArn = registerOutput<String>('roleArn');
    timeouts = registerOutput<DrtAccessRoleArnAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DrtAccessRoleArnAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DrtAccessRoleArnAssociation] resource.
  DrtAccessRoleArnAssociation.reference(String urn)
    : super(
        'aws:shield/drtAccessRoleArnAssociation:DrtAccessRoleArnAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    roleArn = registerOutput<String>('roleArn');
    timeouts = registerOutput<DrtAccessRoleArnAssociationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DrtAccessRoleArnAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
