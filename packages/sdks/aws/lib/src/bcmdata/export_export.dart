// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_export_data_query.dart';
import 'export_export_destination_configuration.dart';
import 'export_export_refresh_cadence.dart';

class ExportExport {
  /// Data query for this specific data export. See the `data_query` argument reference below.
  final pulumi.Input<List<ExportExportDataQuery>>? dataQueries;
  /// Description for this specific data export.
  final pulumi.Input<String>? description;
  /// Destination configuration for this specific data export. See the `destination_configurations` argument reference below.
  final pulumi.Input<List<ExportExportDestinationConfiguration>>? destinationConfigurations;
  final pulumi.Input<String>? exportArn;
  /// Name of this specific data export.
  final pulumi.Input<String> name;
  /// Cadence for Amazon Web Services to update the export in your S3 bucket. See the `refresh_cadence` argument reference below.
  final pulumi.Input<List<ExportExportRefreshCadence>>? refreshCadences;

  /// Creates a new [ExportExport].
  /// [dataQueries] Data query for this specific data export. See the `data_query` argument reference below.
  /// [description] Description for this specific data export.
  /// [destinationConfigurations] Destination configuration for this specific data export. See the `destination_configurations` argument reference below.
  /// [exportArn] Optional.
  /// [name] Name of this specific data export.
  /// [refreshCadences] Cadence for Amazon Web Services to update the export in your S3 bucket. See the `refresh_cadence` argument reference below.
  ExportExport({
    this.dataQueries,
    this.description,
    this.destinationConfigurations,
    this.exportArn,
    required this.name,
    this.refreshCadences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataQueries': ?pulumi.Input.mapOptionalInputValue<List<ExportExportDataQuery>, List<Map<String, dynamic>>>(dataQueries, (value) => pulumi.Input.encodeList<ExportExportDataQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'destinationConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ExportExportDestinationConfiguration>, List<Map<String, dynamic>>>(destinationConfigurations, (value) => pulumi.Input.encodeList<ExportExportDestinationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exportArn': ?exportArn,
      'name': name,
      'refreshCadences': ?pulumi.Input.mapOptionalInputValue<List<ExportExportRefreshCadence>, List<Map<String, dynamic>>>(refreshCadences, (value) => pulumi.Input.encodeList<ExportExportRefreshCadence, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExportExport.fromMap(Map<String, dynamic> map) {
    return ExportExport(
      dataQueries: map['dataQueries'] == null ? null : ((pulumi.Input.decodeList<ExportExportDataQuery>(map['dataQueries']!, (value) => ExportExportDataQuery.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      destinationConfigurations: map['destinationConfigurations'] == null ? null : ((pulumi.Input.decodeList<ExportExportDestinationConfiguration>(map['destinationConfigurations']!, (value) => ExportExportDestinationConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      exportArn: map['exportArn'] == null ? null : ((map['exportArn'] as String).input()).input(),
      name: (map['name'] as String).input(),
      refreshCadences: map['refreshCadences'] == null ? null : ((pulumi.Input.decodeList<ExportExportRefreshCadence>(map['refreshCadences']!, (value) => ExportExportRefreshCadence.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

