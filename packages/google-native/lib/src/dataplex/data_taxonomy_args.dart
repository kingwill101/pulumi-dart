// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_data_taxonomy_args_doc}
/// The set of arguments for DataTaxonomy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_data_taxonomy_args_doc}
class DataTaxonomyArgs {
  /// Required. DataTaxonomy identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Project.
  final pulumi.Input<String> dataTaxonomyId;

  /// Optional. Description of the DataTaxonomy.
  final pulumi.Input<String>? description;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Optional. User-defined labels for the DataTaxonomy.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [DataTaxonomyArgs].
  /// [dataTaxonomyId] Required. DataTaxonomy identifier. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the Project.
  /// [description] Optional. Description of the DataTaxonomy.
  /// [displayName] Optional. User friendly display name.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] Optional. User-defined labels for the DataTaxonomy.
  /// [location] Optional.
  /// [project] Optional.
  DataTaxonomyArgs({
    required String dataTaxonomyId,
    String? description,
    String? displayName,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? project,
  }) : dataTaxonomyId = pulumi.Input.asInput<String>(dataTaxonomyId),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataTaxonomyId': dataTaxonomyId,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory DataTaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return DataTaxonomyArgs(
      dataTaxonomyId: map['dataTaxonomyId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
