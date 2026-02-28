// ignore_for_file: unused_element, unnecessary_cast

import 'datascan_data_profile_spec_post_scan_actions_bigquery_export.dart';

class DatascanDataProfileSpecPostScanActions {
  /// If set, results will be exported to the provided BigQuery table.
  /// Structure is documented below.
  final DatascanDataProfileSpecPostScanActionsBigqueryExport? bigqueryExport;

  /// Creates a new [DatascanDataProfileSpecPostScanActions].
  /// [bigqueryExport] If set, results will be exported to the provided BigQuery table.
  DatascanDataProfileSpecPostScanActions({
    this.bigqueryExport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryExportValue = bigqueryExport;
    if (bigqueryExportValue != null) {
      map['bigqueryExport'] = bigqueryExportValue.toMap();
    }
    return map;
  }

  factory DatascanDataProfileSpecPostScanActions.fromMap(
      Map<String, dynamic> map) {
    return DatascanDataProfileSpecPostScanActions(
      bigqueryExport: map['bigqueryExport'] == null
          ? null
          : DatascanDataProfileSpecPostScanActionsBigqueryExport.fromMap(
              (map['bigqueryExport'] as Map).cast<String, dynamic>()),
    );
  }
}
