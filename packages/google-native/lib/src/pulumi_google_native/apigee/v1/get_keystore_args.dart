// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getKeystore.
class GetKeystoreArgs {
  final Input<String> environmentId;
  final Input<String> keystoreId;
  final Input<String> organizationId;

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
      environmentId: Input.asInput<String>(map['environmentId']),
      keystoreId: Input.asInput<String>(map['keystoreId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
