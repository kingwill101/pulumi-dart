// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_metastore.dart';

/// {@template pulumi_dataplex_lake_lake_args_doc}
/// The set of arguments for Lake.
/// {@endtemplate}
/// {@macro pulumi_dataplex_lake_lake_args_doc}
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

  /// Creates a new [LakeArgs].
  /// [description] Optional. Description of the lake.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User-defined labels for the lake.
  /// [location] The location for the resource
  /// [metastore] Optional. Settings to manage lake and Dataproc Metastore service instance association.
  /// [name] The name of the lake.
  /// [project] The project for the resource
  LakeArgs({
    String? description,
    String? displayName,
    Map<String, String>? labels,
    required String location,
    LakeMetastore? metastore,
    String? name,
    String? project,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       metastore = pulumi.Input.asOptionalInput<LakeMetastore>(metastore),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'metastore':
          ?pulumi.Input.mapOptionalInputValue<
            LakeMetastore,
            Map<String, dynamic>
          >(metastore, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
    };
  }

  factory LakeArgs.fromMap(Map<String, dynamic> map) {
    return LakeArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      metastore: map['metastore'] == null
          ? null
          : LakeMetastore.fromMap(
              (map['metastore'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
