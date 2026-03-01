// ignore_for_file: unused_element, unnecessary_cast


/// The X12 agreement validation settings.
class X12ValidationSettings {
  /// The value indicating whether to allow leading and trailing spaces and zeroes.
  final bool allowLeadingAndTrailingSpacesAndZeroes;
  /// The value indicating whether to check for duplicate group control number.
  final bool checkDuplicateGroupControlNumber;
  /// The value indicating whether to check for duplicate interchange control number.
  final bool checkDuplicateInterchangeControlNumber;
  /// The value indicating whether to check for duplicate transaction set control number.
  final bool checkDuplicateTransactionSetControlNumber;
  /// The validity period of interchange control number.
  final int interchangeControlNumberValidityDays;
  /// The trailing separator policy.
  final String trailingSeparatorPolicy;
  /// The value indicating whether to trim leading and trailing spaces and zeroes.
  final bool trimLeadingAndTrailingSpacesAndZeroes;
  /// The value indicating whether to validate character set in the message.
  final bool validateCharacterSet;
  /// The value indicating whether to Whether to validate EDI types.
  final bool validateEDITypes;
  /// The value indicating whether to Whether to validate XSD types.
  final bool validateXSDTypes;

  /// Creates a new [X12ValidationSettings].
  /// [allowLeadingAndTrailingSpacesAndZeroes] The value indicating whether to allow leading and trailing spaces and zeroes.
  /// [checkDuplicateGroupControlNumber] The value indicating whether to check for duplicate group control number.
  /// [checkDuplicateInterchangeControlNumber] The value indicating whether to check for duplicate interchange control number.
  /// [checkDuplicateTransactionSetControlNumber] The value indicating whether to check for duplicate transaction set control number.
  /// [interchangeControlNumberValidityDays] The validity period of interchange control number.
  /// [trailingSeparatorPolicy] The trailing separator policy.
  /// [trimLeadingAndTrailingSpacesAndZeroes] The value indicating whether to trim leading and trailing spaces and zeroes.
  /// [validateCharacterSet] The value indicating whether to validate character set in the message.
  /// [validateEDITypes] The value indicating whether to Whether to validate EDI types.
  /// [validateXSDTypes] The value indicating whether to Whether to validate XSD types.
  X12ValidationSettings({
    required this.allowLeadingAndTrailingSpacesAndZeroes,
    required this.checkDuplicateGroupControlNumber,
    required this.checkDuplicateInterchangeControlNumber,
    required this.checkDuplicateTransactionSetControlNumber,
    required this.interchangeControlNumberValidityDays,
    required this.trailingSeparatorPolicy,
    required this.trimLeadingAndTrailingSpacesAndZeroes,
    required this.validateCharacterSet,
    required this.validateEDITypes,
    required this.validateXSDTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLeadingAndTrailingSpacesAndZeroes': allowLeadingAndTrailingSpacesAndZeroes,
      'checkDuplicateGroupControlNumber': checkDuplicateGroupControlNumber,
      'checkDuplicateInterchangeControlNumber': checkDuplicateInterchangeControlNumber,
      'checkDuplicateTransactionSetControlNumber': checkDuplicateTransactionSetControlNumber,
      'interchangeControlNumberValidityDays': interchangeControlNumberValidityDays,
      'trailingSeparatorPolicy': trailingSeparatorPolicy,
      'trimLeadingAndTrailingSpacesAndZeroes': trimLeadingAndTrailingSpacesAndZeroes,
      'validateCharacterSet': validateCharacterSet,
      'validateEDITypes': validateEDITypes,
      'validateXSDTypes': validateXSDTypes,
    };
  }

  factory X12ValidationSettings.fromMap(Map<String, dynamic> map) {
    return X12ValidationSettings(
      allowLeadingAndTrailingSpacesAndZeroes: map['allowLeadingAndTrailingSpacesAndZeroes'] as bool,
      checkDuplicateGroupControlNumber: map['checkDuplicateGroupControlNumber'] as bool,
      checkDuplicateInterchangeControlNumber: map['checkDuplicateInterchangeControlNumber'] as bool,
      checkDuplicateTransactionSetControlNumber: map['checkDuplicateTransactionSetControlNumber'] as bool,
      interchangeControlNumberValidityDays: map['interchangeControlNumberValidityDays'] as int,
      trailingSeparatorPolicy: map['trailingSeparatorPolicy'] as String,
      trimLeadingAndTrailingSpacesAndZeroes: map['trimLeadingAndTrailingSpacesAndZeroes'] as bool,
      validateCharacterSet: map['validateCharacterSet'] as bool,
      validateEDITypes: map['validateEDITypes'] as bool,
      validateXSDTypes: map['validateXSDTypes'] as bool,
    );
  }
}

