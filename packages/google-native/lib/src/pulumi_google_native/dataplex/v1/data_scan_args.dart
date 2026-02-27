// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dataplex_v1_data_profile_spec.dart';
import 'google_cloud_dataplex_v1_data_quality_spec.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_spec.dart';
import 'google_cloud_dataplex_v1_data_source.dart';

/// The set of arguments for DataScan.
class DataScanArgs {
  /// The data source for DataScan.
  final Input<GoogleCloudDataplexV1DataSource> data;

  /// DataProfileScan related setting.
  final Input<GoogleCloudDataplexV1DataProfileSpec>? dataProfileSpec;

  /// DataQualityScan related setting.
  final Input<GoogleCloudDataplexV1DataQualitySpec>? dataQualitySpec;

  /// Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. Must be between 1-63 characters. Must be unique within the customer project / location.
  final Input<String> dataScanId;

  /// Optional. Description of the scan. Must be between 1-1024 characters.
  final Input<String>? description;

  /// Optional. User friendly display name. Must be between 1-256 characters.
  final Input<String>? displayName;

  /// Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  final Input<GoogleCloudDataplexV1DataScanExecutionSpec>? executionSpec;

  /// Optional. User-defined labels for the scan.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  DataScanArgs({
    required this.data,
    this.dataProfileSpec,
    this.dataQualitySpec,
    required this.dataScanId,
    this.description,
    this.displayName,
    this.executionSpec,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = Input.mapInputValue<GoogleCloudDataplexV1DataSource,
        Map<String, dynamic>>(data, (value) => value.toMap());
    final dataProfileSpecValue = dataProfileSpec;
    if (dataProfileSpecValue != null) {
      map['dataProfileSpec'] = Input.mapOptionalInputValue<
          GoogleCloudDataplexV1DataProfileSpec,
          Map<String, dynamic>>(dataProfileSpecValue, (value) => value.toMap());
    }
    final dataQualitySpecValue = dataQualitySpec;
    if (dataQualitySpecValue != null) {
      map['dataQualitySpec'] = Input.mapOptionalInputValue<
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
      map['executionSpec'] = Input.mapOptionalInputValue<
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
      data: Input.asInput<GoogleCloudDataplexV1DataSource>(map['data']),
      dataProfileSpec:
          Input.asOptionalInput<GoogleCloudDataplexV1DataProfileSpec>(
              map['dataProfileSpec']),
      dataQualitySpec:
          Input.asOptionalInput<GoogleCloudDataplexV1DataQualitySpec>(
              map['dataQualitySpec']),
      dataScanId: Input.asInput<String>(map['dataScanId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      executionSpec:
          Input.asOptionalInput<GoogleCloudDataplexV1DataScanExecutionSpec>(
              map['executionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
