import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_organization_mute_config_args.dart';

/// Mute Findings is a volume management feature in Security Command Center
/// that lets you manually or programmatically hide irrelevant findings,
/// and create filters to automatically silence existing and future
/// findings based on criteria you specify.
///
///
/// To get more information about OrganizationMuteConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/organizations.muteConfigs)
///
/// ## Example Usage
///
/// ### Scc V2 Organization Mute Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.securitycenter.V2OrganizationMuteConfig("default", {
///     muteConfigId: "my-config",
///     organization: "123456789",
///     location: "global",
///     description: "My custom Cloud Security Command Center Finding Organization mute Configuration",
///     filter: "severity = \"HIGH\"",
///     type: "STATIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.securitycenter.V2OrganizationMuteConfig("default",
///     mute_config_id="my-config",
///     organization="123456789",
///     location="global",
///     description="My custom Cloud Security Command Center Finding Organization mute Configuration",
///     filter="severity = \"HIGH\"",
///     type="STATIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.SecurityCenter.V2OrganizationMuteConfig("default", new()
///     {
///         MuteConfigId = "my-config",
///         Organization = "123456789",
///         Location = "global",
///         Description = "My custom Cloud Security Command Center Finding Organization mute Configuration",
///         Filter = "severity = \"HIGH\"",
///         Type = "STATIC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitycenter.NewV2OrganizationMuteConfig(ctx, "default", &securitycenter.V2OrganizationMuteConfigArgs{
/// 			MuteConfigId: pulumi.String("my-config"),
/// 			Organization: pulumi.String("123456789"),
/// 			Location:     pulumi.String("global"),
/// 			Description:  pulumi.String("My custom Cloud Security Command Center Finding Organization mute Configuration"),
/// 			Filter:       pulumi.String("severity = \"HIGH\""),
/// 			Type:         pulumi.String("STATIC"),
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
/// import com.pulumi.gcp.securitycenter.V2OrganizationMuteConfig;
/// import com.pulumi.gcp.securitycenter.V2OrganizationMuteConfigArgs;
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
///         var default_ = new V2OrganizationMuteConfig("default", V2OrganizationMuteConfigArgs.builder()
///             .muteConfigId("my-config")
///             .organization("123456789")
///             .location("global")
///             .description("My custom Cloud Security Command Center Finding Organization mute Configuration")
///             .filter("severity = \"HIGH\"")
///             .type("STATIC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:securitycenter:V2OrganizationMuteConfig
///     properties:
///       muteConfigId: my-config
///       organization: '123456789'
///       location: global
///       description: My custom Cloud Security Command Center Finding Organization mute Configuration
///       filter: severity = "HIGH"
///       type: STATIC
/// ```
///
///
/// ## Import
///
/// OrganizationMuteConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/muteConfigs/{{mute_config_id}}`
///
/// * `{{organization}}/{{location}}/{{mute_config_id}}`
///
/// When using the `pulumi import` command, OrganizationMuteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationMuteConfig:V2OrganizationMuteConfig default organizations/{{organization}}/locations/{{location}}/muteConfigs/{{mute_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationMuteConfig:V2OrganizationMuteConfig default {{organization}}/{{location}}/{{mute_config_id}}
/// ```
class V2OrganizationMuteConfig extends pulumi.CustomResource {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  late final pulumi.Output<String> createTime;

  /// A description of the mute config.
  late final pulumi.Output<String?> description;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  late final pulumi.Output<String> filter;

  /// location Id is provided by organization. If not provided, Use global as default.
  late final pulumi.Output<String?> location;

  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final pulumi.Output<String> mostRecentEditor;

  /// Unique identifier provided by the client within the parent scope.
  late final pulumi.Output<String> muteConfigId;

  /// Name of the mute config. Its format is
  /// organizations/{organization}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or projects/{project}/locations/global/muteConfigs/{configId}
  late final pulumi.Output<String> name;

  /// The organization whose Cloud Security Command Center the Mute
  /// Config lives in.
  late final pulumi.Output<String> organization;

  /// The type of the mute config.
  late final pulumi.Output<String> type;

  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [V2OrganizationMuteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2OrganizationMuteConfig]. {@macro pulumi_securitycenter_v2_organization_mute_config_v2_organization_mute_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2OrganizationMuteConfig(
    String name, {
    V2OrganizationMuteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationMuteConfig:V2OrganizationMuteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.filter = registerOutput<String>('filter');
    this.location = registerOutput<String?>('location');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
