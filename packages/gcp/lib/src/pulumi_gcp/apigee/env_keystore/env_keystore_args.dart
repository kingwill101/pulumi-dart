// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EnvKeystore.
class EnvKeystoreArgs {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  final Input<String> envId;

  /// The name of the newly created keystore.
  final Input<String>? name;

  EnvKeystoreArgs({
    required this.envId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envId'] = envId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory EnvKeystoreArgs.fromMap(Map<String, dynamic> map) {
    return EnvKeystoreArgs(
      envId: Input.asInput<String>(map['envId']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
