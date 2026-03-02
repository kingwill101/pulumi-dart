// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_test_properties_response_content_validation.dart';

/// The collection of validation rule properties
class WebTestPropertiesResponseValidationRules {
  /// The collection of content validation properties
  final pulumi.Input<WebTestPropertiesResponseContentValidation>? contentValidation;
  /// Validate that the WebTest returns the http status code provided.
  final pulumi.Input<int>? expectedHttpStatusCode;
  /// When set, validation will ignore the status code.
  final pulumi.Input<bool>? ignoreHttpStatusCode;
  /// A number of days to check still remain before the the existing SSL cert expires.  Value must be positive and the SSLCheck must be set to true.
  final pulumi.Input<int>? sSLCertRemainingLifetimeCheck;
  /// Checks to see if the SSL cert is still valid.
  final pulumi.Input<bool>? sSLCheck;

  /// Creates a new [WebTestPropertiesResponseValidationRules].
  /// [contentValidation] The collection of content validation properties
  /// [expectedHttpStatusCode] Validate that the WebTest returns the http status code provided.
  /// [ignoreHttpStatusCode] When set, validation will ignore the status code.
  /// [sSLCertRemainingLifetimeCheck] A number of days to check still remain before the the existing SSL cert expires.  Value must be positive and the SSLCheck must be set to true.
  /// [sSLCheck] Checks to see if the SSL cert is still valid.
  WebTestPropertiesResponseValidationRules({
    this.contentValidation,
    this.expectedHttpStatusCode,
    this.ignoreHttpStatusCode,
    this.sSLCertRemainingLifetimeCheck,
    this.sSLCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentValidation': ?pulumi.Input.mapOptionalInputValue<WebTestPropertiesResponseContentValidation, Map<String, dynamic>>(contentValidation, (value) => value.toMap()),
      'expectedHttpStatusCode': ?expectedHttpStatusCode,
      'ignoreHttpStatusCode': ?ignoreHttpStatusCode,
      'sSLCertRemainingLifetimeCheck': ?sSLCertRemainingLifetimeCheck,
      'sSLCheck': ?sSLCheck,
    };
  }

  factory WebTestPropertiesResponseValidationRules.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesResponseValidationRules(
      contentValidation: map['contentValidation'] == null ? null : (WebTestPropertiesResponseContentValidation.fromMap((map['contentValidation']! as Map).cast<String, dynamic>())).input(),
      expectedHttpStatusCode: map['expectedHttpStatusCode'] == null ? null : (map['expectedHttpStatusCode']! as int).input(),
      ignoreHttpStatusCode: map['ignoreHttpStatusCode'] == null ? null : (map['ignoreHttpStatusCode']! as bool).input(),
      sSLCertRemainingLifetimeCheck: map['sSLCertRemainingLifetimeCheck'] == null ? null : (map['sSLCertRemainingLifetimeCheck']! as int).input(),
      sSLCheck: map['sSLCheck'] == null ? null : (map['sSLCheck']! as bool).input(),
    );
  }
}

