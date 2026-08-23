// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The JSON object that contains the properties to validate a domain.
class DomainValidationPropertiesResponse {
  /// The date time that the token expires
  final pulumi.Input<String> expirationDate;
  /// Challenge used for DNS TXT record or file based validation
  final pulumi.Input<String> validationToken;

  /// Creates a new [DomainValidationPropertiesResponse].
  /// [expirationDate] The date time that the token expires
  /// [validationToken] Challenge used for DNS TXT record or file based validation
  const DomainValidationPropertiesResponse({
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
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      validationToken: pulumi.Input.fromValue(map['validationToken'] as String),
    );
  }
}
