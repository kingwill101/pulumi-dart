// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_browser_dlp_rule_args_doc}
/// Arguments for getBrowserDlpRule.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_browser_dlp_rule_args_doc}
class GetBrowserDlpRuleArgs {
  final pulumi.Input<String> browserDlpRuleId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// Creates a new [GetBrowserDlpRuleArgs].
  /// [browserDlpRuleId] Required.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  GetBrowserDlpRuleArgs({
    required String browserDlpRuleId,
    required String organizationId,
    required String partnerTenantId,
  }) :
      browserDlpRuleId = pulumi.Input.asInput<String>(browserDlpRuleId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      partnerTenantId = pulumi.Input.asInput<String>(partnerTenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserDlpRuleId': browserDlpRuleId,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
    };
  }

  factory GetBrowserDlpRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetBrowserDlpRuleArgs(
      browserDlpRuleId: map['browserDlpRuleId'] as String,
      organizationId: map['organizationId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
    );
  }
}

