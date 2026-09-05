import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_args.dart';
import 'workspace_network_access_control.dart';
import 'workspace_state.dart';
import 'workspace_vpc_configuration.dart';

/// Provides an Amazon Managed Grafana workspace resource.
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
/// const example = new aws.grafana.Workspace("example", {
///     accountAccessType: "CURRENT_ACCOUNT",
///     authenticationProviders: ["SAML"],
///     permissionType: "SERVICE_MANAGED",
///     roleArn: assume.arn,
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
/// example = aws.grafana.Workspace("example",
///     account_access_type="CURRENT_ACCOUNT",
///     authentication_providers=["SAML"],
///     permission_type="SERVICE_MANAGED",
///     role_arn=assume.arn)
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
///     var example = new Aws.Grafana.Workspace("example", new()
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
/// 		_, err = grafana.NewWorkspace(ctx, "example", &grafana.WorkspaceArgs{
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
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .accountAccessType("CURRENT_ACCOUNT")
///             .authenticationProviders("SAML")
///             .permissionType("SERVICE_MANAGED")
///             .roleArn(assume.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:grafana:Workspace
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
/// ### Workspace configuration options
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.grafana.Workspace("example", {
///     accountAccessType: "CURRENT_ACCOUNT",
///     authenticationProviders: ["SAML"],
///     permissionType: "SERVICE_MANAGED",
///     roleArn: assume.arn,
///     configuration: JSON.stringify({
///         plugins: {
///             pluginAdminEnabled: true,
///         },
///         unifiedAlerting: {
///             enabled: false,
///         },
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.grafana.Workspace("example",
///     account_access_type="CURRENT_ACCOUNT",
///     authentication_providers=["SAML"],
///     permission_type="SERVICE_MANAGED",
///     role_arn=assume["arn"],
///     configuration=json.dumps({
///         "plugins": {
///             "pluginAdminEnabled": True,
///         },
///         "unifiedAlerting": {
///             "enabled": False,
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
///     var example = new Aws.Grafana.Workspace("example", new()
///     {
///         AccountAccessType = "CURRENT_ACCOUNT",
///         AuthenticationProviders = new[]
///         {
///             "SAML",
///         },
///         PermissionType = "SERVICE_MANAGED",
///         RoleArn = assume.Arn,
///         Configuration = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["plugins"] = new Dictionary<string, object?>
///             {
///                 ["pluginAdminEnabled"] = true,
///             },
///             ["unifiedAlerting"] = new Dictionary<string, object?>
///             {
///                 ["enabled"] = false,
///             },
///         }),
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]map[string]bool{
/// 			"plugins": map[string]bool{
/// 				"pluginAdminEnabled": true,
/// 			},
/// 			"unifiedAlerting": map[string]bool{
/// 				"enabled": false,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = grafana.NewWorkspace(ctx, "example", &grafana.WorkspaceArgs{
/// 			AccountAccessType: pulumi.String("CURRENT_ACCOUNT"),
/// 			AuthenticationProviders: pulumi.StringArray{
/// 				pulumi.String("SAML"),
/// 			},
/// 			PermissionType: pulumi.String("SERVICE_MANAGED"),
/// 			RoleArn:        pulumi.Any(assume.Arn),
/// 			Configuration:  pulumi.String(json0),
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
/// resource "aws_grafana_workspace" "example" {
///   account_access_type      = "CURRENT_ACCOUNT"
///   authentication_providers = ["SAML"]
///   permission_type          = "SERVICE_MANAGED"
///   role_arn                 = assume.arn
///   configuration = jsonencode({
///     "plugins" = {
///       "pluginAdminEnabled" = true
///     }
///     "unifiedAlerting" = {
///       "enabled" = false
///     }
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.grafana.Workspace;
/// import com.pulumi.aws.grafana.WorkspaceArgs;
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
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .accountAccessType("CURRENT_ACCOUNT")
///             .authenticationProviders("SAML")
///             .permissionType("SERVICE_MANAGED")
///             .roleArn(assume.arn())
///             .configuration(serializeJson(
///                 jsonObject(
///                     jsonProperty("plugins", jsonObject(
///                         jsonProperty("pluginAdminEnabled", true)
///                     )),
///                     jsonProperty("unifiedAlerting", jsonObject(
///                         jsonProperty("enabled", false)
///                     ))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:grafana:Workspace
///     properties:
///       accountAccessType: CURRENT_ACCOUNT
///       authenticationProviders:
///         - SAML
///       permissionType: SERVICE_MANAGED
///       roleArn: ${assume.arn}
///       configuration:
///         fn::toJSON:
///           plugins:
///             pluginAdminEnabled: true
///           unifiedAlerting:
///             enabled: false
/// ```
///
///
/// The optional argument `configuration` is a JSON string that disables the unified `Grafana Alerting` (Grafana version 10 or newer) and enables `Plugin Management` (Grafana version 9 or newer) on the Grafana Workspaces.
///
/// For more information about using Grafana alerting, and the effects of turning it on or off, see [Alerts in Grafana version 10](https://docs.aws.amazon.com/grafana/latest/userguide/v10-alerts.html).
///
/// ## Import
///
/// Using `pulumi import`, import Grafana Workspace using the workspace's `id`. For example:
///
/// ```sh
/// $ pulumi import aws:grafana/workspace:Workspace example g-2054c75a02
/// ```
class Workspace extends pulumi.CustomResource {
  /// The type of account access for the workspace. Valid values are `CURRENT_ACCOUNT` and `ORGANIZATION`. If `ORGANIZATION` is specified, then `organizationalUnits` must also be present.
  late final pulumi.Output<String> accountAccessType;
  /// ARN of the Grafana workspace.
  late final pulumi.Output<String> arn;
  /// The authentication providers for the workspace. Valid values are `AWS_SSO`, `SAML`, or both.
  late final pulumi.Output<List<String>> authenticationProviders;
  /// The configuration string for the workspace that you create. For more information about the format and configuration options available, see [Working in your Grafana workspace](https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html).
  late final pulumi.Output<String> configuration;
  /// The data sources for the workspace. Valid values are `AMAZON_OPENSEARCH_SERVICE`, `ATHENA`, `CLOUDWATCH`, `PROMETHEUS`, `REDSHIFT`, `SITEWISE`, `TIMESTREAM`, `TWINMAKER`, `XRAY`
  late final pulumi.Output<List<String>?> dataSources;
  /// The workspace description.
  late final pulumi.Output<String?> description;
  /// The endpoint of the Grafana workspace.
  late final pulumi.Output<String> endpoint;
  /// Specifies the version of Grafana to support in the new workspace. Supported values are `9.4`, `10.4` and `12.4`. If not specified, defaults to the latest version.
  late final pulumi.Output<String> grafanaVersion;
  /// The ARN of the AWS KMS key for encrypting workspace data.
  late final pulumi.Output<String> kmsKeyId;
  /// The Grafana workspace name.
  late final pulumi.Output<String> name;
  /// Configuration for network access to your workspace.See Network Access Control below.
  late final pulumi.Output<WorkspaceNetworkAccessControl?> networkAccessControl;
  /// The notification destinations. If a data source is specified here, Amazon Managed Grafana will create IAM roles and permissions needed to use these destinations. Must be set to `SNS`.
  late final pulumi.Output<List<String>?> notificationDestinations;
  /// The role name that the workspace uses to access resources through Amazon Organizations.
  late final pulumi.Output<String?> organizationRoleName;
  /// The Amazon Organizations organizational units that the workspace is authorized to use data sources from.
  late final pulumi.Output<List<String>?> organizationalUnits;
  /// The permission type of the workspace. If `SERVICE_MANAGED` is specified, the IAM roles and IAM policy attachments are generated automatically. If `CUSTOMER_MANAGED` is specified, the IAM roles and IAM policy attachments will not be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> permissionType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The IAM role ARN that the workspace assumes.
  late final pulumi.Output<String?> roleArn;
  late final pulumi.Output<String> samlConfigurationStatus;
  /// The AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace.
  late final pulumi.Output<String?> stackSetName;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The configuration settings for an Amazon VPC that contains data sources for your Grafana workspace to connect to. See VPC Configuration below.
  late final pulumi.Output<WorkspaceVpcConfiguration?> vpcConfiguration;

  /// Creates a new [Workspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workspace]. {@macro pulumi_grafana_workspace_workspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workspace(
    String name, {
    WorkspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountAccessType = registerOutput<String>('accountAccessType');
    arn = registerOutput<String>('arn');
    authenticationProviders = registerOutput<List<String>>('authenticationProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    configuration = registerOutput<String>('configuration');
    dataSources = registerOutput<List<String>?>('dataSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    endpoint = registerOutput<String>('endpoint');
    grafanaVersion = registerOutput<String>('grafanaVersion');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    networkAccessControl = registerOutput<WorkspaceNetworkAccessControl?>('networkAccessControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceNetworkAccessControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    notificationDestinations = registerOutput<List<String>?>('notificationDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    organizationRoleName = registerOutput<String?>('organizationRoleName');
    organizationalUnits = registerOutput<List<String>?>('organizationalUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    permissionType = registerOutput<String>('permissionType');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    samlConfigurationStatus = registerOutput<String>('samlConfigurationStatus');
    stackSetName = registerOutput<String?>('stackSetName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfiguration = registerOutput<WorkspaceVpcConfiguration?>('vpcConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Workspace] resource's state with the given [name] and [id].
  static Workspace get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workspace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workspace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountAccessType = registerOutput<String>('accountAccessType');
    arn = registerOutput<String>('arn');
    authenticationProviders = registerOutput<List<String>>('authenticationProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    configuration = registerOutput<String>('configuration');
    dataSources = registerOutput<List<String>?>('dataSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    endpoint = registerOutput<String>('endpoint');
    grafanaVersion = registerOutput<String>('grafanaVersion');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    networkAccessControl = registerOutput<WorkspaceNetworkAccessControl?>('networkAccessControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceNetworkAccessControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    notificationDestinations = registerOutput<List<String>?>('notificationDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    organizationRoleName = registerOutput<String?>('organizationRoleName');
    organizationalUnits = registerOutput<List<String>?>('organizationalUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    permissionType = registerOutput<String>('permissionType');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    samlConfigurationStatus = registerOutput<String>('samlConfigurationStatus');
    stackSetName = registerOutput<String?>('stackSetName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfiguration = registerOutput<WorkspaceVpcConfiguration?>('vpcConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Workspace] resource.
  Workspace.reference(String urn)
    : super(
        'aws:grafana/workspace:Workspace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountAccessType = registerOutput<String>('accountAccessType');
    arn = registerOutput<String>('arn');
    authenticationProviders = registerOutput<List<String>>('authenticationProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    configuration = registerOutput<String>('configuration');
    dataSources = registerOutput<List<String>?>('dataSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    endpoint = registerOutput<String>('endpoint');
    grafanaVersion = registerOutput<String>('grafanaVersion');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    networkAccessControl = registerOutput<WorkspaceNetworkAccessControl?>('networkAccessControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceNetworkAccessControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    notificationDestinations = registerOutput<List<String>?>('notificationDestinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    organizationRoleName = registerOutput<String?>('organizationRoleName');
    organizationalUnits = registerOutput<List<String>?>('organizationalUnits', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    permissionType = registerOutput<String>('permissionType');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    samlConfigurationStatus = registerOutput<String>('samlConfigurationStatus');
    stackSetName = registerOutput<String?>('stackSetName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfiguration = registerOutput<WorkspaceVpcConfiguration?>('vpcConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkspaceVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
