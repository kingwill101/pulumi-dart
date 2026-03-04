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
  final pulumi.Input<List<ExportExportDestinationConfiguration>>?
  destinationConfigurations;
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
      'dataQueries':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExportExportDataQuery>,
            List<Map<String, dynamic>>
          >(
            dataQueries,
            (value) =>
                pulumi.Input.encodeList<
                  ExportExportDataQuery,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'destinationConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExportExportDestinationConfiguration>,
            List<Map<String, dynamic>>
          >(
            destinationConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  ExportExportDestinationConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'exportArn': ?exportArn,
      'name': name,
      'refreshCadences':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExportExportRefreshCadence>,
            List<Map<String, dynamic>>
          >(
            refreshCadences,
            (value) =>
                pulumi.Input.encodeList<
                  ExportExportRefreshCadence,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ExportExport.fromMap(Map<String, dynamic> map) {
    return ExportExport(
      dataQueries: (() {
        final guardedValue = map['dataQueries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExportExportDataQuery>(
            guardedValue,
            (value) => ExportExportDataQuery.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationConfigurations: (() {
        final guardedValue = map['destinationConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExportExportDestinationConfiguration>(
            guardedValue,
            (value) => ExportExportDestinationConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      exportArn: (() {
        final guardedValue = map['exportArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      refreshCadences: (() {
        final guardedValue = map['refreshCadences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExportExportRefreshCadence>(
            guardedValue,
            (value) => ExportExportRefreshCadence.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
