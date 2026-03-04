// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event.dart';

/// {@template pulumi_devtestlab_notification_channel_args_doc}
/// The set of arguments for NotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_notification_channel_args_doc}
class NotificationChannelArgs {
  /// Description of notification.
  final pulumi.Input<String>? description;

  /// The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
  final pulumi.Input<String>? emailRecipient;

  /// The list of event for which this notification is enabled.
  final pulumi.Input<List<Event>>? events;

  /// The name of the lab.
  final pulumi.Input<String> labName;

  /// The location of the resource.
  final pulumi.Input<String>? location;

  /// The name of the NotificationChannel
  final pulumi.Input<String>? name;

  /// The locale to use when sending a notification (fallback for unsupported languages is EN).
  final pulumi.Input<String>? notificationLocale;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The webhook URL to send notifications to.
  final pulumi.Input<String>? webHookUrl;

  /// Creates a new [NotificationChannelArgs].
  /// [description] Description of notification.
  /// [emailRecipient] The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
  /// [events] The list of event for which this notification is enabled.
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the NotificationChannel
  /// [notificationLocale] The locale to use when sending a notification (fallback for unsupported languages is EN).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  /// [webHookUrl] The webhook URL to send notifications to.
  NotificationChannelArgs({
    this.description,
    this.emailRecipient,
    this.events,
    required this.labName,
    this.location,
    this.name,
    this.notificationLocale,
    required this.resourceGroupName,
    this.tags,
    this.webHookUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'emailRecipient': ?emailRecipient,
      'events':
          ?pulumi.Input.mapOptionalInputValue<
            List<Event>,
            List<Map<String, dynamic>>
          >(
            events,
            (value) => pulumi.Input.encodeList<Event, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'notificationLocale': ?notificationLocale,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'webHookUrl': ?webHookUrl,
    };
  }

  factory NotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return NotificationChannelArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      emailRecipient: (() {
        final guardedValue = map['emailRecipient'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      events: (() {
        final guardedValue = map['events'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Event>(
            guardedValue,
            (value) => Event.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationLocale: (() {
        final guardedValue = map['notificationLocale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      webHookUrl: (() {
        final guardedValue = map['webHookUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
