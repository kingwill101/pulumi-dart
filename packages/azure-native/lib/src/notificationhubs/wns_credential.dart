// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub WnsCredential.
class WnsCredential {
  /// Ges or sets the WNS Certificate Key.
  final String? certificateKey;
  /// Gets or sets the package ID for this credential.
  final String? packageSid;
  /// Gets or sets the secret key.
  final String? secretKey;
  /// Gets or sets the Windows Live endpoint.
  final String? windowsLiveEndpoint;
  /// Gets or sets the WNS Certificate.
  final String? wnsCertificate;

  /// Creates a new [WnsCredential].
  /// [certificateKey] Ges or sets the WNS Certificate Key.
  /// [packageSid] Gets or sets the package ID for this credential.
  /// [secretKey] Gets or sets the secret key.
  /// [windowsLiveEndpoint] Gets or sets the Windows Live endpoint.
  /// [wnsCertificate] Gets or sets the WNS Certificate.
  WnsCredential({
    this.certificateKey,
    this.packageSid,
    this.secretKey,
    this.windowsLiveEndpoint,
    this.wnsCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKey': ?certificateKey,
      'packageSid': ?packageSid,
      'secretKey': ?secretKey,
      'windowsLiveEndpoint': ?windowsLiveEndpoint,
      'wnsCertificate': ?wnsCertificate,
    };
  }

  factory WnsCredential.fromMap(Map<String, dynamic> map) {
    return WnsCredential(
      certificateKey: map['certificateKey'] == null ? null : map['certificateKey'] as String,
      packageSid: map['packageSid'] == null ? null : map['packageSid'] as String,
      secretKey: map['secretKey'] == null ? null : map['secretKey'] as String,
      windowsLiveEndpoint: map['windowsLiveEndpoint'] == null ? null : map['windowsLiveEndpoint'] as String,
      wnsCertificate: map['wnsCertificate'] == null ? null : map['wnsCertificate'] as String,
    );
  }
}

