// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Repository.
class RepositoryCloudbuildv2Args {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The location for the resource
  final pulumi.Input<String>? location;

  /// Name of the repository.
  final pulumi.Input<String>? name;

  /// The connection for the resource
  final pulumi.Input<String> parentConnection;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Required. Git Clone HTTPS URI.
  final pulumi.Input<String> remoteUri;

  RepositoryCloudbuildv2Args({
    this.annotations,
    this.location,
    this.name,
    required this.parentConnection,
    this.project,
    required this.remoteUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parentConnection'] = parentConnection;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['remoteUri'] = remoteUri;
    return map;
  }

  factory RepositoryCloudbuildv2Args.fromMap(Map<String, dynamic> map) {
    return RepositoryCloudbuildv2Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentConnection: pulumi.Input.asInput<String>(map['parentConnection']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      remoteUri: pulumi.Input.asInput<String>(map['remoteUri']),
    );
  }
}
