// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../datascan_data/datascan_data.dart';
import '../datascan_data_discovery_spec/datascan_data_discovery_spec.dart';
import '../datascan_data_profile_spec/datascan_data_profile_spec.dart';
import '../datascan_data_quality_spec/datascan_data_quality_spec.dart';
import '../datascan_execution_spec/datascan_execution_spec.dart';

/// The set of arguments for Datascan.
class DatascanArgs {
  /// The data source for DataScan.
  /// Structure is documented below.
  final pulumi.Input<DatascanData> data;

  /// DataDiscoveryScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataDiscoverySpec>? dataDiscoverySpec;

  /// DataDocumentationScan related setting.
  final pulumi.Input<Map<String, dynamic>>? dataDocumentationSpec;

  /// DataProfileScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataProfileSpec>? dataProfileSpec;

  /// DataQualityScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpec>? dataQualitySpec;

  /// DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  final pulumi.Input<String> dataScanId;

  /// Description of the scan.
  final pulumi.Input<String>? description;

  /// User friendly display name.
  final pulumi.Input<String>? displayName;

  /// DataScan execution settings.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpec> executionSpec;

  /// User-defined labels for the scan. A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the data scan should reside.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  DatascanArgs({
    required this.data,
    this.dataDiscoverySpec,
    this.dataDocumentationSpec,
    this.dataProfileSpec,
    this.dataQualitySpec,
    required this.dataScanId,
    this.description,
    this.displayName,
    required this.executionSpec,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] =
        pulumi.Input.mapInputValue<DatascanData, Map<String, dynamic>>(
            data, (value) => value.toMap());
    final dataDiscoverySpecValue = dataDiscoverySpec;
    if (dataDiscoverySpecValue != null) {
      map['dataDiscoverySpec'] = pulumi.Input.mapOptionalInputValue<
              DatascanDataDiscoverySpec, Map<String, dynamic>>(
          dataDiscoverySpecValue, (value) => value.toMap());
    }
    final dataDocumentationSpecValue = dataDocumentationSpec;
    if (dataDocumentationSpecValue != null) {
      map['dataDocumentationSpec'] = dataDocumentationSpecValue;
    }
    final dataProfileSpecValue = dataProfileSpec;
    if (dataProfileSpecValue != null) {
      map['dataProfileSpec'] = pulumi.Input.mapOptionalInputValue<
          DatascanDataProfileSpec,
          Map<String, dynamic>>(dataProfileSpecValue, (value) => value.toMap());
    }
    final dataQualitySpecValue = dataQualitySpec;
    if (dataQualitySpecValue != null) {
      map['dataQualitySpec'] = pulumi.Input.mapOptionalInputValue<
          DatascanDataQualitySpec,
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
    map['executionSpec'] =
        pulumi.Input.mapInputValue<DatascanExecutionSpec, Map<String, dynamic>>(
            executionSpec, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DatascanArgs.fromMap(Map<String, dynamic> map) {
    return DatascanArgs(
      data: pulumi.Input.asInput<DatascanData>(map['data']),
      dataDiscoverySpec:
          pulumi.Input.asOptionalInput<DatascanDataDiscoverySpec>(
              map['dataDiscoverySpec']),
      dataDocumentationSpec: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['dataDocumentationSpec']),
      dataProfileSpec: pulumi.Input.asOptionalInput<DatascanDataProfileSpec>(
          map['dataProfileSpec']),
      dataQualitySpec: pulumi.Input.asOptionalInput<DatascanDataQualitySpec>(
          map['dataQualitySpec']),
      dataScanId: pulumi.Input.asInput<String>(map['dataScanId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      executionSpec:
          pulumi.Input.asInput<DatascanExecutionSpec>(map['executionSpec']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
