// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_envgroup_args_doc}
/// The set of arguments for Envgroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_envgroup_args_doc}
class EnvgroupArgs {
  /// Host names for this environment group.
  final pulumi.Input<List<String>> hostnames;

  /// ID of the environment group.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [EnvgroupArgs].
  /// [hostnames] Host names for this environment group.
  /// [name] ID of the environment group.
  /// [organizationId] Required.
  EnvgroupArgs({
    required List<String> hostnames,
    String? name,
    required String organizationId,
  })  : hostnames = pulumi.Input.asInput<List<String>>(hostnames),
        name = pulumi.Input.asOptionalInput<String>(name),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostnames'] = hostnames;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory EnvgroupArgs.fromMap(Map<String, dynamic> map) {
    return EnvgroupArgs(
      hostnames: (map['hostnames'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
