import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_alias_args.dart';
import 'role_alias_state.dart';

/// Provides an IoT role alias.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     principals: [{
///         type: "Service",
///         identifiers: ["credentials.iot.amazonaws.com"],
///     }],
///     effect: "Allow",
///     actions: ["sts:AssumeRole"],
/// });
/// const role = new aws.iam.Role("role", {
///     name: "dynamodb-access-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const alias = new aws.iot.RoleAlias("alias", {
///     alias: "Thermostat-dynamodb-access-role-alias",
///     roleArn: role.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(principals=[{
///         "type": "Service",
///         "identifiers": ["credentials.iot.amazonaws.com"],
///     }],
///     effect="Allow",
///     actions=["sts:AssumeRole"])
/// role = aws.iam.Role("role",
///     name="dynamodb-access-role",
///     assume_role_policy=assume_role.json)
/// alias = aws.iot.RoleAlias("alias",
///     alias="Thermostat-dynamodb-access-role-alias",
///     role_arn=role.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Principals = new[]
///         {
///
///             {
///                 { "type", "Service" },
///                 { "identifiers", new[]
///                 {
///                     "credentials.iot.amazonaws.com",
///                 } },
///             },
///         },
///         Effect = "Allow",
///         Actions = new[]
///         {
///             "sts:AssumeRole",
///         },
///     });
///
///     var role = new Aws.Iam.Role("role", new()
///     {
///         Name = "dynamodb-access-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var @alias = new Aws.Iot.RoleAlias("alias", new()
///     {
///         Alias = "Thermostat-dynamodb-access-role-alias",
///         RoleArn = role.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Principals: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"type": "Service",
/// 					"identifiers": []string{
/// 						"credentials.iot.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 			Effect: "Allow",
/// 			Actions: []string{
/// 				"sts:AssumeRole",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		role, err := iam.NewRole(ctx, "role", &iam.RoleArgs{
/// 			Name:             pulumi.String("dynamodb-access-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iot.NewRoleAlias(ctx, "alias", &iot.RoleAliasArgs{
/// 			Alias:   pulumi.String("Thermostat-dynamodb-access-role-alias"),
/// 			RoleArn: role.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_policy_document" "assumeRole" {
///   principals = [{
///     "type"        = "Service"
///     "identifiers" = ["credentials.iot.amazonaws.com"]
///   }]
///   effect  = "Allow"
///   actions = ["sts:AssumeRole"]
/// }
///
/// resource "aws_iam_role" "role" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name               = "dynamodb-access-role"
///   assume_role_policy = data.aws_iam_policy_document.assumeRole.json
/// }
/// resource "aws_iot_role_alias" "alias" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   alias    = "Thermostat-dynamodb-access-role-alias"
///   role_arn = aws_iam_role.role.arn
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
/// import com.pulumi.aws.iot.RoleAlias;
/// import com.pulumi.aws.iot.RoleAliasArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .principals(Arrays.asList(Map.ofEntries(
///                 Map.entry("type", "Service"),
///                 Map.entry("identifiers", Arrays.asList("credentials.iot.amazonaws.com"))
///             )))
///             .effect("Allow")
///             .actions(Arrays.asList("sts:AssumeRole"))
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .name("dynamodb-access-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var alias = new RoleAlias("alias", RoleAliasArgs.builder()
///             .alias("Thermostat-dynamodb-access-role-alias")
///             .roleArn(role.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   role:
///     type: aws:iam:Role
///     properties:
///       name: dynamodb-access-role
///       assumeRolePolicy: ${assumeRole.json}
///   alias:
///     type: aws:iot:RoleAlias
///     properties:
///       alias: Thermostat-dynamodb-access-role-alias
///       roleArn: ${role.arn}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         principals:
///           - type: Service
///             identifiers:
///               - credentials.iot.amazonaws.com
///         effect: Allow
///         actions:
///           - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT Role Alias using the alias. For example:
///
/// ```sh
/// $ pulumi import aws:iot/roleAlias:RoleAlias example myalias
/// ```
class RoleAlias extends pulumi.CustomResource {
  /// The name of the role alias.
  late final pulumi.Output<String> alias;
  /// The ARN assigned by AWS to this role alias.
  late final pulumi.Output<String> arn;
  /// The duration of the credential, in seconds. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 900 seconds (15 minutes) to 43200 seconds (12 hours).
  late final pulumi.Output<int?> credentialDuration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The identity of the role to which the alias refers.
  late final pulumi.Output<String> roleArn;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RoleAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAlias]. {@macro pulumi_iot_role_alias_role_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAlias(
    String name, {
    RoleAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/roleAlias:RoleAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.52.1').merge(options),
        ) {
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    credentialDuration = registerOutput<int?>('credentialDuration');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [RoleAlias] resource's state with the given [name] and [id].
  static RoleAlias get(
    String name,
    pulumi.Input<String> id, {
    RoleAliasState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RoleAlias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RoleAlias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/roleAlias:RoleAlias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    credentialDuration = registerOutput<int?>('credentialDuration');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [RoleAlias] resource.
  RoleAlias.reference(String urn)
    : super(
        'aws:iot/roleAlias:RoleAlias',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alias = registerOutput<String>('alias');
    arn = registerOutput<String>('arn');
    credentialDuration = registerOutput<int?>('credentialDuration');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
