// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterCertificate {
  /// The HSM hardware certificate issued (signed) by AWS CloudHSM.
  final String awsHardwareCertificate;

  /// The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
  final String clusterCertificate;

  /// The certificate signing request (CSR). Available only in UNINITIALIZED state.
  final String clusterCsr;

  /// The HSM certificate issued (signed) by the HSM hardware.
  final String hsmCertificate;

  /// The HSM hardware certificate issued (signed) by the hardware manufacturer.
  /// The number of available cluster certificates may vary depending on state of the cluster.
  final String manufacturerHardwareCertificate;

  /// Creates a new [GetClusterClusterCertificate].
  /// [awsHardwareCertificate] The HSM hardware certificate issued (signed) by AWS CloudHSM.
  /// [clusterCertificate] The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.
  /// [clusterCsr] The certificate signing request (CSR). Available only in UNINITIALIZED state.
  /// [hsmCertificate] The HSM certificate issued (signed) by the HSM hardware.
  /// [manufacturerHardwareCertificate] The HSM hardware certificate issued (signed) by the hardware manufacturer.
  GetClusterClusterCertificate({
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
      awsHardwareCertificate: map['awsHardwareCertificate'] as String,
      clusterCertificate: map['clusterCertificate'] as String,
      clusterCsr: map['clusterCsr'] as String,
      hsmCertificate: map['hsmCertificate'] as String,
      manufacturerHardwareCertificate:
          map['manufacturerHardwareCertificate'] as String,
    );
  }
}
