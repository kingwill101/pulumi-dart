// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationSecurityHealthAnalyticsSettingCustomModule.
class GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs {
  final Input<String> customModuleId;
  final Input<String> organizationId;

  GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs({
    required this.customModuleId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customModuleId'] = customModuleId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs(
      customModuleId: Input.asInput<String>(map['customModuleId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
