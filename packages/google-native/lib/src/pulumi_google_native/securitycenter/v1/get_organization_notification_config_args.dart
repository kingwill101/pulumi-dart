// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationNotificationConfig.
class GetOrganizationNotificationConfigArgs {
  final pulumi.Input<String> notificationConfigId;
  final pulumi.Input<String> organizationId;

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
      notificationConfigId:
          pulumi.Input.asInput<String>(map['notificationConfigId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
