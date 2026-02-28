// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_profile_spec.dart';
import 'google_cloud_dataplex_v1_data_quality_spec.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_spec.dart';
import 'google_cloud_dataplex_v1_data_source.dart';

/// {@template pulumi_dataplex_v1_data_scan_args_doc}
/// The set of arguments for DataScan.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_data_scan_args_doc}
class DataScanArgs {
  /// The data source for DataScan.
  final pulumi.Input<GoogleCloudDataplexV1DataSource> data;

  /// DataProfileScan related setting.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpec>? dataProfileSpec;

  /// DataQualityScan related setting.
  final pulumi.Input<GoogleCloudDataplexV1DataQualitySpec>? dataQualitySpec;

  /// Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. Must be between 1-63 characters. Must be unique within the customer project / location.
  final pulumi.Input<String> dataScanId;

  /// Optional. Description of the scan. Must be between 1-1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. User friendly display name. Must be between 1-256 characters.
  final pulumi.Input<String>? displayName;

  /// Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  final pulumi.Input<GoogleCloudDataplexV1DataScanExecutionSpec>? executionSpec;

  /// Optional. User-defined labels for the scan.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [DataScanArgs].
  /// [data] The data source for DataScan.
  /// [dataProfileSpec] DataProfileScan related setting.
  /// [dataQualitySpec] DataQualityScan related setting.
  /// [dataScanId] Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. Must be between 1-63 characters. Must be unique within the customer project / location.
  /// [description] Optional. Description of the scan. Must be between 1-1024 characters.
  /// [displayName] Optional. User friendly display name. Must be between 1-256 characters.
  /// [executionSpec] Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  /// [labels] Optional. User-defined labels for the scan.
  /// [location] Optional.
  /// [project] Optional.
  DataScanArgs({
    required GoogleCloudDataplexV1DataSource data,
    GoogleCloudDataplexV1DataProfileSpec? dataProfileSpec,
    GoogleCloudDataplexV1DataQualitySpec? dataQualitySpec,
    required String dataScanId,
    String? description,
    String? displayName,
    GoogleCloudDataplexV1DataScanExecutionSpec? executionSpec,
    Map<String, String>? labels,
    String? location,
    String? project,
  })  : data = pulumi.Input.asInput<GoogleCloudDataplexV1DataSource>(data),
        dataProfileSpec =
            pulumi.Input.asOptionalInput<GoogleCloudDataplexV1DataProfileSpec>(
                dataProfileSpec),
        dataQualitySpec =
            pulumi.Input.asOptionalInput<GoogleCloudDataplexV1DataQualitySpec>(
                dataQualitySpec),
        dataScanId = pulumi.Input.asInput<String>(dataScanId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        executionSpec = pulumi.Input.asOptionalInput<
            GoogleCloudDataplexV1DataScanExecutionSpec>(executionSpec),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataSource,
        Map<String, dynamic>>(data, (value) => value.toMap());
    final dataProfileSpecValue = dataProfileSpec;
    if (dataProfileSpecValue != null) {
      map['dataProfileSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1DataProfileSpec,
          Map<String, dynamic>>(dataProfileSpecValue, (value) => value.toMap());
    }
    final dataQualitySpecValue = dataQualitySpec;
    if (dataQualitySpecValue != null) {
      map['dataQualitySpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1DataQualitySpec,
          Map<String, dynamic>>(dataQualitySpecValue, (value) => value.toMap());
    }
    map['dataScanId'] = dataScanId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final executionSpecValue = executionSpec;
    if (executionSpecValue != null) {
      map['executionSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1DataScanExecutionSpec,
          Map<String, dynamic>>(executionSpecValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DataScanArgs.fromMap(Map<String, dynamic> map) {
    return DataScanArgs(
      data: GoogleCloudDataplexV1DataSource.fromMap(
          (map['data'] as Map).cast<String, dynamic>()),
      dataProfileSpec: map['dataProfileSpec'] == null
          ? null
          : GoogleCloudDataplexV1DataProfileSpec.fromMap(
              (map['dataProfileSpec'] as Map).cast<String, dynamic>()),
      dataQualitySpec: map['dataQualitySpec'] == null
          ? null
          : GoogleCloudDataplexV1DataQualitySpec.fromMap(
              (map['dataQualitySpec'] as Map).cast<String, dynamic>()),
      dataScanId: map['dataScanId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      executionSpec: map['executionSpec'] == null
          ? null
          : GoogleCloudDataplexV1DataScanExecutionSpec.fromMap(
              (map['executionSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
