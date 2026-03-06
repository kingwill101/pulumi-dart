// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder {
  /// The redaction placeholder text that will replace the redacted text in session for the custom text redaction placeholder type.
  final pulumi.Input<String>? redactionPlaceHolderText;
  /// The redaction placeholder type that will replace the redacted text in session. Currently, only `CustomText` is supported.
  final pulumi.Input<String> redactionPlaceHolderType;

  /// Creates a new [DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder].
  /// [redactionPlaceHolderText] The redaction placeholder text that will replace the redacted text in session for the custom text redaction placeholder type.
  /// [redactionPlaceHolderType] The redaction placeholder type that will replace the redacted text in session. Currently, only `CustomText` is supported.
  const DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder({
    this.redactionPlaceHolderText,
    required this.redactionPlaceHolderType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redactionPlaceHolderText': ?redactionPlaceHolderText,
      'redactionPlaceHolderType': redactionPlaceHolderType,
    };
  }

  factory DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder.fromMap(Map<String, dynamic> map) {
    return DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder(
      redactionPlaceHolderText: (() { final guardedValue = map['redactionPlaceHolderText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redactionPlaceHolderType: pulumi.Input.fromValue(map['redactionPlaceHolderType'] as String),
    );
  }
}

