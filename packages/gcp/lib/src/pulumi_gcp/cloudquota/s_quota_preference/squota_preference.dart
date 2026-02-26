import 'package:pulumi/pulumi.dart';
import '../squota_preference_quota_config/squota_preference_quota_config.dart';
import 'squota_preference_args.dart';

/// QuotaPreference represents the preferred quota configuration specified for a project, folder or organization. There is only one QuotaPreference resource for a quota value targeting a unique set of dimensions.
///
///
/// To get more information about QuotaPreference, see:
///
/// * [API documentation](https://cloud.google.com/docs/quotas/reference/rest/v1/projects.locations.quotaPreferences)
/// * How-to Guides
/// * [Cloud Quotas Overview](https://cloud.google.com/docs/quotas/overview)
///
/// ## Example Usage
///
/// ### Cloudquotas Quota Preference Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const preference = new gcp.cloudquota.SQuotaPreference("preference", {
/// parent: "projects/my-project-name",
/// name: "compute_googleapis_com-CPUS-per-project_us-east1",
/// dimensions: {
/// region: "us-east1",
/// },
/// service: "compute.googleapis.com",
/// quotaId: "CPUS-per-project-region",
/// contactEmail: "testuser@gmail.com",
/// quotaConfig: {
/// preferredValue: "200",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// preference = gcp.cloudquota.SQuotaPreference("preference",
/// parent="projects/my-project-name",
/// name="compute_googleapis_com-CPUS-per-project_us-east1",
/// dimensions={
/// "region": "us-east1",
/// },
/// service="compute.googleapis.com",
/// quota_id="CPUS-per-project-region",
/// contact_email="testuser@gmail.com",
/// quota_config={
/// "preferred_value": "200",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var preference = new Gcp.CloudQuota.SQuotaPreference("preference", new()
/// {
/// Parent = "projects/my-project-name",
/// Name = "compute_googleapis_com-CPUS-per-project_us-east1",
/// Dimensions =
/// {
/// { "region", "us-east1" },
/// },
/// Service = "compute.googleapis.com",
/// QuotaId = "CPUS-per-project-region",
/// ContactEmail = "testuser@gmail.com",
/// QuotaConfig = new Gcp.CloudQuota.Inputs.SQuotaPreferenceQuotaConfigArgs
/// {
/// PreferredValue = "200",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudquota"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudquota.NewSQuotaPreference(ctx, "preference", &cloudquota.SQuotaPreferenceArgs{
/// Parent: pulumi.String("projects/my-project-name"),
/// Name:   pulumi.String("compute_googleapis_com-CPUS-per-project_us-east1"),
/// Dimensions: pulumi.StringMap{
/// "region": pulumi.String("us-east1"),
/// },
/// Service:      pulumi.String("compute.googleapis.com"),
/// QuotaId:      pulumi.String("CPUS-per-project-region"),
/// ContactEmail: pulumi.String("testuser@gmail.com"),
/// QuotaConfig: &cloudquota.SQuotaPreferenceQuotaConfigArgs{
/// PreferredValue: pulumi.String("200"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudquota.SQuotaPreference;
/// import com.pulumi.gcp.cloudquota.SQuotaPreferenceArgs;
/// import com.pulumi.gcp.cloudquota.inputs.SQuotaPreferenceQuotaConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var preference = new SQuotaPreference("preference", SQuotaPreferenceArgs.builder()
/// .parent("projects/my-project-name")
/// .name("compute_googleapis_com-CPUS-per-project_us-east1")
/// .dimensions(Map.of("region", "us-east1"))
/// .service("compute.googleapis.com")
/// .quotaId("CPUS-per-project-region")
/// .contactEmail("testuser@gmail.com")
/// .quotaConfig(SQuotaPreferenceQuotaConfigArgs.builder()
/// .preferredValue("200")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// preference:
/// type: gcp:cloudquota:SQuotaPreference
/// properties:
/// parent: projects/my-project-name
/// name: compute_googleapis_com-CPUS-per-project_us-east1
/// dimensions:
/// region: us-east1
/// service: compute.googleapis.com
/// quotaId: CPUS-per-project-region
/// contactEmail: testuser@gmail.com
/// quotaConfig:
/// preferredValue: 200
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// QuotaPreference can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/global/quotaPreferences/{{name}}`
///
/// When using the `pulumi import` command, QuotaPreference can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudquota/sQuotaPreference:SQuotaPreference default {{parent}}/locations/global/quotaPreferences/{{name}}
/// ```
class SQuotaPreference extends CustomResource {
  /// An email address that can be used for quota related communication between the Google Cloud and the user in case the Google Cloud needs further information to make a decision on whether the user preferred quota can be granted.
  /// The Google account for the email address must have quota update permission for the project, folder or organization this quota preference is for.
  late final Output<String?> contactEmail;

