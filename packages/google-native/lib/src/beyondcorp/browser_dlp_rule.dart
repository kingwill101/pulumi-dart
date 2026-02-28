import 'package:pulumi/pulumi.dart' as pulumi;
import 'browser_dlp_rule_args.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_group_response.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_rule_setting_response.dart';

/// Creates a new BrowserDlpRule in a given organization and PartnerTenant.
/// Auto-naming is currently not supported for this resource.
class BrowserDlpRule extends pulumi.CustomResource {
  /// The group to which this Rule should be applied to.
  late final pulumi.Output<GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse> group;
  /// Unique resource name. The name is ignored when creating BrowserDlpRule.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  late final pulumi.Output<String> partnerTenantId;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The policy settings to apply.
  late final pulumi.Output<GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse> ruleSetting;

  /// Creates a new [BrowserDlpRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrowserDlpRule]. {@macro pulumi_beyondcorp_v1alpha_browser_dlp_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrowserDlpRule(
    String name, {
    BrowserDlpRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:beyondcorp/v1alpha:BrowserDlpRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.group = registerOutput<GoogleCloudBeyondcorpPartnerservicesV1alphaGroupResponse>('group');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.partnerTenantId = registerOutput<String>('partnerTenantId');
    this.requestId = registerOutput<String?>('requestId');
    this.ruleSetting = registerOutput<GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSettingResponse>('ruleSetting');
  }
}
