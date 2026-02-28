// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_date_range.dart';

/// {@template pulumi_apigee_v1_export_args_doc}
/// The set of arguments for Export.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_export_args_doc}
class ExportArgs {
  /// Optional. Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\t`).
  final pulumi.Input<String>? csvDelimiter;
  /// Name of the preconfigured datastore.
  final pulumi.Input<String> datastoreName;
  /// Date range of the data to export.
  final pulumi.Input<GoogleCloudApigeeV1DateRange> dateRange;
  /// Optional. Description of the export job.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> environmentId;
  /// Display name of the export job.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Optional. Output format of the export. Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the `csvDelimiter` property.
  final pulumi.Input<String>? outputFormat;

  /// Creates a new [ExportArgs].
  /// [csvDelimiter] Optional. Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\t`).
  /// [datastoreName] Name of the preconfigured datastore.
  /// [dateRange] Date range of the data to export.
  /// [description] Optional. Description of the export job.
  /// [environmentId] Required.
  /// [name] Display name of the export job.
  /// [organizationId] Required.
  /// [outputFormat] Optional. Output format of the export. Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the `csvDelimiter` property.
  ExportArgs({
    String? csvDelimiter,
    required String datastoreName,
    required GoogleCloudApigeeV1DateRange dateRange,
    String? description,
    required String environmentId,
    String? name,
    required String organizationId,
    String? outputFormat,
  }) :
      csvDelimiter = pulumi.Input.asOptionalInput<String>(csvDelimiter),
      datastoreName = pulumi.Input.asInput<String>(datastoreName),
      dateRange = pulumi.Input.asInput<GoogleCloudApigeeV1DateRange>(dateRange),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      outputFormat = pulumi.Input.asOptionalInput<String>(outputFormat);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvDelimiter': ?csvDelimiter,
      'datastoreName': datastoreName,
      'dateRange': pulumi.Input.mapInputValue<GoogleCloudApigeeV1DateRange, Map<String, dynamic>>(dateRange, (value) => value.toMap()),
      'description': ?description,
      'environmentId': environmentId,
      'name': ?name,
      'organizationId': organizationId,
      'outputFormat': ?outputFormat,
    };
  }

  factory ExportArgs.fromMap(Map<String, dynamic> map) {
    return ExportArgs(
      csvDelimiter: map['csvDelimiter'] == null ? null : map['csvDelimiter'] as String,
      datastoreName: map['datastoreName'] as String,
      dateRange: GoogleCloudApigeeV1DateRange.fromMap((map['dateRange'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      environmentId: map['environmentId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      outputFormat: map['outputFormat'] == null ? null : map['outputFormat'] as String,
    );
  }
}

