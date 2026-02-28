// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data.dart';
import 'datascan_data_discovery_spec.dart';
import 'datascan_data_profile_spec.dart';
import 'datascan_data_quality_spec.dart';
import 'datascan_execution_spec.dart';

/// {@template pulumi_dataplex_datascan_datascan_args_doc}
/// The set of arguments for Datascan.
/// {@endtemplate}
/// {@macro pulumi_dataplex_datascan_datascan_args_doc}
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

  /// Creates a new [DatascanArgs].
  /// [data] The data source for DataScan.
  /// [dataDiscoverySpec] DataDiscoveryScan related setting.
  /// [dataDocumentationSpec] DataDocumentationScan related setting.
  /// [dataProfileSpec] DataProfileScan related setting.
  /// [dataQualitySpec] DataQualityScan related setting.
  /// [dataScanId] DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  /// [description] Description of the scan.
  /// [displayName] User friendly display name.
  /// [executionSpec] DataScan execution settings.
  /// [labels] User-defined labels for the scan. A list of key->value pairs.
  /// [location] The location where the data scan should reside.
  /// [project] The ID of the project in which the resource belongs.
  DatascanArgs({
    required DatascanData data,
    DatascanDataDiscoverySpec? dataDiscoverySpec,
    Map<String, dynamic>? dataDocumentationSpec,
    DatascanDataProfileSpec? dataProfileSpec,
    DatascanDataQualitySpec? dataQualitySpec,
    required String dataScanId,
    String? description,
    String? displayName,
    required DatascanExecutionSpec executionSpec,
    Map<String, String>? labels,
    required String location,
    String? project,
  })  : data = pulumi.Input.asInput<DatascanData>(data),
        dataDiscoverySpec =
            pulumi.Input.asOptionalInput<DatascanDataDiscoverySpec>(
                dataDiscoverySpec),
        dataDocumentationSpec =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(
                dataDocumentationSpec),
        dataProfileSpec = pulumi.Input.asOptionalInput<DatascanDataProfileSpec>(
            dataProfileSpec),
        dataQualitySpec = pulumi.Input.asOptionalInput<DatascanDataQualitySpec>(
            dataQualitySpec),
        dataScanId = pulumi.Input.asInput<String>(dataScanId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        executionSpec =
            pulumi.Input.asInput<DatascanExecutionSpec>(executionSpec),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      data: DatascanData.fromMap((map['data'] as Map).cast<String, dynamic>()),
      dataDiscoverySpec: map['dataDiscoverySpec'] == null
          ? null
          : DatascanDataDiscoverySpec.fromMap(
              (map['dataDiscoverySpec'] as Map).cast<String, dynamic>()),
      dataDocumentationSpec: map['dataDocumentationSpec'] == null
          ? null
          : (map['dataDocumentationSpec'] as Map).cast<String, dynamic>(),
      dataProfileSpec: map['dataProfileSpec'] == null
          ? null
          : DatascanDataProfileSpec.fromMap(
              (map['dataProfileSpec'] as Map).cast<String, dynamic>()),
      dataQualitySpec: map['dataQualitySpec'] == null
          ? null
          : DatascanDataQualitySpec.fromMap(
              (map['dataQualitySpec'] as Map).cast<String, dynamic>()),
      dataScanId: map['dataScanId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      executionSpec: DatascanExecutionSpec.fromMap(
          (map['executionSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
