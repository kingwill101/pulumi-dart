// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact agreement validation settings.
class EdifactValidationSettings {
  /// The value indicating whether to allow leading and trailing spaces and zeroes.
  final pulumi.Input<bool> allowLeadingAndTrailingSpacesAndZeroes;
  /// The value indicating whether to check for duplicate group control number.
  final pulumi.Input<bool> checkDuplicateGroupControlNumber;
  /// The value indicating whether to check for duplicate interchange control number.
  final pulumi.Input<bool> checkDuplicateInterchangeControlNumber;
  /// The value indicating whether to check for duplicate transaction set control number.
  final pulumi.Input<bool> checkDuplicateTransactionSetControlNumber;
  /// The validity period of interchange control number.
  final pulumi.Input<int> interchangeControlNumberValidityDays;
  /// The trailing separator policy.
  final pulumi.Input<String> trailingSeparatorPolicy;
  /// The value indicating whether to trim leading and trailing spaces and zeroes.
  final pulumi.Input<bool> trimLeadingAndTrailingSpacesAndZeroes;
  /// The value indicating whether to validate character set in the message.
  final pulumi.Input<bool> validateCharacterSet;
  /// The value indicating whether to Whether to validate EDI types.
  final pulumi.Input<bool> validateEDITypes;
  /// The value indicating whether to Whether to validate XSD types.
  final pulumi.Input<bool> validateXSDTypes;

  /// Creates a new [EdifactValidationSettings].
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
  EdifactValidationSettings({
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

  factory EdifactValidationSettings.fromMap(Map<String, dynamic> map) {
    return EdifactValidationSettings(
      allowLeadingAndTrailingSpacesAndZeroes: (map['allowLeadingAndTrailingSpacesAndZeroes'] as bool).input(),
      checkDuplicateGroupControlNumber: (map['checkDuplicateGroupControlNumber'] as bool).input(),
      checkDuplicateInterchangeControlNumber: (map['checkDuplicateInterchangeControlNumber'] as bool).input(),
      checkDuplicateTransactionSetControlNumber: (map['checkDuplicateTransactionSetControlNumber'] as bool).input(),
      interchangeControlNumberValidityDays: (map['interchangeControlNumberValidityDays'] as int).input(),
      trailingSeparatorPolicy: (map['trailingSeparatorPolicy'] as String).input(),
      trimLeadingAndTrailingSpacesAndZeroes: (map['trimLeadingAndTrailingSpacesAndZeroes'] as bool).input(),
      validateCharacterSet: (map['validateCharacterSet'] as bool).input(),
      validateEDITypes: (map['validateEDITypes'] as bool).input(),
      validateXSDTypes: (map['validateXSDTypes'] as bool).input(),
    );
  }
}

