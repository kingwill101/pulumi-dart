import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_association_args.dart';
import 'role_association_state.dart';

/// Provides an Amazon Managed Grafana workspace role association resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assume = new aws.iam.Role("assume", {
///     name: "grafana-assume",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Sid: "",
///             Principal: {
///                 Service: "grafana.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleWorkspace = new aws.grafana.Workspace("example", {
///     accountAccessType: "CURRENT_ACCOUNT",
///     authenticationProviders: ["SAML"],
///     permissionType: "SERVICE_MANAGED",
///     roleArn: assume.arn,
/// });
/// const example = new aws.grafana.RoleAssociation("example", {
///     role: "ADMIN",
///     userIds: [
///         "USER_ID_1",
///         "USER_ID_2",
///     ],
///     workspaceId: exampleWorkspace.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// assume = aws.iam.Role("assume",
///     name="grafana-assume",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Sid": "",
///             "Principal": {
///                 "Service": "grafana.amazonaws.com",
///             },
///         }],
///     }))
/// example_workspace = aws.grafana.Workspace("example",
///     account_access_type="CURRENT_ACCOUNT",
///     authentication_providers=["SAML"],
///     permission_type="SERVICE_MANAGED",
///     role_arn=assume.arn)
/// example = aws.grafana.RoleAssociation("example",
///     role="ADMIN",
///     user_ids=[
///         "USER_ID_1",
///         "USER_ID_2",
///     ],
///     workspace_id=example_workspace.id)
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
///     var assume = new Aws.Iam.Role("assume", new()
///     {
///         Name = "grafana-assume",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Sid"] = "",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "grafana.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleWorkspace = new Aws.Grafana.Workspace("example", new()
///     {
///         AccountAccessType = "CURRENT_ACCOUNT",
///         AuthenticationProviders = new[]
///         {
///             "SAML",
///         },
///         PermissionType = "SERVICE_MANAGED",
///         RoleArn = assume.Arn,
///     });
///
///     var example = new Aws.Grafana.RoleAssociation("example", new()
///     {
///         Role = "ADMIN",
///         UserIds = new[]
///         {
///             "USER_ID_1",
///             "USER_ID_2",
///         },
///         WorkspaceId = exampleWorkspace.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/grafana"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Sid":    "",
/// 					"Principal": map[string]string{
/// 						"Service": "grafana.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		assume, err := iam.NewRole(ctx, "assume", &iam.RoleArgs{
/// 			Name:             pulumi.String("grafana-assume"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := grafana.NewWorkspace(ctx, "example", &grafana.WorkspaceArgs{
/// 			AccountAccessType: pulumi.String("CURRENT_ACCOUNT"),
/// 			AuthenticationProviders: pulumi.StringArray{
/// 				pulumi.String("SAML"),
/// 			},
/// 			PermissionType: pulumi.String("SERVICE_MANAGED"),
/// 			RoleArn:        assume.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = grafana.NewRoleAssociation(ctx, "example", &grafana.RoleAssociationArgs{
/// 			Role: pulumi.String("ADMIN"),
/// 			UserIds: pulumi.StringArray{
/// 				pulumi.String("USER_ID_1"),
/// 				pulumi.String("USER_ID_2"),
/// 			},
/// 			WorkspaceId: exampleWorkspace.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_grafana_roleassociation" "example" {
///   role         = "ADMIN"
///   user_ids     = ["USER_ID_1", "USER_ID_2"]
///   workspace_id = aws_grafana_workspace.example.id
/// }
/// resource "aws_grafana_workspace" "example" {
///   account_access_type      = "CURRENT_ACCOUNT"
///   authentication_providers = ["SAML"]
///   permission_type          = "SERVICE_MANAGED"
///   role_arn                 = aws_iam_role.assume.arn
/// }
/// resource "aws_iam_role" "assume" {
///   name = "grafana-assume"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Sid"    = ""
///       "Principal" = {
///         "Service" = "grafana.amazonaws.com"
///       }
///     }]
///   })
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
/// import com.pulumi.aws.grafana.Workspace;
/// import com.pulumi.aws.grafana.WorkspaceArgs;
/// import com.pulumi.aws.grafana.RoleAssociation;
/// import com.pulumi.aws.grafana.RoleAssociationArgs;
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
///         var assume = new Role("assume", RoleArgs.builder()
///             .name("grafana-assume")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Sid", ""),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "grafana.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .accountAccessType("CURRENT_ACCOUNT")
///             .authenticationProviders("SAML")
///             .permissionType("SERVICE_MANAGED")
///             .roleArn(assume.arn())
///             .build());
///
///         var example = new RoleAssociation("example", RoleAssociationArgs.builder()
///             .role("ADMIN")
///             .userIds(
///                 "USER_ID_1",
///                 "USER_ID_2")
///             .workspaceId(exampleWorkspace.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:grafana:RoleAssociation
///     properties:
///       role: ADMIN
///       userIds:
///         - USER_ID_1
///         - USER_ID_2
///       workspaceId: ${exampleWorkspace.id}
///   exampleWorkspace:
///     type: aws:grafana:Workspace
///     name: example
///     properties:
///       accountAccessType: CURRENT_ACCOUNT
///       authenticationProviders:
///         - SAML
///       permissionType: SERVICE_MANAGED
///       roleArn: ${assume.arn}
///   assume:
///     type: aws:iam:Role
///     properties:
///       name: grafana-assume
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Sid: ""
///               Principal:
///                 Service: grafana.amazonaws.com
/// ```
class RoleAssociation extends pulumi.CustomResource {
  /// The AWS SSO group ids to be assigned the role given in `role`.
  late final pulumi.Output<List<String>?> groupIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The grafana role. Valid values can be found [here](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateInstruction.html#ManagedGrafana-Type-UpdateInstruction-role).
  late final pulumi.Output<String> role;
  /// The AWS SSO user ids to be assigned the role given in `role`.
  late final pulumi.Output<List<String>?> userIds;
  /// The workspace id.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [RoleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAssociation]. {@macro pulumi_grafana_role_association_role_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAssociation(
    String name, {
    RoleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/roleAssociation:RoleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    groupIds = registerOutput<List<String>?>('groupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    userIds = registerOutput<List<String>?>('userIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [RoleAssociation] resource's state with the given [name] and [id].
  static RoleAssociation get(
    String name,
    pulumi.Input<String> id, {
    RoleAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RoleAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RoleAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/roleAssociation:RoleAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupIds = registerOutput<List<String>?>('groupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    userIds = registerOutput<List<String>?>('userIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Creates a typed reference to an existing [RoleAssociation] resource.
  RoleAssociation.reference(String urn)
    : super(
        'aws:grafana/roleAssociation:RoleAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    groupIds = registerOutput<List<String>?>('groupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    userIds = registerOutput<List<String>?>('userIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workspaceId = registerOutput<String>('workspaceId');
  }
}
