// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact agreement validation settings.
class EdifactValidationSettingsResponse {
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

  /// Creates a new [EdifactValidationSettingsResponse].
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
  EdifactValidationSettingsResponse({
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

  factory EdifactValidationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EdifactValidationSettingsResponse(
      allowLeadingAndTrailingSpacesAndZeroes: pulumi.Input.fromValue(map['allowLeadingAndTrailingSpacesAndZeroes'] as bool),
      checkDuplicateGroupControlNumber: pulumi.Input.fromValue(map['checkDuplicateGroupControlNumber'] as bool),
      checkDuplicateInterchangeControlNumber: pulumi.Input.fromValue(map['checkDuplicateInterchangeControlNumber'] as bool),
      checkDuplicateTransactionSetControlNumber: pulumi.Input.fromValue(map['checkDuplicateTransactionSetControlNumber'] as bool),
      interchangeControlNumberValidityDays: pulumi.Input.fromValue(map['interchangeControlNumberValidityDays'] as int),
      trailingSeparatorPolicy: pulumi.Input.fromValue(map['trailingSeparatorPolicy'] as String),
      trimLeadingAndTrailingSpacesAndZeroes: pulumi.Input.fromValue(map['trimLeadingAndTrailingSpacesAndZeroes'] as bool),
      validateCharacterSet: pulumi.Input.fromValue(map['validateCharacterSet'] as bool),
      validateEDITypes: pulumi.Input.fromValue(map['validateEDITypes'] as bool),
      validateXSDTypes: pulumi.Input.fromValue(map['validateXSDTypes'] as bool),
    );
  }
}

