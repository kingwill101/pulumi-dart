// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_waiting_room_event_waiting_room_event_args_doc}
/// The set of arguments for WaitingRoomEvent.
/// {@endtemplate}
/// {@macro pulumi_esa_waiting_room_event_waiting_room_event_args_doc}
class WaitingRoomEventArgs {
  /// User-defined waiting room page content, when the waiting room type is custom type, you need to enter. The incoming content needs to be base64 encoded.
  final pulumi.Input<String>? customPageHtml;
  /// Waiting room description.
  final pulumi.Input<String>? description;
  /// Disable session renewal. Value:
  final pulumi.Input<String>? disableSessionRenewalEnable;
  /// The timestamp of the end time of the event.
  final pulumi.Input<String> endTime;
  /// JSON response switch. Value:
  final pulumi.Input<String>? jsonResponseEnable;
  /// Default language setting. Values include:
  final pulumi.Input<String>? language;
  /// Number of new users per minute.
  final pulumi.Input<String> newUsersPerMinute;
  /// Pre-queue switch.
  final pulumi.Input<String>? preQueueEnable;
  /// Pre-queue start time.
  final pulumi.Input<String>? preQueueStartTime;
  /// Way of queuing. Value:
  final pulumi.Input<String> queuingMethod;
  /// Waiting room status code. Value:
  final pulumi.Input<String> queuingStatusCode;
  /// Random queue switch.
  final pulumi.Input<String>? randomPreQueueEnable;
  /// User session duration in minutes.
  final pulumi.Input<String> sessionDuration;
  /// The site ID, which can be obtained by calling the ListSites API.
  final pulumi.Input<String> siteId;
  /// The timestamp of the event start time.
  final pulumi.Input<String> startTime;
  /// Enabled status. Value:
  final pulumi.Input<String> status;
  /// Total number of active users.
  final pulumi.Input<String> totalActiveUsers;
  /// Event name, custom event description.
  final pulumi.Input<String> waitingRoomEventName;
  /// Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  final pulumi.Input<String>? waitingRoomId;
  /// Waiting room type. The following types are supported:
  final pulumi.Input<String> waitingRoomType;

  /// Creates a new [WaitingRoomEventArgs].
  /// [customPageHtml] User-defined waiting room page content, when the waiting room type is custom type, you need to enter. The incoming content needs to be base64 encoded.
  /// [description] Waiting room description.
  /// [disableSessionRenewalEnable] Disable session renewal. Value:
  /// [endTime] The timestamp of the end time of the event.
  /// [jsonResponseEnable] JSON response switch. Value:
  /// [language] Default language setting. Values include:
  /// [newUsersPerMinute] Number of new users per minute.
  /// [preQueueEnable] Pre-queue switch.
  /// [preQueueStartTime] Pre-queue start time.
  /// [queuingMethod] Way of queuing. Value:
  /// [queuingStatusCode] Waiting room status code. Value:
  /// [randomPreQueueEnable] Random queue switch.
  /// [sessionDuration] User session duration in minutes.
  /// [siteId] The site ID, which can be obtained by calling the ListSites API.
  /// [startTime] The timestamp of the event start time.
  /// [status] Enabled status. Value:
  /// [totalActiveUsers] Total number of active users.
  /// [waitingRoomEventName] Event name, custom event description.
  /// [waitingRoomId] Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  /// [waitingRoomType] Waiting room type. The following types are supported:
  WaitingRoomEventArgs({
    this.customPageHtml,
    this.description,
    this.disableSessionRenewalEnable,
    required this.endTime,
    this.jsonResponseEnable,
    this.language,
    required this.newUsersPerMinute,
    this.preQueueEnable,
    this.preQueueStartTime,
    required this.queuingMethod,
    required this.queuingStatusCode,
    this.randomPreQueueEnable,
    required this.sessionDuration,
    required this.siteId,
    required this.startTime,
    required this.status,
    required this.totalActiveUsers,
    required this.waitingRoomEventName,
    this.waitingRoomId,
    required this.waitingRoomType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPageHtml': ?customPageHtml,
      'description': ?description,
      'disableSessionRenewalEnable': ?disableSessionRenewalEnable,
      'endTime': endTime,
      'jsonResponseEnable': ?jsonResponseEnable,
      'language': ?language,
      'newUsersPerMinute': newUsersPerMinute,
      'preQueueEnable': ?preQueueEnable,
      'preQueueStartTime': ?preQueueStartTime,
      'queuingMethod': queuingMethod,
      'queuingStatusCode': queuingStatusCode,
      'randomPreQueueEnable': ?randomPreQueueEnable,
      'sessionDuration': sessionDuration,
      'siteId': siteId,
      'startTime': startTime,
      'status': status,
      'totalActiveUsers': totalActiveUsers,
      'waitingRoomEventName': waitingRoomEventName,
      'waitingRoomId': ?waitingRoomId,
      'waitingRoomType': waitingRoomType,
    };
  }

  factory WaitingRoomEventArgs.fromMap(Map<String, dynamic> map) {
    return WaitingRoomEventArgs(
      customPageHtml: map['customPageHtml'] == null ? null : (map['customPageHtml']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disableSessionRenewalEnable: map['disableSessionRenewalEnable'] == null ? null : (map['disableSessionRenewalEnable']! as String).input(),
      endTime: (map['endTime'] as String).input(),
      jsonResponseEnable: map['jsonResponseEnable'] == null ? null : (map['jsonResponseEnable']! as String).input(),
      language: map['language'] == null ? null : (map['language']! as String).input(),
      newUsersPerMinute: (map['newUsersPerMinute'] as String).input(),
      preQueueEnable: map['preQueueEnable'] == null ? null : (map['preQueueEnable']! as String).input(),
      preQueueStartTime: map['preQueueStartTime'] == null ? null : (map['preQueueStartTime']! as String).input(),
      queuingMethod: (map['queuingMethod'] as String).input(),
      queuingStatusCode: (map['queuingStatusCode'] as String).input(),
      randomPreQueueEnable: map['randomPreQueueEnable'] == null ? null : (map['randomPreQueueEnable']! as String).input(),
      sessionDuration: (map['sessionDuration'] as String).input(),
      siteId: (map['siteId'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      totalActiveUsers: (map['totalActiveUsers'] as String).input(),
      waitingRoomEventName: (map['waitingRoomEventName'] as String).input(),
      waitingRoomId: map['waitingRoomId'] == null ? null : (map['waitingRoomId']! as String).input(),
      waitingRoomType: (map['waitingRoomType'] as String).input(),
    );
  }
}

