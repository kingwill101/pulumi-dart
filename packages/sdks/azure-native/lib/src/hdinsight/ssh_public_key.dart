// ignore_for_file: unused_element, unnecessary_cast


/// The SSH public key for the cluster nodes.
class SshPublicKey {
  /// The certificate for SSH.
  final String? certificateData;

  /// Creates a new [SshPublicKey].
  /// [certificateData] The certificate for SSH.
  SshPublicKey({
    this.certificateData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateData': ?certificateData,
    };
  }

  factory SshPublicKey.fromMap(Map<String, dynamic> map) {
    return SshPublicKey(
      certificateData: map['certificateData'] == null ? null : map['certificateData'] as String,
    );
  }
}

