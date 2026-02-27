// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dataplex_v1_data_quality_rule_response.dart';
import 'google_cloud_dataplex_v1_data_quality_spec_post_scan_actions_response.dart';

/// DataQualityScan related setting.
class GoogleCloudDataplexV1DataQualitySpecResponse {
  /// Optional. Actions to take upon job completion.
  final GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse
      postScanActions;

  /// Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10
  final String rowFilter;

  /// The list of rules to evaluate against a data source. At least one rule is required.
  final List<GoogleCloudDataplexV1DataQualityRuleResponse> rules;

  /// Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  final double samplingPercent;

  GoogleCloudDataplexV1DataQualitySpecResponse({
    required this.postScanActions,
    required this.rowFilter,
    required this.rules,
    required this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postScanActions'] = postScanActions.toMap();
    map['rowFilter'] = rowFilter;
    map['rules'] = Input.encodeList<
        GoogleCloudDataplexV1DataQualityRuleResponse,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    map['samplingPercent'] = samplingPercent;
    return map;
  }

  factory GoogleCloudDataplexV1DataQualitySpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualitySpecResponse(
      postScanActions:
          GoogleCloudDataplexV1DataQualitySpecPostScanActionsResponse.fromMap(
              (map['postScanActions'] as Map).cast<String, dynamic>()),
      rowFilter: map['rowFilter'] as String,
      rules: Input.decodeList<GoogleCloudDataplexV1DataQualityRuleResponse>(
          map['rules'],
          (value) => GoogleCloudDataplexV1DataQualityRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      samplingPercent: map['samplingPercent'] as double,
    );
  }
}
