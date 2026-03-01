// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_certificate_map_certificate_map_args_doc}
/// The set of arguments for CertificateMap.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_certificate_map_certificate_map_args_doc}
class CertificateMapArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;

  /// Set of labels associated with a Certificate Map resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// A user-defined name of the Certificate Map. Certificate Map names must be unique
  /// globally and match the pattern `projects/*/locations/*/certificateMaps/*`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CertificateMapArgs].
  /// [description] A human-readable description of the resource.
  /// [labels] Set of labels associated with a Certificate Map resource.
  /// [name] A user-defined name of the Certificate Map. Certificate Map names must be unique
  /// [project] The ID of the project in which the resource belongs.
  CertificateMapArgs({
    String? description,
    Map<String, String>? labels,
    String? name,
    String? project,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CertificateMapArgs.fromMap(Map<String, dynamic> map) {
    return CertificateMapArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
