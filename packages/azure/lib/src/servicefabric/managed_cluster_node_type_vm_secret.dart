// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_node_type_vm_secret_certificate.dart';

class ManagedClusterNodeTypeVmSecret {
  /// One or more `certificates` blocks as defined above.
  final List<ManagedClusterNodeTypeVmSecretCertificate> certificates;
  /// The ID of the Vault that contain the certificates.
  final String vaultId;

  /// Creates a new [ManagedClusterNodeTypeVmSecret].
  /// [certificates] One or more `certificates` blocks as defined above.
  /// [vaultId] The ID of the Vault that contain the certificates.
  ManagedClusterNodeTypeVmSecret({
    required this.certificates,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<ManagedClusterNodeTypeVmSecretCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'vaultId': vaultId,
    };
  }

  factory ManagedClusterNodeTypeVmSecret.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNodeTypeVmSecret(
      certificates: pulumi.Input.decodeList<ManagedClusterNodeTypeVmSecretCertificate>(map['certificates'], (value) => ManagedClusterNodeTypeVmSecretCertificate.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: map['vaultId'] as String,
    );
  }
}

