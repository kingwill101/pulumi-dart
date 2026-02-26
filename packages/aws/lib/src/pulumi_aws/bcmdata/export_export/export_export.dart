// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../export_export_data_query/export_export_data_query.dart';
import '../export_export_destination_configuration/export_export_destination_configuration.dart';
import '../export_export_refresh_cadence/export_export_refresh_cadence.dart';

class ExportExport {
  /// Data query for this specific data export. See the <span pulumi-lang-nodejs="`dataQuery`" pulumi-lang-dotnet="`DataQuery`" pulumi-lang-go="`dataQuery`" pulumi-lang-python="`data_query`" pulumi-lang-yaml="`dataQuery`" pulumi-lang-java="`dataQuery`">`data_query`</span> argument reference below.
  final List<ExportExportDataQuery>? dataQueries;

  /// Description for this specific data export.
  final String? description;

  /// Destination configuration for this specific data export. See the <span pulumi-lang-nodejs="`destinationConfigurations`" pulumi-lang-dotnet="`DestinationConfigurations`" pulumi-lang-go="`destinationConfigurations`" pulumi-lang-python="`destination_configurations`" pulumi-lang-yaml="`destinationConfigurations`" pulumi-lang-java="`destinationConfigurations`">`destination_configurations`</span> argument reference below.
  final List<ExportExportDestinationConfiguration>? destinationConfigurations;
  final String? exportArn;

  /// Name of this specific data export.
  final String name;

  /// Cadence for Amazon Web Services to update the export in your S3 bucket. See the <span pulumi-lang-nodejs="`refreshCadence`" pulumi-lang-dotnet="`RefreshCadence`" pulumi-lang-go="`refreshCadence`" pulumi-lang-python="`refresh_cadence`" pulumi-lang-yaml="`refreshCadence`" pulumi-lang-java="`refreshCadence`">`refresh_cadence`</span> argument reference below.
  final List<ExportExportRefreshCadence>? refreshCadences;

  ExportExport({
    this.dataQueries,
    this.description,
    this.destinationConfigurations,
    this.exportArn,
    required this.name,
    this.refreshCadences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataQueriesValue = dataQueries;
    if (dataQueriesValue != null) {
      map['dataQueries'] =
          Input.encodeList<ExportExportDataQuery, Map<String, dynamic>>(
              dataQueriesValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destinationConfigurationsValue = destinationConfigurations;
    if (destinationConfigurationsValue != null) {
      map['destinationConfigurations'] = Input.encodeList<
              ExportExportDestinationConfiguration, Map<String, dynamic>>(
          destinationConfigurationsValue, (value) => value.toMap());
    }
    final exportArnValue = exportArn;
    if (exportArnValue != null) {
      map['exportArn'] = exportArnValue;
    }
    map['name'] = name;
    final refreshCadencesValue = refreshCadences;
    if (refreshCadencesValue != null) {
      map['refreshCadences'] =
          Input.encodeList<ExportExportRefreshCadence, Map<String, dynamic>>(
              refreshCadencesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ExportExport.fromMap(Map<String, dynamic> map) {
    return ExportExport(
      dataQueries: map['dataQueries'] == null
          ? null
          : Input.decodeList<ExportExportDataQuery>(
              map['dataQueries'],
              (value) => ExportExportDataQuery.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      destinationConfigurations: map['destinationConfigurations'] == null
          ? null
          : Input.decodeList<ExportExportDestinationConfiguration>(
              map['destinationConfigurations'],
              (value) => ExportExportDestinationConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      exportArn: map['exportArn'] == null ? null : map['exportArn'] as String,
      name: map['name'] as String,
      refreshCadences: map['refreshCadences'] == null
          ? null
          : Input.decodeList<ExportExportRefreshCadence>(
              map['refreshCadences'],
              (value) => ExportExportRefreshCadence.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
