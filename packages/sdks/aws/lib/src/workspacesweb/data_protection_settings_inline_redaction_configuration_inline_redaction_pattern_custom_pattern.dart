// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern {
  /// The keyword regex for the customer pattern.
  final pulumi.Input<String>? keywordRegex;

  /// The pattern description for the customer pattern.
  final pulumi.Input<String>? patternDescription;

  /// The pattern name for the custom pattern.
  final pulumi.Input<String> patternName;

  /// The pattern regex for the customer pattern. The format must follow JavaScript regex format.
  final pulumi.Input<String> patternRegex;

  /// Creates a new [DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern].
  /// [keywordRegex] The keyword regex for the customer pattern.
  /// [patternDescription] The pattern description for the customer pattern.
  /// [patternName] The pattern name for the custom pattern.
  /// [patternRegex] The pattern regex for the customer pattern. The format must follow JavaScript regex format.
  DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern({
    this.keywordRegex,
    this.patternDescription,
    required this.patternName,
    required this.patternRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keywordRegex': ?keywordRegex,
      'patternDescription': ?patternDescription,
      'patternName': patternName,
      'patternRegex': patternRegex,
    };
  }

  factory DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternCustomPattern(
      keywordRegex: (() {
        final guardedValue = map['keywordRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      patternDescription: (() {
        final guardedValue = map['patternDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      patternName: pulumi.Input.fromValue(map['patternName'] as String),
      patternRegex: pulumi.Input.fromValue(map['patternRegex'] as String),
    );
  }
}
