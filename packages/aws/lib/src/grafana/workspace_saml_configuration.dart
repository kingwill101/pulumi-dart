import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_saml_configuration_args.dart';

/// Provides an Amazon Managed Grafana workspace SAML configuration resource.
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
/// const example = new aws.grafana.WorkspaceSamlConfiguration("example", {
///     editorRoleValues: ["editor"],
///     idpMetadataUrl: "https://my_idp_metadata.url",
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
/// example = aws.grafana.WorkspaceSamlConfiguration("example",
///     editor_role_values=["editor"],
///     idp_metadata_url="https://my_idp_metadata.url",
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
///     var example = new Aws.Grafana.WorkspaceSamlConfiguration("example", new()
///     {
///         EditorRoleValues = new[]
///         {
///             "editor",
///         },
///         IdpMetadataUrl = "https://my_idp_metadata.url",
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
/// 					"Principal": map[string]interface{}{
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
/// 		_, err = grafana.NewWorkspaceSamlConfiguration(ctx, "example", &grafana.WorkspaceSamlConfigurationArgs{
/// 			EditorRoleValues: pulumi.StringArray{
/// 				pulumi.String("editor"),
/// 			},
/// 			IdpMetadataUrl: pulumi.String("https://my_idp_metadata.url"),
/// 			WorkspaceId:    exampleWorkspace.ID(),
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
/// import com.pulumi.aws.grafana.Workspace;
/// import com.pulumi.aws.grafana.WorkspaceArgs;
/// import com.pulumi.aws.grafana.WorkspaceSamlConfiguration;
/// import com.pulumi.aws.grafana.WorkspaceSamlConfigurationArgs;
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
///         var example = new WorkspaceSamlConfiguration("example", WorkspaceSamlConfigurationArgs.builder()
///             .editorRoleValues("editor")
///             .idpMetadataUrl("https://my_idp_metadata.url")
///             .workspaceId(exampleWorkspace.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:grafana:WorkspaceSamlConfiguration
///     properties:
///       editorRoleValues:
///         - editor
///       idpMetadataUrl: https://my_idp_metadata.url
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
///
///
/// ## Import
///
/// Using `pulumi import`, import Grafana Workspace SAML configuration using the workspace's `id`. For example:
///
/// ```sh
/// $ pulumi import aws:grafana/workspaceSamlConfiguration:WorkspaceSamlConfiguration example g-2054c75a02
/// ```
class WorkspaceSamlConfiguration extends pulumi.CustomResource {
  /// The admin role values.
  late final pulumi.Output<List<String>?> adminRoleValues;

  /// The allowed organizations.
  late final pulumi.Output<List<String>?> allowedOrganizations;

  /// The editor role values.
  late final pulumi.Output<List<String>> editorRoleValues;

  /// The email assertion.
  late final pulumi.Output<String> emailAssertion;

  /// The groups assertion.
  late final pulumi.Output<String?> groupsAssertion;

  /// The IDP Metadata URL. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  late final pulumi.Output<String?> idpMetadataUrl;

  /// The IDP Metadata XML. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  late final pulumi.Output<String?> idpMetadataXml;

  /// The login assertion.
  late final pulumi.Output<String> loginAssertion;

  /// The login validity duration.
  late final pulumi.Output<int> loginValidityDuration;

  /// The name assertion.
  late final pulumi.Output<String> nameAssertion;

  /// The org assertion.
  late final pulumi.Output<String?> orgAssertion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The role assertion.
  late final pulumi.Output<String?> roleAssertion;

  /// The status of the SAML configuration.
  late final pulumi.Output<String> status;

  /// The workspace id.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceSamlConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceSamlConfiguration]. {@macro pulumi_grafana_workspace_saml_configuration_workspace_saml_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceSamlConfiguration(
    String name, {
    WorkspaceSamlConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceSamlConfiguration:WorkspaceSamlConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminRoleValues = registerOutput<List<String>?>('adminRoleValues');
    this.allowedOrganizations =
        registerOutput<List<String>?>('allowedOrganizations');
    this.editorRoleValues = registerOutput<List<String>>('editorRoleValues');
    this.emailAssertion = registerOutput<String>('emailAssertion');
    this.groupsAssertion = registerOutput<String?>('groupsAssertion');
    this.idpMetadataUrl = registerOutput<String?>('idpMetadataUrl');
    this.idpMetadataXml = registerOutput<String?>('idpMetadataXml');
    this.loginAssertion = registerOutput<String>('loginAssertion');
    this.loginValidityDuration = registerOutput<int>('loginValidityDuration');
    this.nameAssertion = registerOutput<String>('nameAssertion');
    this.orgAssertion = registerOutput<String?>('orgAssertion');
    this.region = registerOutput<String>('region');
    this.roleAssertion = registerOutput<String?>('roleAssertion');
    this.status = registerOutput<String>('status');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
