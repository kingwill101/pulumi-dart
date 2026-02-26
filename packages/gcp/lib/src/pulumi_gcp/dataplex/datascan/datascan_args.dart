// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../datascan_data/datascan_data.dart';
import '../datascan_data_discovery_spec/datascan_data_discovery_spec.dart';
import '../datascan_data_profile_spec/datascan_data_profile_spec.dart';
import '../datascan_data_quality_spec/datascan_data_quality_spec.dart';
import '../datascan_execution_spec/datascan_execution_spec.dart';

/// The set of arguments for Datascan.
class DatascanArgs {
  /// The data source for DataScan.
  /// Structure is documented below.
  final Input<DatascanData> data;

  /// DataDiscoveryScan related setting.
  /// Structure is documented below.
  final Input<DatascanDataDiscoverySpec>? dataDiscoverySpec;

  /// DataDocumentationScan related setting.
  final Input<Map<String, dynamic>>? dataDocumentationSpec;

  /// DataProfileScan related setting.
  /// Structure is documented below.
  final Input<DatascanDataProfileSpec>? dataProfileSpec;

  /// DataQualityScan related setting.
  /// Structure is documented below.
  final Input<DatascanDataQualitySpec>? dataQualitySpec;

  /// DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  final Input<String> dataScanId;

  /// Description of the scan.
  final Input<String>? description;

  /// User friendly display name.
  final Input<String>? displayName;

  /// DataScan execution settings.
  /// Structure is documented below.
  final Input<DatascanExecutionSpec> executionSpec;

  /// User-defined labels for the scan. A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location where the data scan should reside.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
    map['data'] = Input.mapInputValue<DatascanData, Map<String, dynamic>>(
        data, (value) => value.toMap());
    final dataDiscoverySpecValue = dataDiscoverySpec;
    if (dataDiscoverySpecValue != null) {
      map['dataDiscoverySpec'] = Input.mapOptionalInputValue<
              DatascanDataDiscoverySpec, Map<String, dynamic>>(
          dataDiscoverySpecValue, (value) => value.toMap());
    }
    final dataDocumentationSpecValue = dataDocumentationSpec;
    if (dataDocumentationSpecValue != null) {
      map['dataDocumentationSpec'] = dataDocumentationSpecValue;
    }
    final dataProfileSpecValue = dataProfileSpec;
    if (dataProfileSpecValue != null) {
      map['dataProfileSpec'] = Input.mapOptionalInputValue<
          DatascanDataProfileSpec,
          Map<String, dynamic>>(dataProfileSpecValue, (value) => value.toMap());
    }
    final dataQualitySpecValue = dataQualitySpec;
    if (dataQualitySpecValue != null) {
      map['dataQualitySpec'] = Input.mapOptionalInputValue<
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
        Input.mapInputValue<DatascanExecutionSpec, Map<String, dynamic>>(
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
      data: Input.asInput<DatascanData>(map['data']),
      dataDiscoverySpec: Input.asOptionalInput<DatascanDataDiscoverySpec>(
          map['dataDiscoverySpec']),
      dataDocumentationSpec: Input.asOptionalInput<Map<String, dynamic>>(
          map['dataDocumentationSpec']),
      dataProfileSpec: Input.asOptionalInput<DatascanDataProfileSpec>(
          map['dataProfileSpec']),
      dataQualitySpec: Input.asOptionalInput<DatascanDataQualitySpec>(
          map['dataQualitySpec']),
      dataScanId: Input.asInput<String>(map['dataScanId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      executionSpec: Input.asInput<DatascanExecutionSpec>(map['executionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
