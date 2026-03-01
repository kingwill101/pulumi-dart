// ignore_for_file: unused_element, unnecessary_cast


/// The X12 processing settings.
class X12ProcessingSettingsResponse {
  /// The value indicating whether to convert numerical type to implied decimal.
  final bool convertImpliedDecimal;
  /// The value indicating whether to create empty xml tags for trailing separators.
  final bool createEmptyXmlTagsForTrailingSeparators;
  /// The value indicating whether to mask security information.
  final bool maskSecurityInfo;
  /// The value indicating whether to preserve interchange.
  final bool preserveInterchange;
  /// The value indicating whether to suspend interchange on error.
  final bool suspendInterchangeOnError;
  /// The value indicating whether to use dot as decimal separator.
  final bool useDotAsDecimalSeparator;

  /// Creates a new [X12ProcessingSettingsResponse].
  /// [convertImpliedDecimal] The value indicating whether to convert numerical type to implied decimal.
  /// [createEmptyXmlTagsForTrailingSeparators] The value indicating whether to create empty xml tags for trailing separators.
  /// [maskSecurityInfo] The value indicating whether to mask security information.
  /// [preserveInterchange] The value indicating whether to preserve interchange.
  /// [suspendInterchangeOnError] The value indicating whether to suspend interchange on error.
  /// [useDotAsDecimalSeparator] The value indicating whether to use dot as decimal separator.
  X12ProcessingSettingsResponse({
    required this.convertImpliedDecimal,
    required this.createEmptyXmlTagsForTrailingSeparators,
    required this.maskSecurityInfo,
    required this.preserveInterchange,
    required this.suspendInterchangeOnError,
    required this.useDotAsDecimalSeparator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'convertImpliedDecimal': convertImpliedDecimal,
      'createEmptyXmlTagsForTrailingSeparators': createEmptyXmlTagsForTrailingSeparators,
      'maskSecurityInfo': maskSecurityInfo,
      'preserveInterchange': preserveInterchange,
      'suspendInterchangeOnError': suspendInterchangeOnError,
      'useDotAsDecimalSeparator': useDotAsDecimalSeparator,
    };
  }

  factory X12ProcessingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return X12ProcessingSettingsResponse(
      convertImpliedDecimal: map['convertImpliedDecimal'] as bool,
      createEmptyXmlTagsForTrailingSeparators: map['createEmptyXmlTagsForTrailingSeparators'] as bool,
      maskSecurityInfo: map['maskSecurityInfo'] as bool,
      preserveInterchange: map['preserveInterchange'] as bool,
      suspendInterchangeOnError: map['suspendInterchangeOnError'] as bool,
      useDotAsDecimalSeparator: map['useDotAsDecimalSeparator'] as bool,
    );
  }
}

