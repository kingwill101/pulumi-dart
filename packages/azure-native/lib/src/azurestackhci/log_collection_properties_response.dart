// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_collection_session_response.dart';

/// Log Collection properties of the cluster.
class LogCollectionPropertiesResponse {
  /// From DateTimeStamp from when logs need to be connected
  final String fromDate;
  /// Recent DateTimeStamp where logs are successfully generated
  final String lastLogGenerated;
  final List<LogCollectionSessionResponse> logCollectionSessionDetails;
  /// To DateTimeStamp till when logs need to be connected
  final String toDate;

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
      'logCollectionSessionDetails': pulumi.Input.encodeList<LogCollectionSessionResponse, Map<String, dynamic>>(logCollectionSessionDetails, (value) => value.toMap()),
      'toDate': toDate,
    };
  }

  factory LogCollectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LogCollectionPropertiesResponse(
      fromDate: map['fromDate'] as String,
      lastLogGenerated: map['lastLogGenerated'] as String,
      logCollectionSessionDetails: pulumi.Input.decodeList<LogCollectionSessionResponse>(map['logCollectionSessionDetails'], (value) => LogCollectionSessionResponse.fromMap((value as Map).cast<String, dynamic>())),
      toDate: map['toDate'] as String,
    );
  }
}

