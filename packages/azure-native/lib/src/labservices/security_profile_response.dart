// ignore_for_file: unused_element, unnecessary_cast


/// The lab security profile.
class SecurityProfileResponse {
  /// Whether any user or only specified users can register to a lab.
  final String? openAccess;
  /// The registration code for the lab.
  final String registrationCode;

  /// Creates a new [SecurityProfileResponse].
  /// [openAccess] Whether any user or only specified users can register to a lab.
  /// [registrationCode] The registration code for the lab.
  SecurityProfileResponse({
    this.openAccess,
    required this.registrationCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAccess': ?openAccess,
      'registrationCode': registrationCode,
    };
  }

  factory SecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return SecurityProfileResponse(
      openAccess: map['openAccess'] == null ? null : map['openAccess'] as String,
      registrationCode: map['registrationCode'] as String,
    );
  }
}

