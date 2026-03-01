// ignore_for_file: unused_element, unnecessary_cast

import 'standard_web_test_validation_rules_content.dart';

class StandardWebTestValidationRules {
  /// A `content` block as defined above.
  final StandardWebTestValidationRulesContent? content;
  /// The expected status code of the response. Default is '200', '0' means 'response code < 400'
  final int? expectedStatusCode;
  /// The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
  final int? sslCertRemainingLifetime;
  /// Should the SSL check be enabled?
  final bool? sslCheckEnabled;

  /// Creates a new [StandardWebTestValidationRules].
  /// [content] A `content` block as defined above.
  /// [expectedStatusCode] The expected status code of the response. Default is '200', '0' means 'response code < 400'
  /// [sslCertRemainingLifetime] The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
  /// [sslCheckEnabled] Should the SSL check be enabled?
  StandardWebTestValidationRules({
    this.content,
    this.expectedStatusCode,
    this.sslCertRemainingLifetime,
    this.sslCheckEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content == null ? null : content!.toMap(),
      'expectedStatusCode': ?expectedStatusCode,
      'sslCertRemainingLifetime': ?sslCertRemainingLifetime,
      'sslCheckEnabled': ?sslCheckEnabled,
    };
  }

  factory StandardWebTestValidationRules.fromMap(Map<String, dynamic> map) {
    return StandardWebTestValidationRules(
      content: map['content'] == null ? null : StandardWebTestValidationRulesContent.fromMap((map['content'] as Map).cast<String, dynamic>()),
      expectedStatusCode: map['expectedStatusCode'] == null ? null : map['expectedStatusCode'] as int,
      sslCertRemainingLifetime: map['sslCertRemainingLifetime'] == null ? null : map['sslCertRemainingLifetime'] as int,
      sslCheckEnabled: map['sslCheckEnabled'] == null ? null : map['sslCheckEnabled'] as bool,
    );
  }
}

