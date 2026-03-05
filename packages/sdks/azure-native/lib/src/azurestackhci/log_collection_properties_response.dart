// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_collection_session_response.dart';

/// Log Collection properties of the cluster.
class LogCollectionPropertiesResponse {
  /// From DateTimeStamp from when logs need to be connected
  final pulumi.Input<String> fromDate;
  /// Recent DateTimeStamp where logs are successfully generated
  final pulumi.Input<String> lastLogGenerated;
  final pulumi.Input<List<LogCollectionSessionResponse>> logCollectionSessionDetails;
  /// To DateTimeStamp till when logs need to be connected
  final pulumi.Input<String> toDate;

  /// Creates a new [LogCollectionPropertiesResponse].
  /// [fromDate] From DateTimeStamp from when logs need to be connected
  /// [lastLogGenerated] Recent DateTimeStamp where logs are successfully generated
  /// [logCollectionSessionDetails] Required.
  /// [toDate] To DateTimeStamp till when logs need to be connected
  LogCollectionPropertiesResponse({
    required this.fromDate,
    required this.lastLogGenerated,
    required this.logCollectionSessionDetails,
    required this.toDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromDate': fromDate,
      'lastLogGenerated': lastLogGenerated,
      'logCollectionSessionDetails': pulumi.Input.mapInputValue<List<LogCollectionSessionResponse>, List<Map<String, dynamic>>>(logCollectionSessionDetails, (value) => pulumi.Input.encodeList<LogCollectionSessionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toDate': toDate,
    };
  }

  factory LogCollectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LogCollectionPropertiesResponse(
      fromDate: pulumi.Input.fromValue(map['fromDate'] as String),
      lastLogGenerated: pulumi.Input.fromValue(map['lastLogGenerated'] as String),
      logCollectionSessionDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<LogCollectionSessionResponse>(map['logCollectionSessionDetails']!, (value) => LogCollectionSessionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      toDate: pulumi.Input.fromValue(map['toDate'] as String),
    );
  }
}

