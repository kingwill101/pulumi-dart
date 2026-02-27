// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_date_range.dart';

/// The set of arguments for Export.
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

  ExportArgs({
    this.csvDelimiter,
    required this.datastoreName,
    required this.dateRange,
    this.description,
    required this.environmentId,
    this.name,
    required this.organizationId,
    this.outputFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvDelimiterValue = csvDelimiter;
    if (csvDelimiterValue != null) {
      map['csvDelimiter'] = csvDelimiterValue;
    }
    map['datastoreName'] = datastoreName;
    map['dateRange'] = pulumi.Input.mapInputValue<GoogleCloudApigeeV1DateRange,
        Map<String, dynamic>>(dateRange, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['environmentId'] = environmentId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
    }
    return map;
  }

  factory ExportArgs.fromMap(Map<String, dynamic> map) {
    return ExportArgs(
      csvDelimiter: pulumi.Input.asOptionalInput<String>(map['csvDelimiter']),
      datastoreName: pulumi.Input.asInput<String>(map['datastoreName']),
      dateRange:
          pulumi.Input.asInput<GoogleCloudApigeeV1DateRange>(map['dateRange']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      outputFormat: pulumi.Input.asOptionalInput<String>(map['outputFormat']),
    );
  }
}
