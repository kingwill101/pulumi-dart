// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_quality_column_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_dimension_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_result_post_scan_actions_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_rule_result_response.dart';
import 'google_cloud_dataplex_v1_scanned_data_response.dart';

/// The output of a DataQualityScan.
class GoogleCloudDataplexV1DataQualityResultResponse {
  /// A list of results at the column level.A column will have a corresponding DataQualityColumnResult if and only if there is at least one rule with the 'column' field set to it.
  final List<GoogleCloudDataplexV1DataQualityColumnResultResponse> columns;

  /// A list of results at the dimension level.A dimension will have a corresponding DataQualityDimensionResult if and only if there is at least one rule with the 'dimension' field set to it.
  final List<GoogleCloudDataplexV1DataQualityDimensionResultResponse>
      dimensions;

  /// Overall data quality result -- true if all rules passed.
  final bool passed;

  /// The result of post scan actions.
  final GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse
      postScanActionsResult;

  /// The count of rows processed.
  final String rowCount;

  /// A list of all the rules in a job, and their results.
  final List<GoogleCloudDataplexV1DataQualityRuleResultResponse> rules;

  /// The data scanned for this result.
  final GoogleCloudDataplexV1ScannedDataResponse scannedData;

  /// The overall data quality score.The score ranges between 0, 100 (up to two decimal points).
  final double score;

  GoogleCloudDataplexV1DataQualityResultResponse({
    required this.columns,
    required this.dimensions,
    required this.passed,
    required this.postScanActionsResult,
    required this.rowCount,
    required this.rules,
    required this.scannedData,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = pulumi.Input.encodeList<
        GoogleCloudDataplexV1DataQualityColumnResultResponse,
        Map<String, dynamic>>(columns, (value) => value.toMap());
    map['dimensions'] = pulumi.Input.encodeList<
        GoogleCloudDataplexV1DataQualityDimensionResultResponse,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    map['passed'] = passed;
    map['postScanActionsResult'] = postScanActionsResult.toMap();
    map['rowCount'] = rowCount;
    map['rules'] = pulumi.Input.encodeList<
        GoogleCloudDataplexV1DataQualityRuleResultResponse,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    map['scannedData'] = scannedData.toMap();
    map['score'] = score;
    return map;
  }

  factory GoogleCloudDataplexV1DataQualityResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityResultResponse(
      columns: pulumi.Input.decodeList<
              GoogleCloudDataplexV1DataQualityColumnResultResponse>(
          map['columns'],
          (value) =>
              GoogleCloudDataplexV1DataQualityColumnResultResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dimensions: pulumi.Input.decodeList<
              GoogleCloudDataplexV1DataQualityDimensionResultResponse>(
          map['dimensions'],
          (value) =>
              GoogleCloudDataplexV1DataQualityDimensionResultResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      passed: map['passed'] as bool,
      postScanActionsResult:
          GoogleCloudDataplexV1DataQualityResultPostScanActionsResultResponse
              .fromMap((map['postScanActionsResult'] as Map)
                  .cast<String, dynamic>()),
      rowCount: map['rowCount'] as String,
      rules: pulumi.Input.decodeList<
              GoogleCloudDataplexV1DataQualityRuleResultResponse>(
          map['rules'],
          (value) => GoogleCloudDataplexV1DataQualityRuleResultResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      scannedData: GoogleCloudDataplexV1ScannedDataResponse.fromMap(
          (map['scannedData'] as Map).cast<String, dynamic>()),
      score: map['score'] as double,
    );
  }
}
