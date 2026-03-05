// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_seen_info_response.dart';

/// Data Type for App Seen
class AppSeenDataResponse {
  /// array of appSeen
  final pulumi.Input<List<AppSeenInfoResponse>> appSeenList;
  /// number of rows
  final pulumi.Input<int> count;

  /// Creates a new [AppSeenDataResponse].
  /// [appSeenList] array of appSeen
  /// [count] number of rows
  AppSeenDataResponse({
    required this.appSeenList,
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSeenList': pulumi.Input.mapInputValue<List<AppSeenInfoResponse>, List<Map<String, dynamic>>>(appSeenList, (value) => pulumi.Input.encodeList<AppSeenInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'count': count,
    };
  }

  factory AppSeenDataResponse.fromMap(Map<String, dynamic> map) {
    return AppSeenDataResponse(
      appSeenList: pulumi.Input.fromValue(pulumi.Input.decodeList<AppSeenInfoResponse>(map['appSeenList']!, (value) => AppSeenInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      count: pulumi.Input.fromValue(map['count'] as int),
    );
  }
}

