// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_host_name_and_path.dart';

/// {@template pulumi_esa_waiting_room_waiting_room_args_doc}
/// The set of arguments for WaitingRoom.
/// {@endtemplate}
/// {@macro pulumi_esa_waiting_room_waiting_room_args_doc}
class WaitingRoomArgs {
  /// Custom Cookie name.
  final pulumi.Input<String> cookieName;
  /// User-defined waiting room page content, when the waiting room type is custom type, you need to enter. The incoming content needs to be base64 encoded.
  final pulumi.Input<String>? customPageHtml;
  /// Waiting room description.
  final pulumi.Input<String>? description;
  /// Disable session renewal. Value:
  final pulumi.Input<String>? disableSessionRenewalEnable;
  /// Host name and path. See `host_name_and_path` below.
  final pulumi.Input<List<WaitingRoomHostNameAndPath>> hostNameAndPaths;
  /// The JSON response. If the accept request header contains "application/json", JSON data is returned. Value:
  final pulumi.Input<String>? jsonResponseEnable;
  /// The language of the waiting room page. When the waiting room type is the default type, it needs to be passed in. The following types are supported:
  final pulumi.Input<String>? language;
  /// Number of new users per minute.
  final pulumi.Input<String> newUsersPerMinute;
  /// All in line. Value:
  final pulumi.Input<String>? queueAllEnable;
  /// Way of queuing. Value:
  final pulumi.Input<String> queuingMethod;
  /// Waiting room status code. Value:
  final pulumi.Input<String> queuingStatusCode;
  /// Session duration in minutes.
  final pulumi.Input<String> sessionDuration;
  /// The site ID, which can be obtained by calling the [ListSites](https://help.aliyun.com/document_detail/2850189.html) interface.
  final pulumi.Input<String> siteId;
  /// Waiting room enabled status. Value:
  /// - 'on': Enable waiting room
  /// - 'off': Disabled waiting room
  final pulumi.Input<String> status;
  /// Total number of active users.
  final pulumi.Input<String> totalActiveUsers;
  /// The name of the waiting room.
  final pulumi.Input<String> waitingRoomName;
  /// Waiting room type, support:
  final pulumi.Input<String> waitingRoomType;

