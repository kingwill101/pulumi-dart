// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudiot_v1_get_registry_args_doc}
/// Arguments for getRegistry.
/// {@endtemplate}
/// {@macro pulumi_cloudiot_v1_get_registry_args_doc}
class GetRegistryArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registryId;

  /// Creates a new [GetRegistryArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [registryId] Required.
  GetRegistryArgs({
    required String location,
    String? project,
    required String registryId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        registryId = pulumi.Input.asInput<String>(registryId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['registryId'] = registryId;
    return map;
  }

  factory GetRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      registryId: map['registryId'] as String,
    );
  }
}
