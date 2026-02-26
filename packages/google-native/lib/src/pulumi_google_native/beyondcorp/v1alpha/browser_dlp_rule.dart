import 'package:pulumi/pulumi.dart';
import 'browser_dlp_rule_args.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_group_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_rule_setting_response.dart';

/// Creates a new BrowserDlpRule in a given organization and PartnerTenant.
/// Auto-naming is currently not supported for this resource.
class BrowserDlpRule extends CustomResource {
  /// The group to which this Rule should be applied to.
  late final Output<GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse>
      group;

  /// Unique resource name. The name is ignored when creating BrowserDlpRule.
  late final Output<String> name;
  late final Output<String> organizationId;
  late final Output<String> partnerTenantId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The policy settings to apply.
  late final Output<
          GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse>
      ruleSetting;

  BrowserDlpRule(
    String name, {
    BrowserDlpRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:beyondcorp/v1alpha:BrowserDlpRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.group = Output.createUnknown<
        GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.partnerTenantId = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.ruleSetting = Output.createUnknown<
        GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse>();
  }
}
