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
    pulumi.Output<String>? customPageHtml,
    pulumi.Output<String>? description,
    pulumi.Output<String>? disableSessionRenewalEnable,
    required pulumi.Output<String> endTime,
    pulumi.Output<String>? jsonResponseEnable,
    pulumi.Output<String>? language,
    required pulumi.Output<String> newUsersPerMinute,
    pulumi.Output<String>? preQueueEnable,
    pulumi.Output<String>? preQueueStartTime,
    required pulumi.Output<String> queuingMethod,
    required pulumi.Output<String> queuingStatusCode,
    pulumi.Output<String>? randomPreQueueEnable,
    required pulumi.Output<String> sessionDuration,
    required pulumi.Output<String> siteId,
    required pulumi.Output<String> startTime,
    required pulumi.Output<String> status,
    required pulumi.Output<String> totalActiveUsers,
    required pulumi.Output<String> waitingRoomEventName,
    pulumi.Output<String>? waitingRoomId,
    required pulumi.Output<String> waitingRoomType,
  }) :
      customPageHtml = pulumi.Input.asOptionalInput<String>(customPageHtml),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableSessionRenewalEnable = pulumi.Input.asOptionalInput<String>(disableSessionRenewalEnable),
      endTime = pulumi.Input.asInput<String>(endTime),
      jsonResponseEnable = pulumi.Input.asOptionalInput<String>(jsonResponseEnable),
      language = pulumi.Input.asOptionalInput<String>(language),
      newUsersPerMinute = pulumi.Input.asInput<String>(newUsersPerMinute),
      preQueueEnable = pulumi.Input.asOptionalInput<String>(preQueueEnable),
      preQueueStartTime = pulumi.Input.asOptionalInput<String>(preQueueStartTime),
      queuingMethod = pulumi.Input.asInput<String>(queuingMethod),
      queuingStatusCode = pulumi.Input.asInput<String>(queuingStatusCode),
      randomPreQueueEnable = pulumi.Input.asOptionalInput<String>(randomPreQueueEnable),
      sessionDuration = pulumi.Input.asInput<String>(sessionDuration),
      siteId = pulumi.Input.asInput<String>(siteId),
      startTime = pulumi.Input.asInput<String>(startTime),
      status = pulumi.Input.asInput<String>(status),
      totalActiveUsers = pulumi.Input.asInput<String>(totalActiveUsers),
      waitingRoomEventName = pulumi.Input.asInput<String>(waitingRoomEventName),
      waitingRoomId = pulumi.Input.asOptionalInput<String>(waitingRoomId),
      waitingRoomType = pulumi.Input.asInput<String>(waitingRoomType);

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
      customPageHtml: map['customPageHtml'] == null ? null : pulumi.Output.create<String>(map['customPageHtml'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableSessionRenewalEnable: map['disableSessionRenewalEnable'] == null ? null : pulumi.Output.create<String>(map['disableSessionRenewalEnable'] as String),
      endTime: pulumi.Output.create<String>(map['endTime'] as String),
      jsonResponseEnable: map['jsonResponseEnable'] == null ? null : pulumi.Output.create<String>(map['jsonResponseEnable'] as String),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      newUsersPerMinute: pulumi.Output.create<String>(map['newUsersPerMinute'] as String),
      preQueueEnable: map['preQueueEnable'] == null ? null : pulumi.Output.create<String>(map['preQueueEnable'] as String),
      preQueueStartTime: map['preQueueStartTime'] == null ? null : pulumi.Output.create<String>(map['preQueueStartTime'] as String),
      queuingMethod: pulumi.Output.create<String>(map['queuingMethod'] as String),
      queuingStatusCode: pulumi.Output.create<String>(map['queuingStatusCode'] as String),
      randomPreQueueEnable: map['randomPreQueueEnable'] == null ? null : pulumi.Output.create<String>(map['randomPreQueueEnable'] as String),
      sessionDuration: pulumi.Output.create<String>(map['sessionDuration'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      startTime: pulumi.Output.create<String>(map['startTime'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
      totalActiveUsers: pulumi.Output.create<String>(map['totalActiveUsers'] as String),
      waitingRoomEventName: pulumi.Output.create<String>(map['waitingRoomEventName'] as String),
      waitingRoomId: map['waitingRoomId'] == null ? null : pulumi.Output.create<String>(map['waitingRoomId'] as String),
      waitingRoomType: pulumi.Output.create<String>(map['waitingRoomType'] as String),
    );
  }
}

