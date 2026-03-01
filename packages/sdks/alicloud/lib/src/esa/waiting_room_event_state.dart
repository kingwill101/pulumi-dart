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
    pulumi.Output<String>? customPageHtml,
    pulumi.Output<String>? description,
    pulumi.Output<String>? disableSessionRenewalEnable,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? jsonResponseEnable,
    pulumi.Output<String>? language,
    pulumi.Output<String>? newUsersPerMinute,
    pulumi.Output<String>? preQueueEnable,
    pulumi.Output<String>? preQueueStartTime,
    pulumi.Output<String>? queuingMethod,
    pulumi.Output<String>? queuingStatusCode,
    pulumi.Output<String>? randomPreQueueEnable,
    pulumi.Output<String>? sessionDuration,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? status,
    pulumi.Output<String>? totalActiveUsers,
    pulumi.Output<int>? waitingRoomEventId,
    pulumi.Output<String>? waitingRoomEventName,
    pulumi.Output<String>? waitingRoomId,
    pulumi.Output<String>? waitingRoomType,
  }) :
      customPageHtml = pulumi.Input.asOptionalInput<String>(customPageHtml),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableSessionRenewalEnable = pulumi.Input.asOptionalInput<String>(disableSessionRenewalEnable),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      jsonResponseEnable = pulumi.Input.asOptionalInput<String>(jsonResponseEnable),
      language = pulumi.Input.asOptionalInput<String>(language),
      newUsersPerMinute = pulumi.Input.asOptionalInput<String>(newUsersPerMinute),
      preQueueEnable = pulumi.Input.asOptionalInput<String>(preQueueEnable),
      preQueueStartTime = pulumi.Input.asOptionalInput<String>(preQueueStartTime),
      queuingMethod = pulumi.Input.asOptionalInput<String>(queuingMethod),
      queuingStatusCode = pulumi.Input.asOptionalInput<String>(queuingStatusCode),
      randomPreQueueEnable = pulumi.Input.asOptionalInput<String>(randomPreQueueEnable),
      sessionDuration = pulumi.Input.asOptionalInput<String>(sessionDuration),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      status = pulumi.Input.asOptionalInput<String>(status),
      totalActiveUsers = pulumi.Input.asOptionalInput<String>(totalActiveUsers),
      waitingRoomEventId = pulumi.Input.asOptionalInput<int>(waitingRoomEventId),
      waitingRoomEventName = pulumi.Input.asOptionalInput<String>(waitingRoomEventName),
      waitingRoomId = pulumi.Input.asOptionalInput<String>(waitingRoomId),
      waitingRoomType = pulumi.Input.asOptionalInput<String>(waitingRoomType);

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
      customPageHtml: map['customPageHtml'] == null ? null : pulumi.Output.create<String>(map['customPageHtml'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableSessionRenewalEnable: map['disableSessionRenewalEnable'] == null ? null : pulumi.Output.create<String>(map['disableSessionRenewalEnable'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      jsonResponseEnable: map['jsonResponseEnable'] == null ? null : pulumi.Output.create<String>(map['jsonResponseEnable'] as String),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      newUsersPerMinute: map['newUsersPerMinute'] == null ? null : pulumi.Output.create<String>(map['newUsersPerMinute'] as String),
      preQueueEnable: map['preQueueEnable'] == null ? null : pulumi.Output.create<String>(map['preQueueEnable'] as String),
      preQueueStartTime: map['preQueueStartTime'] == null ? null : pulumi.Output.create<String>(map['preQueueStartTime'] as String),
      queuingMethod: map['queuingMethod'] == null ? null : pulumi.Output.create<String>(map['queuingMethod'] as String),
      queuingStatusCode: map['queuingStatusCode'] == null ? null : pulumi.Output.create<String>(map['queuingStatusCode'] as String),
      randomPreQueueEnable: map['randomPreQueueEnable'] == null ? null : pulumi.Output.create<String>(map['randomPreQueueEnable'] as String),
      sessionDuration: map['sessionDuration'] == null ? null : pulumi.Output.create<String>(map['sessionDuration'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      totalActiveUsers: map['totalActiveUsers'] == null ? null : pulumi.Output.create<String>(map['totalActiveUsers'] as String),
      waitingRoomEventId: map['waitingRoomEventId'] == null ? null : pulumi.Output.create<int>(map['waitingRoomEventId'] as int),
      waitingRoomEventName: map['waitingRoomEventName'] == null ? null : pulumi.Output.create<String>(map['waitingRoomEventName'] as String),
      waitingRoomId: map['waitingRoomId'] == null ? null : pulumi.Output.create<String>(map['waitingRoomId'] as String),
      waitingRoomType: map['waitingRoomType'] == null ? null : pulumi.Output.create<String>(map['waitingRoomType'] as String),
    );
  }
}

