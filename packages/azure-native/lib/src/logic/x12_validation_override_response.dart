// ignore_for_file: unused_element, unnecessary_cast


/// The X12 validation override settings.
class X12ValidationOverrideResponse {
  /// The value indicating whether to allow leading and trailing spaces and zeroes.
  final bool allowLeadingAndTrailingSpacesAndZeroes;
  /// The message id on which the validation settings has to be applied.
  final String messageId;
  /// The trailing separator policy.
  final String trailingSeparatorPolicy;
  /// The value indicating whether to trim leading and trailing spaces and zeroes.
  final bool trimLeadingAndTrailingSpacesAndZeroes;
  /// The value indicating whether to validate character Set.
  final bool validateCharacterSet;
  /// The value indicating whether to validate EDI types.
  final bool validateEDITypes;
  /// The value indicating whether to validate XSD types.
  final bool validateXSDTypes;

  /// Creates a new [X12ValidationOverrideResponse].
  /// [allowLeadingAndTrailingSpacesAndZeroes] The value indicating whether to allow leading and trailing spaces and zeroes.
  /// [messageId] The message id on which the validation settings has to be applied.
  /// [trailingSeparatorPolicy] The trailing separator policy.
  /// [trimLeadingAndTrailingSpacesAndZeroes] The value indicating whether to trim leading and trailing spaces and zeroes.
  /// [validateCharacterSet] The value indicating whether to validate character Set.
  /// [validateEDITypes] The value indicating whether to validate EDI types.
  /// [validateXSDTypes] The value indicating whether to validate XSD types.
  X12ValidationOverrideResponse({
    required this.allowLeadingAndTrailingSpacesAndZeroes,
    required this.messageId,
    required this.trailingSeparatorPolicy,
    required this.trimLeadingAndTrailingSpacesAndZeroes,
    required this.validateCharacterSet,
    required this.validateEDITypes,
    required this.validateXSDTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLeadingAndTrailingSpacesAndZeroes': allowLeadingAndTrailingSpacesAndZeroes,
      'messageId': messageId,
      'trailingSeparatorPolicy': trailingSeparatorPolicy,
      'trimLeadingAndTrailingSpacesAndZeroes': trimLeadingAndTrailingSpacesAndZeroes,
      'validateCharacterSet': validateCharacterSet,
      'validateEDITypes': validateEDITypes,
      'validateXSDTypes': validateXSDTypes,
    };
  }

  factory X12ValidationOverrideResponse.fromMap(Map<String, dynamic> map) {
    return X12ValidationOverrideResponse(
      allowLeadingAndTrailingSpacesAndZeroes: map['allowLeadingAndTrailingSpacesAndZeroes'] as bool,
      messageId: map['messageId'] as String,
      trailingSeparatorPolicy: map['trailingSeparatorPolicy'] as String,
      trimLeadingAndTrailingSpacesAndZeroes: map['trimLeadingAndTrailingSpacesAndZeroes'] as bool,
      validateCharacterSet: map['validateCharacterSet'] as bool,
      validateEDITypes: map['validateEDITypes'] as bool,
      validateXSDTypes: map['validateXSDTypes'] as bool,
    );
  }
}

