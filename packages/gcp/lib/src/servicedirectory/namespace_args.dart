// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Resource labels associated with this Namespace. No more than 64 user
  /// labels can be associated with a given resource. Label keys and values can
  /// be no longer than 63 characters.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the Namespace.
  final pulumi.Input<String> location;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final pulumi.Input<String> namespaceId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [NamespaceArgs].
  /// [labels] Resource labels associated with this Namespace. No more than 64 user
  /// [location] The location for the Namespace.
  /// [namespaceId] The Resource ID must be 1-63 characters long, including digits,
  /// [project] The ID of the project in which the resource belongs.
  NamespaceArgs({
    Map<String, String>? labels,
    required String location,
    required String namespaceId,
    String? project,
  }) : labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       namespaceId = pulumi.Input.asInput<String>(namespaceId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
