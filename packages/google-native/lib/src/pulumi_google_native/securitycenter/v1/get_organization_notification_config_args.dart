// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationNotificationConfig.
class GetOrganizationNotificationConfigArgs {
  final Input<String> notificationConfigId;
  final Input<String> organizationId;

  GetOrganizationNotificationConfigArgs({
    required this.notificationConfigId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notificationConfigId'] = notificationConfigId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationNotificationConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationNotificationConfigArgs(
      notificationConfigId: Input.asInput<String>(map['notificationConfigId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
