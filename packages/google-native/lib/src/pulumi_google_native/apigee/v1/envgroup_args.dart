// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Envgroup.
class EnvgroupArgs {
  /// Host names for this environment group.
  final pulumi.Input<List<String>> hostnames;

  /// ID of the environment group.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  EnvgroupArgs({
    required this.hostnames,
    this.name,
    required this.organizationId,
  });

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
      hostnames: pulumi.Input.asInput<List<String>>(map['hostnames']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
