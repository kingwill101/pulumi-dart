// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_ssh_public_key.dart';

/// SSH configuration for Linux-based VMs running on Azure.
class ContainerServiceSshConfiguration {
  /// The list of SSH public keys used to authenticate with Linux-based VMs. A maximum of 1 key may be specified.
  final List<ContainerServiceSshPublicKey> publicKeys;

  /// Creates a new [ContainerServiceSshConfiguration].
  /// [publicKeys] The list of SSH public keys used to authenticate with Linux-based VMs. A maximum of 1 key may be specified.
  ContainerServiceSshConfiguration({
    required this.publicKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeys': pulumi.Input.encodeList<ContainerServiceSshPublicKey, Map<String, dynamic>>(publicKeys, (value) => value.toMap()),
    };
  }

  factory ContainerServiceSshConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerServiceSshConfiguration(
      publicKeys: pulumi.Input.decodeList<ContainerServiceSshPublicKey>(map['publicKeys'], (value) => ContainerServiceSshPublicKey.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

