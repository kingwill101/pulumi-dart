// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_error_kind_response.dart';

/// Get Insights result metadata.
class GetInsightsResultsMetadataResponse {
  /// information about the failed queries
  final List<GetInsightsErrorKindResponse>? errors;
  /// the total items found for the insights request
  final int totalCount;

  /// Creates a new [GetInsightsResultsMetadataResponse].
  /// [errors] information about the failed queries
  /// [totalCount] the total items found for the insights request
  GetInsightsResultsMetadataResponse({
    this.errors,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null ? null : pulumi.Input.encodeList<GetInsightsErrorKindResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'totalCount': totalCount,
    };
  }

  factory GetInsightsResultsMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GetInsightsResultsMetadataResponse(
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<GetInsightsErrorKindResponse>(map['errors'], (value) => GetInsightsErrorKindResponse.fromMap((value as Map).cast<String, dynamic>())),
      totalCount: map['totalCount'] as int,
    );
  }
}

