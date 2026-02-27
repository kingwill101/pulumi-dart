// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvGroup.
class EnvGroupArgs {
  /// Hostnames of the environment group.
  final pulumi.Input<List<String>>? hostnames;

  /// The resource ID of the environment group.
  final pulumi.Input<String>? name;

  /// The Apigee Organization associated with the Apigee environment group,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;

  EnvGroupArgs({
    this.hostnames,
    this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostnamesValue = hostnames;
    if (hostnamesValue != null) {
      map['hostnames'] = hostnamesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['orgId'] = orgId;
    return map;
  }

  factory EnvGroupArgs.fromMap(Map<String, dynamic> map) {
    return EnvGroupArgs(
      hostnames: pulumi.Input.asOptionalInput<List<String>>(map['hostnames']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      orgId: pulumi.Input.asInput<String>(map['orgId']),
    );
  }
}
