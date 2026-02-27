// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBrowserDlpRule.
class GetBrowserDlpRuleArgs {
  final pulumi.Input<String> browserDlpRuleId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  GetBrowserDlpRuleArgs({
    required this.browserDlpRuleId,
    required this.organizationId,
    required this.partnerTenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['browserDlpRuleId'] = browserDlpRuleId;
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
    return map;
  }

  factory GetBrowserDlpRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetBrowserDlpRuleArgs(
      browserDlpRuleId: pulumi.Input.asInput<String>(map['browserDlpRuleId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      partnerTenantId: pulumi.Input.asInput<String>(map['partnerTenantId']),
    );
  }
}
