// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the Allowed Audiences validation flow.
class AllowedAudiencesValidation {
  /// The configuration settings of the allowed list of audiences from which to validate the JWT token.
  final List<String>? allowedAudiences;

  /// Creates a new [AllowedAudiencesValidation].
  /// [allowedAudiences] The configuration settings of the allowed list of audiences from which to validate the JWT token.
  AllowedAudiencesValidation({
    this.allowedAudiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
    };
  }

  factory AllowedAudiencesValidation.fromMap(Map<String, dynamic> map) {
    return AllowedAudiencesValidation(
      allowedAudiences: map['allowedAudiences'] == null ? null : (map['allowedAudiences'] as List).cast<String>(),
    );
  }
}

