// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_notification_channel_args_doc}
/// Arguments for getNotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_notification_channel_args_doc}
class GetNotificationChannelArgs {
  /// Specify the $expand query. Example: 'properties($select=webHookUrl)'
  final pulumi.Input<String>? expand;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The name of the NotificationChannel
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNotificationChannelArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=webHookUrl)'
  /// [labName] The name of the lab.
  /// [name] The name of the NotificationChannel
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNotificationChannelArgs({
    this.expand,
    required this.labName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      labName: (map['labName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