  /// Create time stamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final Output<String> createTime;

  /// The dimensions that this quota preference applies to. The key of the map entry is the name of a dimension, such as "region", "zone", <span pulumi-lang-nodejs=""networkId"" pulumi-lang-dotnet=""NetworkId"" pulumi-lang-go=""networkId"" pulumi-lang-python=""network_id"" pulumi-lang-yaml=""networkId"" pulumi-lang-java=""networkId"">"network_id"</span>, and the value of the map entry is the dimension value. If a dimension is missing from the map of dimensions, the quota preference applies to all the dimension values except for those that have other quota preferences configured for the specific value.
  /// NOTE: QuotaPreferences can only be applied across all values of "user" and "resource" dimension. Do not set values for "user" or "resource" in the dimension map.
  /// Example: `{"provider": "Foo Inc"}` where "provider" is a service specific dimension.
  late final Output<Map<String, String>> dimensions;

  /// The current etag of the quota preference. If an etag is provided on update and does not match the current server's etag of the quota preference, the request will be blocked and an ABORTED error will be returned. See https://google.aip.dev/134#etags for more details on etags.
  late final Output<String> etag;

  /// The list of quota safety checks to be ignored.
  /// Default value is `QUOTA_SAFETY_CHECK_UNSPECIFIED`.
  /// Possible values are: `QUOTA_SAFETY_CHECK_UNSPECIFIED`, `QUOTA_DECREASE_BELOW_USAGE`, `QUOTA_DECREASE_PERCENTAGE_TOO_HIGH`.
  late final Output<String?> ignoreSafetyChecks;

  /// The reason / justification for this quota preference.
  late final Output<String?> justification;

  /// The resource name of the quota preference. Required except in the CREATE requests.
  late final Output<String> name;

  /// The parent of the quota preference. Allowed parents are "projects/[project-id / number]" or "folders/[folder-id / number]" or "organizations/[org-id / number]".
  late final Output<String> parent;

  /// The preferred quota configuration.
  /// Structure is documented below.
  late final Output<SQuotaPreferenceQuotaConfig> quotaConfig;

  /// The id of the quota to which the quota preference is applied. A quota id is unique in the service.
  /// Example: `CPUS-per-project-region`.
  late final Output<String> quotaId;

  /// Is the quota preference pending Google Cloud approval and fulfillment.
  late final Output<bool> reconciling;

  /// The name of the service to which the quota preference is applied.
  late final Output<String> service;

  /// Update time stamp.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: `2014-10-02T15:01:23Z` and `2014-10-02T15:01:23.045123456Z`.
  late final Output<String> updateTime;

  SQuotaPreference(
    String name, {
    SQuotaPreferenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudquota/sQuotaPreference:SQuotaPreference',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contactEmail = registerOutput<String?>('contactEmail');
    this.createTime = registerOutput<String>('createTime');
    this.dimensions = registerOutput<Map<String, String>>('dimensions');
    this.etag = registerOutput<String>('etag');
    this.ignoreSafetyChecks = registerOutput<String?>('ignoreSafetyChecks');
    this.justification = registerOutput<String?>('justification');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.quotaConfig =
        registerOutput<SQuotaPreferenceQuotaConfig>('quotaConfig');
    this.quotaId = registerOutput<String>('quotaId');
    this.reconciling = registerOutput<bool>('reconciling');
    this.service = registerOutput<String>('service');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
