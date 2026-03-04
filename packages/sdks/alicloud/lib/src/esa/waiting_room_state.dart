// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waiting_room_host_name_and_path.dart';

/// Input properties used for looking up and filtering WaitingRoom resources.
class WaitingRoomState {
  /// Custom Cookie name.
  final pulumi.Input<String>? cookieName;

  /// User-defined waiting room page content, when the waiting room type is custom type, you need to enter. The incoming content needs to be base64 encoded.
  final pulumi.Input<String>? customPageHtml;

  /// Waiting room description.
  final pulumi.Input<String>? description;

  /// Disable session renewal. Value:
  final pulumi.Input<String>? disableSessionRenewalEnable;

  /// Host name and path. See `host_name_and_path` below.
  final pulumi.Input<List<WaitingRoomHostNameAndPath>>? hostNameAndPaths;

  /// The JSON response. If the accept request header contains "application/json", JSON data is returned. Value:
  final pulumi.Input<String>? jsonResponseEnable;

  /// The language of the waiting room page. When the waiting room type is the default type, it needs to be passed in. The following types are supported:
  final pulumi.Input<String>? language;

  /// Number of new users per minute.
  final pulumi.Input<String>? newUsersPerMinute;

  /// All in line. Value:
  final pulumi.Input<String>? queueAllEnable;

  /// Way of queuing. Value:
  final pulumi.Input<String>? queuingMethod;

  /// Waiting room status code. Value:
  final pulumi.Input<String>? queuingStatusCode;

  /// Session duration in minutes.
  final pulumi.Input<String>? sessionDuration;

  /// The site ID, which can be obtained by calling the [ListSites](https://help.aliyun.com/document_detail/2850189.html) interface.
  final pulumi.Input<String>? siteId;

  /// Waiting room enabled status. Value:
  /// - 'on': Enable waiting room
  /// - 'off': Disabled waiting room
  final pulumi.Input<String>? status;

  /// Total number of active users.
  final pulumi.Input<String>? totalActiveUsers;

  /// The waiting room ID, which can be obtained by calling the [ListWaitingRooms](https://help.aliyun.com/document_detail/2850279.html) API.
  final pulumi.Input<String>? waitingRoomId;

  /// The name of the waiting room.
  final pulumi.Input<String>? waitingRoomName;

  /// Waiting room type, support:
  final pulumi.Input<String>? waitingRoomType;

  /// Creates a new [WaitingRoomState].
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
  /// [waitingRoomId] The waiting room ID, which can be obtained by calling the [ListWaitingRooms](https://help.aliyun.com/document_detail/2850279.html) API.
  /// [waitingRoomName] The name of the waiting room.
  /// [waitingRoomType] Waiting room type, support:
  WaitingRoomState({
    this.cookieName,
    this.customPageHtml,
    this.description,
    this.disableSessionRenewalEnable,
    this.hostNameAndPaths,
    this.jsonResponseEnable,
    this.language,
    this.newUsersPerMinute,
    this.queueAllEnable,
    this.queuingMethod,
    this.queuingStatusCode,
    this.sessionDuration,
    this.siteId,
    this.status,
    this.totalActiveUsers,
    this.waitingRoomId,
    this.waitingRoomName,
    this.waitingRoomType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieName': ?cookieName,
      'customPageHtml': ?customPageHtml,
      'description': ?description,
      'disableSessionRenewalEnable': ?disableSessionRenewalEnable,
      'hostNameAndPaths':
          ?pulumi.Input.mapOptionalInputValue<
            List<WaitingRoomHostNameAndPath>,
            List<Map<String, dynamic>>
          >(
            hostNameAndPaths,
            (value) =>
                pulumi.Input.encodeList<
                  WaitingRoomHostNameAndPath,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'jsonResponseEnable': ?jsonResponseEnable,
      'language': ?language,
      'newUsersPerMinute': ?newUsersPerMinute,
      'queueAllEnable': ?queueAllEnable,
      'queuingMethod': ?queuingMethod,
      'queuingStatusCode': ?queuingStatusCode,
      'sessionDuration': ?sessionDuration,
      'siteId': ?siteId,
      'status': ?status,
      'totalActiveUsers': ?totalActiveUsers,
      'waitingRoomId': ?waitingRoomId,
      'waitingRoomName': ?waitingRoomName,
      'waitingRoomType': ?waitingRoomType,
    };
  }

  factory WaitingRoomState.fromMap(Map<String, dynamic> map) {
    return WaitingRoomState(
      cookieName: (() {
        final guardedValue = map['cookieName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      hostNameAndPaths: (() {
        final guardedValue = map['hostNameAndPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WaitingRoomHostNameAndPath>(
            guardedValue,
            (value) => WaitingRoomHostNameAndPath.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
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
      queueAllEnable: (() {
        final guardedValue = map['queueAllEnable'];
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
      waitingRoomId: (() {
        final guardedValue = map['waitingRoomId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      waitingRoomName: (() {
        final guardedValue = map['waitingRoomName'];
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
