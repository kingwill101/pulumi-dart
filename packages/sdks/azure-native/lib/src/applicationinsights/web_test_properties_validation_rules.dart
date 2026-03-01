// ignore_for_file: unused_element, unnecessary_cast

import 'web_test_properties_content_validation.dart';

/// The collection of validation rule properties
class WebTestPropertiesValidationRules {
  /// The collection of content validation properties
  final WebTestPropertiesContentValidation? contentValidation;
  /// Validate that the WebTest returns the http status code provided.
  final int? expectedHttpStatusCode;
  /// When set, validation will ignore the status code.
  final bool? ignoreHttpStatusCode;
  /// A number of days to check still remain before the the existing SSL cert expires.  Value must be positive and the SSLCheck must be set to true.
  final int? sSLCertRemainingLifetimeCheck;
  /// Checks to see if the SSL cert is still valid.
  final bool? sSLCheck;

  /// Creates a new [WebTestPropertiesValidationRules].
  /// [contentValidation] The collection of content validation properties
  /// [expectedHttpStatusCode] Validate that the WebTest returns the http status code provided.
  /// [ignoreHttpStatusCode] When set, validation will ignore the status code.
  /// [sSLCertRemainingLifetimeCheck] A number of days to check still remain before the the existing SSL cert expires.  Value must be positive and the SSLCheck must be set to true.
  /// [sSLCheck] Checks to see if the SSL cert is still valid.
  WebTestPropertiesValidationRules({
    this.contentValidation,
    this.expectedHttpStatusCode,
    this.ignoreHttpStatusCode,
    this.sSLCertRemainingLifetimeCheck,
    this.sSLCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentValidation': ?contentValidation == null ? null : contentValidation!.toMap(),
      'expectedHttpStatusCode': ?expectedHttpStatusCode,
      'ignoreHttpStatusCode': ?ignoreHttpStatusCode,
      'sSLCertRemainingLifetimeCheck': ?sSLCertRemainingLifetimeCheck,
      'sSLCheck': ?sSLCheck,
    };
  }

  factory WebTestPropertiesValidationRules.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesValidationRules(
      contentValidation: map['contentValidation'] == null ? null : WebTestPropertiesContentValidation.fromMap((map['contentValidation'] as Map).cast<String, dynamic>()),
      expectedHttpStatusCode: map['expectedHttpStatusCode'] == null ? null : map['expectedHttpStatusCode'] as int,
      ignoreHttpStatusCode: map['ignoreHttpStatusCode'] == null ? null : map['ignoreHttpStatusCode'] as bool,
      sSLCertRemainingLifetimeCheck: map['sSLCertRemainingLifetimeCheck'] == null ? null : map['sSLCertRemainingLifetimeCheck'] as int,
      sSLCheck: map['sSLCheck'] == null ? null : map['sSLCheck'] as bool,
    );
  }
}

