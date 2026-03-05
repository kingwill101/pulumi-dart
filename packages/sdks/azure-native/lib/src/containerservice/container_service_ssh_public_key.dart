// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about SSH certificate public key data.
class ContainerServiceSshPublicKey {
  /// Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers.
  final pulumi.Input<String> keyData;

  /// Creates a new [ContainerServiceSshPublicKey].
  /// [keyData] Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers.
  ContainerServiceSshPublicKey({
    required this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': keyData,
    };
  }

  factory ContainerServiceSshPublicKey.fromMap(Map<String, dynamic> map) {
    return ContainerServiceSshPublicKey(
      keyData: pulumi.Input.fromValue(map['keyData'] as String),
    );
  }
}

