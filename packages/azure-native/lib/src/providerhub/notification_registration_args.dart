// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_registration_properties.dart';

/// {@template pulumi_providerhub_notification_registration_args_doc}
/// The set of arguments for NotificationRegistration.
/// {@endtemplate}
/// {@macro pulumi_providerhub_notification_registration_args_doc}
class NotificationRegistrationArgs {
  /// The notification registration.
  final pulumi.Input<String>? notificationRegistrationName;
  final pulumi.Input<NotificationRegistrationProperties>? properties;
  /// The name of the resource provider hosted within ProviderHub.
  final pulumi.Input<String> providerNamespace;

  /// Creates a new [NotificationRegistrationArgs].
  /// [notificationRegistrationName] The notification registration.
  /// [properties] Optional.
  /// [providerNamespace] The name of the resource provider hosted within ProviderHub.
  NotificationRegistrationArgs({
    String? notificationRegistrationName,
    NotificationRegistrationProperties? properties,
    required String providerNamespace,
  }) :
      notificationRegistrationName = pulumi.Input.asOptionalInput<String>(notificationRegistrationName),
      properties = pulumi.Input.asOptionalInput<NotificationRegistrationProperties>(properties),
      providerNamespace = pulumi.Input.asInput<String>(providerNamespace);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationRegistrationName': ?notificationRegistrationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<NotificationRegistrationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'providerNamespace': providerNamespace,
    };
  }

  factory NotificationRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRegistrationArgs(
      notificationRegistrationName: map['notificationRegistrationName'] == null ? null : map['notificationRegistrationName'] as String,
      properties: map['properties'] == null ? null : NotificationRegistrationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      providerNamespace: map['providerNamespace'] as String,
    );
  }
}

