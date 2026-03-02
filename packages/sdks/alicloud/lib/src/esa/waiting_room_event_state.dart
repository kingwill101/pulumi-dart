// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WaitingRoomEvent resources.
class WaitingRoomEventState {
  /// User-defined waiting room page content, when the waiting room type is custom type, you need to enter. The incoming content needs to be base64 encoded.
  final pulumi.Input<String>? customPageHtml;
  /// Waiting room description.
  final pulumi.Input<String>? description;
  /// Disable session renewal. Value:
  final pulumi.Input<String>? disableSessionRenewalEnable;
  /// The timestamp of the end time of the event.
  final pulumi.Input<String>? endTime;
  /// JSON response switch. Value:
  final pulumi.Input<String>? jsonResponseEnable;
  /// Default language setting. Values include:
  final pulumi.Input<String>? language;
  /// Number of new users per minute.
  final pulumi.Input<String>? newUsersPerMinute;
  /// Pre-queue switch.
  final pulumi.Input<String>? preQueueEnable;
  /// Pre-queue start time.
  final pulumi.Input<String>? preQueueStartTime;
  /// Way of queuing. Value:
  final pulumi.Input<String>? queuingMethod;
  /// Waiting room status code. Value:
  final pulumi.Input<String>? queuingStatusCode;
  /// Random queue switch.
  final pulumi.Input<String>? randomPreQueueEnable;
  /// User session duration in minutes.
  final pulumi.Input<String>? sessionDuration;
  /// The site ID, which can be obtained by calling the ListSites API.
  final pulumi.Input<String>? siteId;
  /// The timestamp of the event start time.
  final pulumi.Input<String>? startTime;
  /// Enabled status. Value:
  final pulumi.Input<String>? status;
  /// Total number of active users.
  final pulumi.Input<String>? totalActiveUsers;
  /// The waiting room event ID, which can be obtained by calling the [ListWaitingRoomEvents](https://help.aliyun.com/document_detail/2850279.html) operation.
  final pulumi.Input<int>? waitingRoomEventId;
  /// Event name, custom event description.
  final pulumi.Input<String>? waitingRoomEventName;
  /// Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  final pulumi.Input<String>? waitingRoomId;
  /// Waiting room type. The following types are supported:
  final pulumi.Input<String>? waitingRoomType;

  /// Creates a new [WaitingRoomEventState].
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
  /// [waitingRoomEventId] The waiting room event ID, which can be obtained by calling the [ListWaitingRoomEvents](https://help.aliyun.com/document_detail/2850279.html) operation.
  /// [waitingRoomEventName] Event name, custom event description.
  /// [waitingRoomId] Waiting room ID, used to identify a specific waiting room. It can be obtained by calling the [listwaitingroom](https://help.aliyun.com/document_detail/2850279.html) interface.
  /// [waitingRoomType] Waiting room type. The following types are supported:
  WaitingRoomEventState({
    this.customPageHtml,
    this.description,
    this.disableSessionRenewalEnable,
    this.endTime,
    this.jsonResponseEnable,
    this.language,
    this.newUsersPerMinute,
    this.preQueueEnable,
    this.preQueueStartTime,
    this.queuingMethod,
    this.queuingStatusCode,
    this.randomPreQueueEnable,
    this.sessionDuration,
    this.siteId,
    this.startTime,
    this.status,
    this.totalActiveUsers,
    this.waitingRoomEventId,
    this.waitingRoomEventName,
    this.waitingRoomId,
    this.waitingRoomType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPageHtml': ?customPageHtml,
      'description': ?description,
      'disableSessionRenewalEnable': ?disableSessionRenewalEnable,
      'endTime': ?endTime,
      'jsonResponseEnable': ?jsonResponseEnable,
      'language': ?language,
      'newUsersPerMinute': ?newUsersPerMinute,
      'preQueueEnable': ?preQueueEnable,
      'preQueueStartTime': ?preQueueStartTime,
      'queuingMethod': ?queuingMethod,
      'queuingStatusCode': ?queuingStatusCode,
      'randomPreQueueEnable': ?randomPreQueueEnable,
      'sessionDuration': ?sessionDuration,
      'siteId': ?siteId,
      'startTime': ?startTime,
      'status': ?status,
      'totalActiveUsers': ?totalActiveUsers,
      'waitingRoomEventId': ?waitingRoomEventId,
      'waitingRoomEventName': ?waitingRoomEventName,
      'waitingRoomId': ?waitingRoomId,
      'waitingRoomType': ?waitingRoomType,
    };
  }

  factory WaitingRoomEventState.fromMap(Map<String, dynamic> map) {
    return WaitingRoomEventState(
      customPageHtml: map['customPageHtml'] == null ? null : (map['customPageHtml']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disableSessionRenewalEnable: map['disableSessionRenewalEnable'] == null ? null : (map['disableSessionRenewalEnable']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      jsonResponseEnable: map['jsonResponseEnable'] == null ? null : (map['jsonResponseEnable']! as String).input(),
      language: map['language'] == null ? null : (map['language']! as String).input(),
      newUsersPerMinute: map['newUsersPerMinute'] == null ? null : (map['newUsersPerMinute']! as String).input(),
      preQueueEnable: map['preQueueEnable'] == null ? null : (map['preQueueEnable']! as String).input(),
      preQueueStartTime: map['preQueueStartTime'] == null ? null : (map['preQueueStartTime']! as String).input(),
      queuingMethod: map['queuingMethod'] == null ? null : (map['queuingMethod']! as String).input(),
      queuingStatusCode: map['queuingStatusCode'] == null ? null : (map['queuingStatusCode']! as String).input(),
      randomPreQueueEnable: map['randomPreQueueEnable'] == null ? null : (map['randomPreQueueEnable']! as String).input(),
      sessionDuration: map['sessionDuration'] == null ? null : (map['sessionDuration']! as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      totalActiveUsers: map['totalActiveUsers'] == null ? null : (map['totalActiveUsers']! as String).input(),
      waitingRoomEventId: map['waitingRoomEventId'] == null ? null : (map['waitingRoomEventId']! as int).input(),
      waitingRoomEventName: map['waitingRoomEventName'] == null ? null : (map['waitingRoomEventName']! as String).input(),
      waitingRoomId: map['waitingRoomId'] == null ? null : (map['waitingRoomId']! as String).input(),
      waitingRoomType: map['waitingRoomType'] == null ? null : (map['waitingRoomType']! as String).input(),
    );
  }
}

