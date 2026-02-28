// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1beta1_namespace_servicedirectory_v1beta1_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1beta1_namespace_servicedirectory_v1beta1_args_doc}
class NamespaceServicedirectoryV1beta1Args {
  /// Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  final pulumi.Input<String>? name;
  /// Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;

  /// Creates a new [NamespaceServicedirectoryV1beta1Args].
  /// [labels] Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  /// [location] Optional.
  /// [name] Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  /// [namespaceId] Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  NamespaceServicedirectoryV1beta1Args({
    Map<String, String>? labels,
    String? location,
    String? name,
    required String namespaceId,
    String? project,
  }) :
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceId = pulumi.Input.asInput<String>(namespaceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'namespaceId': namespaceId,
      'project': ?project,
    };
  }

  factory NamespaceServicedirectoryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return NamespaceServicedirectoryV1beta1Args(
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

