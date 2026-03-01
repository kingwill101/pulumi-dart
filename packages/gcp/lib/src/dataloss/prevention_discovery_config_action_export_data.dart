// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_action_export_data_profile_table.dart';

class PreventionDiscoveryConfigActionExportData {
  /// Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery
  /// Structure is documented below.
  final PreventionDiscoveryConfigActionExportDataProfileTable? profileTable;

  /// Creates a new [PreventionDiscoveryConfigActionExportData].
  /// [profileTable] Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery
  PreventionDiscoveryConfigActionExportData({this.profileTable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileTable': ?profileTable == null ? null : profileTable!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigActionExportData.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigActionExportData(
      profileTable: map['profileTable'] == null
          ? null
          : PreventionDiscoveryConfigActionExportDataProfileTable.fromMap(
              (map['profileTable'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
