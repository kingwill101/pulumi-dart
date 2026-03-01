// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'timeline_aggregation_response.dart';
import 'timeline_error_response.dart';

/// Expansion result metadata.
class TimelineResultsMetadataResponse {
  /// timeline aggregation per kind
  final List<TimelineAggregationResponse> aggregations;
  /// information about the failure queries
  final List<TimelineErrorResponse>? errors;
  /// the total items found for the timeline request
  final int totalCount;

  /// Creates a new [TimelineResultsMetadataResponse].
  /// [aggregations] timeline aggregation per kind
  /// [errors] information about the failure queries
  /// [totalCount] the total items found for the timeline request
  TimelineResultsMetadataResponse({
    required this.aggregations,
    this.errors,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregations': pulumi.Input.encodeList<TimelineAggregationResponse, Map<String, dynamic>>(aggregations, (value) => value.toMap()),
      'errors': ?errors == null ? null : pulumi.Input.encodeList<TimelineErrorResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'totalCount': totalCount,
    };
  }

  factory TimelineResultsMetadataResponse.fromMap(Map<String, dynamic> map) {
    return TimelineResultsMetadataResponse(
      aggregations: pulumi.Input.decodeList<TimelineAggregationResponse>(map['aggregations'], (value) => TimelineAggregationResponse.fromMap((value as Map).cast<String, dynamic>())),
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<TimelineErrorResponse>(map['errors'], (value) => TimelineErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      totalCount: map['totalCount'] as int,
    );
  }
}

