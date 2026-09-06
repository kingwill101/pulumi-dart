// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The collection of content validation properties
class WebTestPropertiesValidationRulesContentValidationResponse {
  /// Content to look for in the return of the WebTest.  Must not be null or empty.
  final pulumi.Input<String?>? contentMatch;
  /// When set, this value makes the ContentMatch validation case insensitive.
  final pulumi.Input<bool?>? ignoreCase;
  /// When true, validation will pass if there is a match for the ContentMatch string.  If false, validation will fail if there is a match
  final pulumi.Input<bool?>? passIfTextFound;

  /// Creates a new [WebTestPropertiesValidationRulesContentValidationResponse].
  /// [contentMatch] Content to look for in the return of the WebTest.  Must not be null or empty.
  /// [ignoreCase] When set, this value makes the ContentMatch validation case insensitive.
  /// [passIfTextFound] When true, validation will pass if there is a match for the ContentMatch string.  If false, validation will fail if there is a match
  const WebTestPropertiesValidationRulesContentValidationResponse({
    this.contentMatch,
    this.ignoreCase,
    this.passIfTextFound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentMatch': ?contentMatch,
      'ignoreCase': ?ignoreCase,
      'passIfTextFound': ?passIfTextFound,
    };
  }

  factory WebTestPropertiesValidationRulesContentValidationResponse.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesValidationRulesContentValidationResponse(
      contentMatch: (() { final guardedValue = map['contentMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      passIfTextFound: (() { final guardedValue = map['passIfTextFound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
