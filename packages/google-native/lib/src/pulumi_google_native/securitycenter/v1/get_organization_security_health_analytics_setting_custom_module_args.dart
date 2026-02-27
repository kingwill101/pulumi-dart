// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationSecurityHealthAnalyticsSettingCustomModule.
class GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs {
  final pulumi.Input<String> customModuleId;
  final pulumi.Input<String> organizationId;

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
      customModuleId: pulumi.Input.asInput<String>(map['customModuleId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
