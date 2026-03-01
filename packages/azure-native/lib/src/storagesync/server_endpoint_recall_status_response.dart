// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_endpoint_recall_error_response.dart';

/// Server endpoint recall status object.
class ServerEndpointRecallStatusResponse {
  /// Last updated timestamp
  final String lastUpdatedTimestamp;
  /// Array of recall errors
  final List<ServerEndpointRecallErrorResponse> recallErrors;
  /// Total count of recall errors.
  final double totalRecallErrorsCount;

  /// Creates a new [ServerEndpointRecallStatusResponse].
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [recallErrors] Array of recall errors
  /// [totalRecallErrorsCount] Total count of recall errors.
  ServerEndpointRecallStatusResponse({
    required this.lastUpdatedTimestamp,
    required this.recallErrors,
    required this.totalRecallErrorsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'recallErrors': pulumi.Input.encodeList<ServerEndpointRecallErrorResponse, Map<String, dynamic>>(recallErrors, (value) => value.toMap()),
      'totalRecallErrorsCount': totalRecallErrorsCount,
    };
  }

  factory ServerEndpointRecallStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointRecallStatusResponse(
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
      recallErrors: pulumi.Input.decodeList<ServerEndpointRecallErrorResponse>(map['recallErrors'], (value) => ServerEndpointRecallErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      totalRecallErrorsCount: map['totalRecallErrorsCount'] as double,
    );
  }
}

