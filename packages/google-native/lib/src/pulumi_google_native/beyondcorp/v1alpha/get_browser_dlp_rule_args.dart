// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBrowserDlpRule.
class GetBrowserDlpRuleArgs {
  final Input<String> browserDlpRuleId;
  final Input<String> organizationId;
  final Input<String> partnerTenantId;

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
      browserDlpRuleId: Input.asInput<String>(map['browserDlpRuleId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      partnerTenantId: Input.asInput<String>(map['partnerTenantId']),
    );
  }
}
