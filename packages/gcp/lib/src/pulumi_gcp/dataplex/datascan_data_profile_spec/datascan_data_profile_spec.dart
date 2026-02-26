// ignore_for_file: unused_element, unnecessary_cast

import '../datascan_data_profile_spec_exclude_fields/datascan_data_profile_spec_exclude_fields.dart';
import '../datascan_data_profile_spec_include_fields/datascan_data_profile_spec_include_fields.dart';
import '../datascan_data_profile_spec_post_scan_actions/datascan_data_profile_spec_post_scan_actions.dart';

class DatascanDataProfileSpec {
  /// If set, the latest DataScan job result will be published to Dataplex Catalog.
  final bool? catalogPublishingEnabled;

  /// The fields to exclude from data profile.
  /// If specified, the fields will be excluded from data profile, regardless of <span pulumi-lang-nodejs="`includeFields`" pulumi-lang-dotnet="`IncludeFields`" pulumi-lang-go="`includeFields`" pulumi-lang-python="`include_fields`" pulumi-lang-yaml="`includeFields`" pulumi-lang-java="`includeFields`">`include_fields`</span> value.
  /// Structure is documented below.
  final DatascanDataProfileSpecExcludeFields? excludeFields;

  /// The fields to include in data profile.
  /// If not specified, all fields at the time of profile scan job execution are included, except for ones listed in <span pulumi-lang-nodejs="`excludeFields`" pulumi-lang-dotnet="`ExcludeFields`" pulumi-lang-go="`excludeFields`" pulumi-lang-python="`exclude_fields`" pulumi-lang-yaml="`excludeFields`" pulumi-lang-java="`excludeFields`">`exclude_fields`</span>.
  /// Structure is documented below.
  final DatascanDataProfileSpecIncludeFields? includeFields;

  /// Actions to take upon job completion.
  /// Structure is documented below.
  final DatascanDataProfileSpecPostScanActions? postScanActions;

  /// A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL syntax. Example: col1 >= 0 AND col2 < 10
  final String? rowFilter;

  /// The percentage of the records to be selected from the dataset for DataScan.
  /// Value can range between 0.0 and 100.0 with up to 3 significant decimal digits.
  /// Sampling is not applied if <span pulumi-lang-nodejs="`samplingPercent`" pulumi-lang-dotnet="`SamplingPercent`" pulumi-lang-go="`samplingPercent`" pulumi-lang-python="`sampling_percent`" pulumi-lang-yaml="`samplingPercent`" pulumi-lang-java="`samplingPercent`">`sampling_percent`</span> is not specified, 0 or 100.
  final double? samplingPercent;

  DatascanDataProfileSpec({
    this.catalogPublishingEnabled,
    this.excludeFields,
    this.includeFields,
    this.postScanActions,
    this.rowFilter,
    this.samplingPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogPublishingEnabledValue = catalogPublishingEnabled;
    if (catalogPublishingEnabledValue != null) {
      map['catalogPublishingEnabled'] = catalogPublishingEnabledValue;
    }
    final excludeFieldsValue = excludeFields;
    if (excludeFieldsValue != null) {
      map['excludeFields'] = excludeFieldsValue.toMap();
    }
    final includeFieldsValue = includeFields;
    if (includeFieldsValue != null) {
      map['includeFields'] = includeFieldsValue.toMap();
    }
    final postScanActionsValue = postScanActions;
    if (postScanActionsValue != null) {
      map['postScanActions'] = postScanActionsValue.toMap();
    }
    final rowFilterValue = rowFilter;
    if (rowFilterValue != null) {
      map['rowFilter'] = rowFilterValue;
    }
    final samplingPercentValue = samplingPercent;
    if (samplingPercentValue != null) {
      map['samplingPercent'] = samplingPercentValue;
    }
    return map;
  }

  factory DatascanDataProfileSpec.fromMap(Map<String, dynamic> map) {
    return DatascanDataProfileSpec(
      catalogPublishingEnabled: map['catalogPublishingEnabled'] == null
          ? null
          : map['catalogPublishingEnabled'] as bool,
      excludeFields: map['excludeFields'] == null
          ? null
          : DatascanDataProfileSpecExcludeFields.fromMap(
              (map['excludeFields'] as Map).cast<String, dynamic>()),
      includeFields: map['includeFields'] == null
          ? null
          : DatascanDataProfileSpecIncludeFields.fromMap(
              (map['includeFields'] as Map).cast<String, dynamic>()),
      postScanActions: map['postScanActions'] == null
          ? null
          : DatascanDataProfileSpecPostScanActions.fromMap(
              (map['postScanActions'] as Map).cast<String, dynamic>()),
      rowFilter: map['rowFilter'] == null ? null : map['rowFilter'] as String,
      samplingPercent: map['samplingPercent'] == null
          ? null
          : map['samplingPercent'] as double,
    );
  }
}
