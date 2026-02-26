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

  GetClusterClusterCertificate({
    required this.awsHardwareCertificate,
    required this.clusterCertificate,
    required this.clusterCsr,
    required this.hsmCertificate,
    required this.manufacturerHardwareCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsHardwareCertificate'] = awsHardwareCertificate;
    map['clusterCertificate'] = clusterCertificate;
    map['clusterCsr'] = clusterCsr;
    map['hsmCertificate'] = hsmCertificate;
    map['manufacturerHardwareCertificate'] = manufacturerHardwareCertificate;
    return map;
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
