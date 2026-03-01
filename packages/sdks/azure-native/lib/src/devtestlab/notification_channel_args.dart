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
    pulumi.Output<String>? description,
    pulumi.Output<String>? emailRecipient,
    pulumi.Output<List<Event>>? events,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notificationLocale,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? webHookUrl,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      emailRecipient = pulumi.Input.asOptionalInput<String>(emailRecipient),
      events = pulumi.Input.asOptionalInput<List<Event>>(events),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationLocale = pulumi.Input.asOptionalInput<String>(notificationLocale),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      webHookUrl = pulumi.Input.asOptionalInput<String>(webHookUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'emailRecipient': ?emailRecipient,
      'events': ?pulumi.Input.mapOptionalInputValue<List<Event>, List<Map<String, dynamic>>>(events, (value) => pulumi.Input.encodeList<Event, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      emailRecipient: map['emailRecipient'] == null ? null : pulumi.Output.create<String>(map['emailRecipient'] as String),
      events: map['events'] == null ? null : pulumi.Output.create<List<Event>>(pulumi.Input.decodeList<Event>(map['events'], (value) => Event.fromMap((value as Map).cast<String, dynamic>()))),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationLocale: map['notificationLocale'] == null ? null : pulumi.Output.create<String>(map['notificationLocale'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      webHookUrl: map['webHookUrl'] == null ? null : pulumi.Output.create<String>(map['webHookUrl'] as String),
    );
  }
}

