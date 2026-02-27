// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_lake_metastore.dart';

/// The set of arguments for Lake.
class LakeArgs {
  /// Optional. Description of the lake.
  final pulumi.Input<String>? description;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Optional. User-defined labels for the lake.
  final pulumi.Input<Map<String, String>>? labels;

  /// Required. Lake identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the customer project / location.
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;

  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  final pulumi.Input<GoogleCloudDataplexV1LakeMetastore>? metastore;
  final pulumi.Input<String>? project;

  LakeArgs({
    this.description,
    this.displayName,
    this.labels,
    required this.lakeId,
    this.location,
    this.metastore,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lakeId'] = lakeId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metastoreValue = metastore;
    if (metastoreValue != null) {
      map['metastore'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1LakeMetastore,
          Map<String, dynamic>>(metastoreValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory LakeArgs.fromMap(Map<String, dynamic> map) {
    return LakeArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metastore:
          pulumi.Input.asOptionalInput<GoogleCloudDataplexV1LakeMetastore>(
              map['metastore']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
