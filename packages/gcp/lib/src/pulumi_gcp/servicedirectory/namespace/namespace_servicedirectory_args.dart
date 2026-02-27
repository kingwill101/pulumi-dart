// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Namespace.
class NamespaceServicedirectoryArgs {
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

  NamespaceServicedirectoryArgs({
    this.labels,
    required this.location,
    required this.namespaceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory NamespaceServicedirectoryArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceServicedirectoryArgs(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
