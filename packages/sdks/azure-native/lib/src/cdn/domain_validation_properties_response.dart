// ignore_for_file: unused_element, unnecessary_cast


/// The JSON object that contains the properties to validate a domain.
class DomainValidationPropertiesResponse {
  /// The date time that the token expires
  final String expirationDate;
  /// Challenge used for DNS TXT record or file based validation
  final String validationToken;

  /// Creates a new [DomainValidationPropertiesResponse].
  /// [expirationDate] The date time that the token expires
  /// [validationToken] Challenge used for DNS TXT record or file based validation
  DomainValidationPropertiesResponse({
    required this.expirationDate,
    required this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'validationToken': validationToken,
    };
  }

  factory DomainValidationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DomainValidationPropertiesResponse(
      expirationDate: map['expirationDate'] as String,
      validationToken: map['validationToken'] as String,
    );
  }
}

