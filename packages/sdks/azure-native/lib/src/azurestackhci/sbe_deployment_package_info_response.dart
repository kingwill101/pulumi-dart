// ignore_for_file: unused_element, unnecessary_cast


/// Solution builder extension (SBE) deployment package information.
class SbeDeploymentPackageInfoResponse {
  /// SBE deployment validation code.
  final String code;
  /// A detailed message that explains the SBE package validation result.
  final String message;
  /// This represents discovered update results for matching updates and store it as SBE manifest.
  final String sbeManifest;

  /// Creates a new [SbeDeploymentPackageInfoResponse].
  /// [code] SBE deployment validation code.
  /// [message] A detailed message that explains the SBE package validation result.
  /// [sbeManifest] This represents discovered update results for matching updates and store it as SBE manifest.
  SbeDeploymentPackageInfoResponse({
    required this.code,
    required this.message,
    required this.sbeManifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'sbeManifest': sbeManifest,
    };
  }

  factory SbeDeploymentPackageInfoResponse.fromMap(Map<String, dynamic> map) {
    return SbeDeploymentPackageInfoResponse(
      code: map['code'] as String,
      message: map['message'] as String,
      sbeManifest: map['sbeManifest'] as String,
    );
  }
}

