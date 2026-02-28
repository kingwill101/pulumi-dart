// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_resourcefile_args_doc}
/// Arguments for getResourcefile.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_resourcefile_args_doc}
class GetResourcefileArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> name;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> type;

  /// Creates a new [GetResourcefileArgs].
  /// [environmentId] Required.
  /// [name] Required.
  /// [organizationId] Required.
  /// [type] Required.
  GetResourcefileArgs({
    required String environmentId,
    required String name,
    required String organizationId,
    required String type,
  })  : environmentId = pulumi.Input.asInput<String>(environmentId),
        name = pulumi.Input.asInput<String>(name),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['name'] = name;
    map['organizationId'] = organizationId;
    map['type'] = type;
    return map;
  }

  factory GetResourcefileArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcefileArgs(
      environmentId: map['environmentId'] as String,
      name: map['name'] as String,
      organizationId: map['organizationId'] as String,
      type: map['type'] as String,
    );
  }
}
