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
    required this.cookieName,
    this.customPageHtml,
    this.description,
    this.disableSessionRenewalEnable,
    required this.hostNameAndPaths,
    this.jsonResponseEnable,
    this.language,
    required this.newUsersPerMinute,
    this.queueAllEnable,
    required this.queuingMethod,
    required this.queuingStatusCode,
    required this.sessionDuration,
    required this.siteId,
    required this.status,
    required this.totalActiveUsers,
    required this.waitingRoomName,
    required this.waitingRoomType,
  });

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
      cookieName: (map['cookieName'] as String).input(),
      customPageHtml: map['customPageHtml'] == null ? null : (map['customPageHtml'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disableSessionRenewalEnable: map['disableSessionRenewalEnable'] == null ? null : (map['disableSessionRenewalEnable'] as String).input(),
      hostNameAndPaths: (pulumi.Input.decodeList<WaitingRoomHostNameAndPath>(map['hostNameAndPaths'], (value) => WaitingRoomHostNameAndPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      jsonResponseEnable: map['jsonResponseEnable'] == null ? null : (map['jsonResponseEnable'] as String).input(),
      language: map['language'] == null ? null : (map['language'] as String).input(),
      newUsersPerMinute: (map['newUsersPerMinute'] as String).input(),
      queueAllEnable: map['queueAllEnable'] == null ? null : (map['queueAllEnable'] as String).input(),
      queuingMethod: (map['queuingMethod'] as String).input(),
      queuingStatusCode: (map['queuingStatusCode'] as String).input(),
      sessionDuration: (map['sessionDuration'] as String).input(),
      siteId: (map['siteId'] as String).input(),
      status: (map['status'] as String).input(),
      totalActiveUsers: (map['totalActiveUsers'] as String).input(),
      waitingRoomName: (map['waitingRoomName'] as String).input(),
      waitingRoomType: (map['waitingRoomType'] as String).input(),
    );
  }
}

