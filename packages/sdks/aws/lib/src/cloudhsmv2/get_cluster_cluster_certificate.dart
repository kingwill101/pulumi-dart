// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterClusterCertificate {
  /// The HSM hardware certificate issued (signed) by AWS CloudHSM.
  final pulumi.Input<String> awsHardwareCertificate;
  /// The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
  final pulumi.Input<String> clusterCertificate;
  /// The certificate signing request (CSR). Available only in UNINITIALIZED state.
  final pulumi.Input<String> clusterCsr;
  /// The HSM certificate issued (signed) by the HSM hardware.
  final pulumi.Input<String> hsmCertificate;
  /// The HSM hardware certificate issued (signed) by the hardware manufacturer.
  /// The number of available cluster certificates may vary depending on state of the cluster.
  final pulumi.Input<String> manufacturerHardwareCertificate;

  /// Creates a new [GetClusterClusterCertificate].
  /// [awsHardwareCertificate] The HSM hardware certificate issued (signed) by AWS CloudHSM.
  /// [clusterCertificate] The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
  /// [clusterCsr] The certificate signing request (CSR). Available only in UNINITIALIZED state.
  /// [hsmCertificate] The HSM certificate issued (signed) by the HSM hardware.
  /// [manufacturerHardwareCertificate] The HSM hardware certificate issued (signed) by the hardware manufacturer.
  const GetClusterClusterCertificate({
    required this.awsHardwareCertificate,
    required this.clusterCertificate,
    required this.clusterCsr,
    required this.hsmCertificate,
    required this.manufacturerHardwareCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsHardwareCertificate': awsHardwareCertificate,
      'clusterCertificate': clusterCertificate,
      'clusterCsr': clusterCsr,
      'hsmCertificate': hsmCertificate,
      'manufacturerHardwareCertificate': manufacturerHardwareCertificate,
    };
  }

  factory GetClusterClusterCertificate.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterCertificate(
      awsHardwareCertificate: pulumi.Input.fromValue(map['awsHardwareCertificate'] as String),
      clusterCertificate: pulumi.Input.fromValue(map['clusterCertificate'] as String),
      clusterCsr: pulumi.Input.fromValue(map['clusterCsr'] as String),
      hsmCertificate: pulumi.Input.fromValue(map['hsmCertificate'] as String),
      manufacturerHardwareCertificate: pulumi.Input.fromValue(map['manufacturerHardwareCertificate'] as String),
    );
  }
}

