// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../datascan_data_quality_spec_post_scan_actions/datascan_data_quality_spec_post_scan_actions.dart';
import '../datascan_data_quality_spec_rule/datascan_data_quality_spec_rule.dart';

class DatascanDataQualitySpec {
  /// If set, the latest DataScan job result will be published to Dataplex Catalog.
  final bool? catalogPublishingEnabled;

  /// Actions to take upon job completion.
  /// Structure is documented below.
  final DatascanDataQualitySpecPostScanActions? postScanActions;

  /// A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10
  final String? rowFilter;

  /// The list of rules to evaluate against a data source. At least one rule is required.
  /// Structure is documented below.
  final List<DatascanDataQualitySpecRule>? rules;

  /// The percentage of the records to be selected from the dataset for DataScan.
  /// Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
  /// Sampling is not applied if `sampling_percent` is not specified, 0 or 100.
  final double? samplingPercent;

  DatascanDataQualitySpec({
    this.catalogPublishingEnabled,
    this.postScanActions,
    this.rowFilter,
    this.rules,
    this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogPublishingEnabledValue = catalogPublishingEnabled;
    if (catalogPublishingEnabledValue != null) {
      map['catalogPublishingEnabled'] = catalogPublishingEnabledValue;
    }
    final postScanActionsValue = postScanActions;
    if (postScanActionsValue != null) {
      map['postScanActions'] = postScanActionsValue.toMap();
    }
    final rowFilterValue = rowFilter;
    if (rowFilterValue != null) {
      map['rowFilter'] = rowFilterValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] =
          Input.encodeList<DatascanDataQualitySpecRule, Map<String, dynamic>>(
              rulesValue, (value) => value.toMap());
    }
    final samplingPercentValue = samplingPercent;
    if (samplingPercentValue != null) {
      map['samplingPercent'] = samplingPercentValue;
    }
    return map;
  }

  factory DatascanDataQualitySpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpec(
      catalogPublishingEnabled: map['catalogPublishingEnabled'] == null
          ? null
          : map['catalogPublishingEnabled'] as bool,
      postScanActions: map['postScanActions'] == null
          ? null
          : DatascanDataQualitySpecPostScanActions.fromMap(
              (map['postScanActions'] as Map).cast<String, dynamic>()),
      rowFilter: map['rowFilter'] == null ? null : map['rowFilter'] as String,
      rules: map['rules'] == null
          ? null
          : Input.decodeList<DatascanDataQualitySpecRule>(
              map['rules'],
              (value) => DatascanDataQualitySpecRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      samplingPercent: map['samplingPercent'] == null
          ? null
          : map['samplingPercent'] as double,
    );
  }
}
