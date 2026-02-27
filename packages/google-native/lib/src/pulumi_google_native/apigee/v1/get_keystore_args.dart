// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKeystore.
class GetKeystoreArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keystoreId;
  final pulumi.Input<String> organizationId;

  GetKeystoreArgs({
    required this.environmentId,
    required this.keystoreId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['keystoreId'] = keystoreId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetKeystoreArgs.fromMap(Map<String, dynamic> map) {
    return GetKeystoreArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      keystoreId: pulumi.Input.asInput<String>(map['keystoreId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
