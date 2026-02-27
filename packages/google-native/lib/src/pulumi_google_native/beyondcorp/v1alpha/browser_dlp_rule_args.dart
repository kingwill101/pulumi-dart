// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_partnerservices_v1alpha_group.dart';
import 'google_cloud_beyondcorp_partnerservices_v1alpha_rule_setting.dart';

/// The set of arguments for BrowserDlpRule.
class BrowserDlpRuleArgs {
  /// The group to which this Rule should be applied to.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaGroup> group;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The policy settings to apply.
  final pulumi.Input<GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting>
      ruleSetting;

  BrowserDlpRuleArgs({
    required this.group,
    required this.organizationId,
    required this.partnerTenantId,
    this.requestId,
    required this.ruleSetting,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = pulumi.Input.mapInputValue<
        GoogleCloudBeyondcorpPartnerservicesV1alphaGroup,
        Map<String, dynamic>>(group, (value) => value.toMap());
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['ruleSetting'] = pulumi.Input.mapInputValue<
        GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting,
        Map<String, dynamic>>(ruleSetting, (value) => value.toMap());
    return map;
  }

  factory BrowserDlpRuleArgs.fromMap(Map<String, dynamic> map) {
    return BrowserDlpRuleArgs(
      group: pulumi.Input.asInput<
          GoogleCloudBeyondcorpPartnerservicesV1alphaGroup>(map['group']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      partnerTenantId: pulumi.Input.asInput<String>(map['partnerTenantId']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      ruleSetting: pulumi.Input.asInput<
              GoogleCloudBeyondcorpPartnerservicesV1alphaRuleSetting>(
          map['ruleSetting']),
    );
  }
}
