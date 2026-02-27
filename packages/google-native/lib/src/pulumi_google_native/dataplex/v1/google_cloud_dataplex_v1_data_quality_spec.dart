// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dataplex_v1_data_quality_rule.dart';
import 'google_cloud_dataplex_v1_data_quality_spec_post_scan_actions.dart';

/// DataQualityScan related setting.
class GoogleCloudDataplexV1DataQualitySpec {
  /// Optional. Actions to take upon job completion.
  final GoogleCloudDataplexV1DataQualitySpecPostScanActions? postScanActions;

  /// Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10
  final String? rowFilter;

  /// The list of rules to evaluate against a data source. At least one rule is required.
  final List<GoogleCloudDataplexV1DataQualityRule> rules;

  /// Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  final double? samplingPercent;

  GoogleCloudDataplexV1DataQualitySpec({
    this.postScanActions,
    this.rowFilter,
    required this.rules,
    this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postScanActionsValue = postScanActions;
    if (postScanActionsValue != null) {
      map['postScanActions'] = postScanActionsValue.toMap();
    }
    final rowFilterValue = rowFilter;
    if (rowFilterValue != null) {
      map['rowFilter'] = rowFilterValue;
    }
    map['rules'] = Input.encodeList<GoogleCloudDataplexV1DataQualityRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    final samplingPercentValue = samplingPercent;
    if (samplingPercentValue != null) {
      map['samplingPercent'] = samplingPercentValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1DataQualitySpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualitySpec(
      postScanActions: map['postScanActions'] == null
          ? null
          : GoogleCloudDataplexV1DataQualitySpecPostScanActions.fromMap(
              (map['postScanActions'] as Map).cast<String, dynamic>()),
      rowFilter: map['rowFilter'] == null ? null : map['rowFilter'] as String,
      rules: Input.decodeList<GoogleCloudDataplexV1DataQualityRule>(
          map['rules'],
          (value) => GoogleCloudDataplexV1DataQualityRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      samplingPercent: map['samplingPercent'] == null
          ? null
          : map['samplingPercent'] as double,
    );
  }
}
