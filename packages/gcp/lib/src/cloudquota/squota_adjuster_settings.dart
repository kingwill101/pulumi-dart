import 'package:pulumi/pulumi.dart' as pulumi;
import 'squota_adjuster_settings_args.dart';

/// QuotaAdjusterSettings resource represents your quota adjuster settings for a particular project. When enabled, the quota adjuster monitors your usage for the specified resources and issues quota adjustment requests when resource usage approaches its quota value.
///
/// To get more information about QuotaAdjusterSettings, see:
///
/// * [API documentation](https://cloud.google.com/docs/quotas/reference/rest/v1beta/projects.locations.quotaAdjusterSettings)
/// * How-to Guides
/// * [Cloud Quotas Overview](https://cloud.google.com/docs/quotas/overview)
///
/// ## Example Usage
///
/// ### Cloudquotas Quota Adjuster Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const adjusterSettings = new gcp.cloudquota.SQuotaAdjusterSettings("adjuster_settings", {
///     parent: "projects/104740170505",
///     enablement: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// adjuster_settings = gcp.cloudquota.SQuotaAdjusterSettings("adjuster_settings",
///     parent="projects/104740170505",
///     enablement="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adjusterSettings = new Gcp.CloudQuota.SQuotaAdjusterSettings("adjuster_settings", new()
///     {
///         Parent = "projects/104740170505",
///         Enablement = "ENABLED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudquota"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudquota.NewSQuotaAdjusterSettings(ctx, "adjuster_settings", &cloudquota.SQuotaAdjusterSettingsArgs{
/// 			Parent:     pulumi.String("projects/104740170505"),
/// 			Enablement: pulumi.String("ENABLED"),
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
/// import com.pulumi.gcp.cloudquota.SQuotaAdjusterSettings;
/// import com.pulumi.gcp.cloudquota.SQuotaAdjusterSettingsArgs;
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
///         var adjusterSettings = new SQuotaAdjusterSettings("adjusterSettings", SQuotaAdjusterSettingsArgs.builder()
///             .parent("projects/104740170505")
///             .enablement("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   adjusterSettings:
///     type: gcp:cloudquota:SQuotaAdjusterSettings
///     name: adjuster_settings
///     properties:
///       parent: projects/104740170505
///       enablement: ENABLED
/// ```
///
///
/// ## Import
///
/// QuotaAdjusterSettings can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/global/quotaAdjusterSettings`
///
/// When using the `pulumi import` command, QuotaAdjusterSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudquota/sQuotaAdjusterSettings:SQuotaAdjusterSettings default {{parent}}/locations/global/quotaAdjusterSettings
/// ```
class SQuotaAdjusterSettings extends pulumi.CustomResource {
  /// (Deprecated)
  /// The resource container that determines if the quota adjuster is set for this project.
  /// Expect this field to be empty currently.
  late final pulumi.Output<String> effectiveContainer;
  /// (Deprecated)
  /// Based on the effective container`s setting above, determines Whether this resource container has the quota adjuster enabled.
  /// Expect this field to be empty currently.
  late final pulumi.Output<String> effectiveEnablement;
  /// Required. The configured value of the enablement at the given resource.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> enablement;
  /// Indicates whether the setting is inherited or explicitly specified.
  late final pulumi.Output<bool> inherited;
  /// The resource container from which the setting is inherited. This refers to the  nearest ancestor with enablement set (either ENABLED or DISABLED).
  /// The value can be `organizations/{organization_id}`, `folders/{folder_id}`, or can be `default` if no ancestor exists with enablement set.
  /// The value will be empty when `enablement` is specified on this resource container.
  late final pulumi.Output<String> inheritedFrom;
  /// The parent of the quota preference. Allowed parent format is "projects/[project-id / number]".
  late final pulumi.Output<String> parent;

  /// Creates a new [SQuotaAdjusterSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SQuotaAdjusterSettings]. {@macro pulumi_cloudquota_s_quota_adjuster_settings_squota_adjuster_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SQuotaAdjusterSettings(
    String name, {
    SQuotaAdjusterSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudquota/sQuotaAdjusterSettings:SQuotaAdjusterSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.effectiveContainer = registerOutput<String>('effectiveContainer');
    this.effectiveEnablement = registerOutput<String>('effectiveEnablement');
    this.enablement = registerOutput<String>('enablement');
    this.inherited = registerOutput<bool>('inherited');
    this.inheritedFrom = registerOutput<String>('inheritedFrom');
    this.parent = registerOutput<String>('parent');
  }
}
