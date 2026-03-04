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
      customPageHtml: (() {
        final guardedValue = map['customPageHtml'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableSessionRenewalEnable: (() {
        final guardedValue = map['disableSessionRenewalEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jsonResponseEnable: (() {
        final guardedValue = map['jsonResponseEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      language: (() {
        final guardedValue = map['language'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      newUsersPerMinute: (() {
        final guardedValue = map['newUsersPerMinute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preQueueEnable: (() {
        final guardedValue = map['preQueueEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preQueueStartTime: (() {
        final guardedValue = map['preQueueStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queuingMethod: (() {
        final guardedValue = map['queuingMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queuingStatusCode: (() {
        final guardedValue = map['queuingStatusCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      randomPreQueueEnable: (() {
        final guardedValue = map['randomPreQueueEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionDuration: (() {
        final guardedValue = map['sessionDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteId: (() {
        final guardedValue = map['siteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      totalActiveUsers: (() {
        final guardedValue = map['totalActiveUsers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitingRoomEventId: (() {
        final guardedValue = map['waitingRoomEventId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      waitingRoomEventName: (() {
        final guardedValue = map['waitingRoomEventName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitingRoomId: (() {
        final guardedValue = map['waitingRoomId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitingRoomType: (() {
        final guardedValue = map['waitingRoomType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