  /// Creates a new [WaitingRoomArgs].
  /// [cookieName] Custom Cookie name.
  /// [customPageHtml] User-defined waiting room page content, when the waiting room type is custom type, you need to enter. The incoming content needs to be base64 encoded.
  /// [description] Waiting room description.
  /// [disableSessionRenewalEnable] Disable session renewal. Value:
  /// [hostNameAndPaths] Host name and path. See `host_name_and_path` below.
  /// [jsonResponseEnable] The JSON response. If the accept request header contains "application/json", JSON data is returned. Value:
  /// [language] The language of the waiting room page. When the waiting room type is the default type, it needs to be passed in. The following types are supported:
  /// [newUsersPerMinute] Number of new users per minute.
  /// [queueAllEnable] All in line. Value:
  /// [queuingMethod] Way of queuing. Value:
  /// [queuingStatusCode] Waiting room status code. Value:
  /// [sessionDuration] Session duration in minutes.
  /// [siteId] The site ID, which can be obtained by calling the [ListSites](https://help.aliyun.com/document_detail/2850189.html) interface.
  /// [status] Waiting room enabled status. Value:
  /// [totalActiveUsers] Total number of active users.
  /// [waitingRoomName] The name of the waiting room.
  /// [waitingRoomType] Waiting room type, support:
  WaitingRoomArgs({
    required pulumi.Output<String> cookieName,
    pulumi.Output<String>? customPageHtml,
    pulumi.Output<String>? description,
    pulumi.Output<String>? disableSessionRenewalEnable,
    required pulumi.Output<List<WaitingRoomHostNameAndPath>> hostNameAndPaths,
    pulumi.Output<String>? jsonResponseEnable,
    pulumi.Output<String>? language,
    required pulumi.Output<String> newUsersPerMinute,
    pulumi.Output<String>? queueAllEnable,
    required pulumi.Output<String> queuingMethod,
    required pulumi.Output<String> queuingStatusCode,
    required pulumi.Output<String> sessionDuration,
    required pulumi.Output<String> siteId,
    required pulumi.Output<String> status,
    required pulumi.Output<String> totalActiveUsers,
    required pulumi.Output<String> waitingRoomName,
    required pulumi.Output<String> waitingRoomType,
  }) :
      cookieName = pulumi.Input.asInput<String>(cookieName),
      customPageHtml = pulumi.Input.asOptionalInput<String>(customPageHtml),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableSessionRenewalEnable = pulumi.Input.asOptionalInput<String>(disableSessionRenewalEnable),
      hostNameAndPaths = pulumi.Input.asInput<List<WaitingRoomHostNameAndPath>>(hostNameAndPaths),
      jsonResponseEnable = pulumi.Input.asOptionalInput<String>(jsonResponseEnable),
      language = pulumi.Input.asOptionalInput<String>(language),
      newUsersPerMinute = pulumi.Input.asInput<String>(newUsersPerMinute),
      queueAllEnable = pulumi.Input.asOptionalInput<String>(queueAllEnable),
      queuingMethod = pulumi.Input.asInput<String>(queuingMethod),
      queuingStatusCode = pulumi.Input.asInput<String>(queuingStatusCode),
      sessionDuration = pulumi.Input.asInput<String>(sessionDuration),
      siteId = pulumi.Input.asInput<String>(siteId),
      status = pulumi.Input.asInput<String>(status),
      totalActiveUsers = pulumi.Input.asInput<String>(totalActiveUsers),
      waitingRoomName = pulumi.Input.asInput<String>(waitingRoomName),
      waitingRoomType = pulumi.Input.asInput<String>(waitingRoomType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieName': cookieName,
      'customPageHtml': ?customPageHtml,
      'description': ?description,
      'disableSessionRenewalEnable': ?disableSessionRenewalEnable,
      'hostNameAndPaths': pulumi.Input.mapInputValue<List<WaitingRoomHostNameAndPath>, List<Map<String, dynamic>>>(hostNameAndPaths, (value) => pulumi.Input.encodeList<WaitingRoomHostNameAndPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jsonResponseEnable': ?jsonResponseEnable,
      'language': ?language,
      'newUsersPerMinute': newUsersPerMinute,
      'queueAllEnable': ?queueAllEnable,
      'queuingMethod': queuingMethod,
      'queuingStatusCode': queuingStatusCode,
      'sessionDuration': sessionDuration,
      'siteId': siteId,
      'status': status,
      'totalActiveUsers': totalActiveUsers,
      'waitingRoomName': waitingRoomName,
      'waitingRoomType': waitingRoomType,
    };
  }

  factory WaitingRoomArgs.fromMap(Map<String, dynamic> map) {
    return WaitingRoomArgs(
      cookieName: pulumi.Output.create<String>(map['cookieName'] as String),
      customPageHtml: map['customPageHtml'] == null ? null : pulumi.Output.create<String>(map['customPageHtml'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableSessionRenewalEnable: map['disableSessionRenewalEnable'] == null ? null : pulumi.Output.create<String>(map['disableSessionRenewalEnable'] as String),
      hostNameAndPaths: pulumi.Output.create<List<WaitingRoomHostNameAndPath>>(pulumi.Input.decodeList<WaitingRoomHostNameAndPath>(map['hostNameAndPaths'], (value) => WaitingRoomHostNameAndPath.fromMap((value as Map).cast<String, dynamic>()))),
      jsonResponseEnable: map['jsonResponseEnable'] == null ? null : pulumi.Output.create<String>(map['jsonResponseEnable'] as String),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      newUsersPerMinute: pulumi.Output.create<String>(map['newUsersPerMinute'] as String),
      queueAllEnable: map['queueAllEnable'] == null ? null : pulumi.Output.create<String>(map['queueAllEnable'] as String),
      queuingMethod: pulumi.Output.create<String>(map['queuingMethod'] as String),
      queuingStatusCode: pulumi.Output.create<String>(map['queuingStatusCode'] as String),
      sessionDuration: pulumi.Output.create<String>(map['sessionDuration'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
      totalActiveUsers: pulumi.Output.create<String>(map['totalActiveUsers'] as String),
      waitingRoomName: pulumi.Output.create<String>(map['waitingRoomName'] as String),
      waitingRoomType: pulumi.Output.create<String>(map['waitingRoomType'] as String),
    );
  }
}

