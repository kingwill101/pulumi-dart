// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../lake_metastore/lake_metastore.dart';

/// The set of arguments for Lake.
class LakeArgs {
  /// Optional. Description of the lake.
  final pulumi.Input<String>? description;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Optional. User-defined labels for the lake.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  final pulumi.Input<LakeMetastore>? metastore;

  /// The name of the lake.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;

  /// The project for the resource
  final pulumi.Input<String>? project;

  LakeArgs({
    this.description,
    this.displayName,
    this.labels,
    required this.location,
    this.metastore,
    this.name,
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
    map['location'] = location;
    final metastoreValue = metastore;
    if (metastoreValue != null) {
      map['metastore'] = pulumi.Input.mapOptionalInputValue<LakeMetastore,
          Map<String, dynamic>>(metastoreValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
      location: pulumi.Input.asInput<String>(map['location']),
      metastore: pulumi.Input.asOptionalInput<LakeMetastore>(map['metastore']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
