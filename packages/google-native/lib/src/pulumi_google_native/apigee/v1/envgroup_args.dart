// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Envgroup.
class EnvgroupArgs {
  /// Host names for this environment group.
  final Input<List<String>> hostnames;

  /// ID of the environment group.
  final Input<String>? name;
  final Input<String> organizationId;

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
      hostnames: Input.asInput<List<String>>(map['hostnames']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
