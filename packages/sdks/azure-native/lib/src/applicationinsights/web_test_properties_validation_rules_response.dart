// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_test_properties_validation_rules_content_validation_response.dart';

/// The collection of validation rule properties
class WebTestPropertiesValidationRulesResponse {
  /// The collection of content validation properties
  final pulumi.Input<WebTestPropertiesValidationRulesContentValidationResponse?>? contentValidation;
  /// Validate that the WebTest returns the http status code provided.
  final pulumi.Input<int?>? expectedHttpStatusCode;
  /// When set, validation will ignore the status code.
  final pulumi.Input<bool?>? ignoreHttpStatusCode;
  /// A number of days to check still remain before the the existing SSL cert expires.  Value must be positive and the SSLCheck must be set to true.
  final pulumi.Input<int?>? sSLCertRemainingLifetimeCheck;
  /// Checks to see if the SSL cert is still valid.
  final pulumi.Input<bool?>? sSLCheck;

  /// Creates a new [WebTestPropertiesValidationRulesResponse].
  /// [contentValidation] The collection of content validation properties
  /// [expectedHttpStatusCode] Validate that the WebTest returns the http status code provided.
  /// [ignoreHttpStatusCode] When set, validation will ignore the status code.
  /// [sSLCertRemainingLifetimeCheck] A number of days to check still remain before the the existing SSL cert expires.  Value must be positive and the SSLCheck must be set to true.
  /// [sSLCheck] Checks to see if the SSL cert is still valid.
  const WebTestPropertiesValidationRulesResponse({
    this.contentValidation,
    this.expectedHttpStatusCode,
    this.ignoreHttpStatusCode,
    this.sSLCertRemainingLifetimeCheck,
    this.sSLCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentValidation': ?pulumi.Input.mapOptionalInputValue<WebTestPropertiesValidationRulesContentValidationResponse, Map<String, dynamic>>(contentValidation, (value) => value.toMap()),
      'expectedHttpStatusCode': ?expectedHttpStatusCode,
      'ignoreHttpStatusCode': ?ignoreHttpStatusCode,
      'sSLCertRemainingLifetimeCheck': ?sSLCertRemainingLifetimeCheck,
      'sSLCheck': ?sSLCheck,
    };
  }

  factory WebTestPropertiesValidationRulesResponse.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesValidationRulesResponse(
      contentValidation: (() { final guardedValue = map['contentValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebTestPropertiesValidationRulesContentValidationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expectedHttpStatusCode: (() { final guardedValue = map['expectedHttpStatusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ignoreHttpStatusCode: (() { final guardedValue = map['ignoreHttpStatusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sSLCertRemainingLifetimeCheck: (() { final guardedValue = map['sSLCertRemainingLifetimeCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sSLCheck: (() { final guardedValue = map['sSLCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
