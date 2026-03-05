// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_response.dart';

/// Result data returned by getNotificationChannel.
class GetNotificationChannelResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of the notification channel.
  final String createdDate;
  /// Description of notification.
  final String? description;
  /// The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
  final String? emailRecipient;
  /// The list of event for which this notification is enabled.
  final List<EventResponse>? events;
  /// The identifier of the resource.
  final String id;
  /// The location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// The locale to use when sending a notification (fallback for unsupported languages is EN).
  final String? notificationLocale;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;
  /// The webhook URL to send notifications to.
  final String? webHookUrl;

  /// Creates a new [GetNotificationChannelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the notification channel.
  /// [description] Description of notification.
  /// [emailRecipient] The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
  /// [events] The list of event for which this notification is enabled.
  /// [id] The identifier of the resource.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [notificationLocale] The locale to use when sending a notification (fallback for unsupported languages is EN).
  /// [provisioningState] The provisioning status of the resource.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [webHookUrl] The webhook URL to send notifications to.
  GetNotificationChannelResult({
    required this.azureApiVersion,
    required this.createdDate,
    this.description,
    this.emailRecipient,
    this.events,
    required this.id,
    this.location,
    required this.name,
    this.notificationLocale,
    required this.provisioningState,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
    this.webHookUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'description': ?description,
      'emailRecipient': ?emailRecipient,
      'events': ?(() { final guardedValue = events; if (guardedValue == null) return null; return pulumi.Input.encodeList<EventResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'location': ?location,
      'name': name,
      'notificationLocale': ?notificationLocale,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'webHookUrl': ?webHookUrl,
    };
  }

  factory GetNotificationChannelResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailRecipient: (() { final guardedValue = map['emailRecipient']; if (guardedValue == null) return null; return guardedValue as String; })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EventResponse>(guardedValue, (value) => EventResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      notificationLocale: (() { final guardedValue = map['notificationLocale']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      webHookUrl: (() { final guardedValue = map['webHookUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

