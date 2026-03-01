// ignore_for_file: unused_element, unnecessary_cast

class DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder {
  /// The redaction placeholder text that will replace the redacted text in session for the custom text redaction placeholder type.
  final String? redactionPlaceHolderText;

  /// The redaction placeholder type that will replace the redacted text in session. Currently, only `CustomText` is supported.
  final String redactionPlaceHolderType;

  /// Creates a new [DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder].
  /// [redactionPlaceHolderText] The redaction placeholder text that will replace the redacted text in session for the custom text redaction placeholder type.
  /// [redactionPlaceHolderType] The redaction placeholder type that will replace the redacted text in session. Currently, only `CustomText` is supported.
  DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder({
    this.redactionPlaceHolderText,
    required this.redactionPlaceHolderType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redactionPlaceHolderText': ?redactionPlaceHolderText,
      'redactionPlaceHolderType': redactionPlaceHolderType,
    };
  }

  factory DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataProtectionSettingsInlineRedactionConfigurationInlineRedactionPatternRedactionPlaceHolder(
      redactionPlaceHolderText: map['redactionPlaceHolderText'] == null
          ? null
          : map['redactionPlaceHolderText'] as String,
      redactionPlaceHolderType: map['redactionPlaceHolderType'] as String,
    );
  }
}
