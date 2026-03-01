// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterCertificate {
  /// The HSM hardware certificate issued (signed) by AWS CloudHSM.
  final String? awsHardwareCertificate;

  /// The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
  final String? clusterCertificate;

  /// The certificate signing request (CSR). Available only in `UNINITIALIZED` state after an HSM instance is added to the cluster.
  final String? clusterCsr;

  /// The HSM certificate issued (signed) by the HSM hardware.
  final String? hsmCertificate;

  /// The HSM hardware certificate issued (signed) by the hardware manufacturer.
  final String? manufacturerHardwareCertificate;

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
      awsHardwareCertificate: map['awsHardwareCertificate'] == null
          ? null
          : map['awsHardwareCertificate'] as String,
      clusterCertificate: map['clusterCertificate'] == null
          ? null
          : map['clusterCertificate'] as String,
      clusterCsr: map['clusterCsr'] == null
          ? null
          : map['clusterCsr'] as String,
      hsmCertificate: map['hsmCertificate'] == null
          ? null
          : map['hsmCertificate'] as String,
      manufacturerHardwareCertificate:
          map['manufacturerHardwareCertificate'] == null
          ? null
          : map['manufacturerHardwareCertificate'] as String,
    );
  }
}
