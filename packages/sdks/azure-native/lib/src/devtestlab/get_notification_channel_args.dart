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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> labName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

