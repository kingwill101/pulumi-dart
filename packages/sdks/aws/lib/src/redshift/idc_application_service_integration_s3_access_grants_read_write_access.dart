// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess {
  /// Determines whether read/write scope is enabled or disabled.
  final pulumi.Input<String> authorization;

  /// Creates a new [IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess].
  /// [authorization] Determines whether read/write scope is enabled or disabled.
  const IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess({
    required this.authorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': authorization,
    };
  }

  factory IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess.fromMap(Map<String, dynamic> map) {
    return IdcApplicationServiceIntegrationS3AccessGrantsReadWriteAccess(
      authorization: pulumi.Input.fromValue(map['authorization'] as String),
    );
  }
}

