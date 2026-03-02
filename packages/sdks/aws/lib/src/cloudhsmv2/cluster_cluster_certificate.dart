// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterCertificate {
  /// The HSM hardware certificate issued (signed) by AWS CloudHSM.
  final pulumi.Input<String>? awsHardwareCertificate;
  /// The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
  final pulumi.Input<String>? clusterCertificate;
  /// The certificate signing request (CSR). Available only in `UNINITIALIZED` state after an HSM instance is added to the cluster.
  final pulumi.Input<String>? clusterCsr;
  /// The HSM certificate issued (signed) by the HSM hardware.
  final pulumi.Input<String>? hsmCertificate;
  /// The HSM hardware certificate issued (signed) by the hardware manufacturer.
  final pulumi.Input<String>? manufacturerHardwareCertificate;

  /// Creates a new [ClusterClusterCertificate].
  /// [awsHardwareCertificate] The HSM hardware certificate issued (signed) by AWS CloudHSM.
  /// [clusterCertificate] The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
  /// [clusterCsr] The certificate signing request (CSR). Available only in `UNINITIALIZED` state after an HSM instance is added to the cluster.
  /// [hsmCertificate] The HSM certificate issued (signed) by the HSM hardware.
  /// [manufacturerHardwareCertificate] The HSM hardware certificate issued (signed) by the hardware manufacturer.
  ClusterClusterCertificate({
    this.awsHardwareCertificate,
    this.clusterCertificate,
    this.clusterCsr,
    this.hsmCertificate,
    this.manufacturerHardwareCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsHardwareCertificate': ?awsHardwareCertificate,
      'clusterCertificate': ?clusterCertificate,
      'clusterCsr': ?clusterCsr,
      'hsmCertificate': ?hsmCertificate,
      'manufacturerHardwareCertificate': ?manufacturerHardwareCertificate,
    };
  }

  factory ClusterClusterCertificate.fromMap(Map<String, dynamic> map) {
    return ClusterClusterCertificate(
      awsHardwareCertificate: map['awsHardwareCertificate'] == null ? null : ((map['awsHardwareCertificate'] as String).input()).input(),
      clusterCertificate: map['clusterCertificate'] == null ? null : ((map['clusterCertificate'] as String).input()).input(),
      clusterCsr: map['clusterCsr'] == null ? null : ((map['clusterCsr'] as String).input()).input(),
      hsmCertificate: map['hsmCertificate'] == null ? null : ((map['hsmCertificate'] as String).input()).input(),
      manufacturerHardwareCertificate: map['manufacturerHardwareCertificate'] == null ? null : ((map['manufacturerHardwareCertificate'] as String).input()).input(),
    );
  }
}

