// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 validation override settings.
class X12ValidationOverride {
  /// The value indicating whether to allow leading and trailing spaces and zeroes.
  final pulumi.Input<bool> allowLeadingAndTrailingSpacesAndZeroes;
  /// The message id on which the validation settings has to be applied.
  final pulumi.Input<String> messageId;
  /// The trailing separator policy.
  final pulumi.Input<String> trailingSeparatorPolicy;
  /// The value indicating whether to trim leading and trailing spaces and zeroes.
  final pulumi.Input<bool> trimLeadingAndTrailingSpacesAndZeroes;
  /// The value indicating whether to validate character Set.
  final pulumi.Input<bool> validateCharacterSet;
  /// The value indicating whether to validate EDI types.
  final pulumi.Input<bool> validateEDITypes;
  /// The value indicating whether to validate XSD types.
  final pulumi.Input<bool> validateXSDTypes;

  /// Creates a new [X12ValidationOverride].
  /// [allowLeadingAndTrailingSpacesAndZeroes] The value indicating whether to allow leading and trailing spaces and zeroes.
  /// [messageId] The message id on which the validation settings has to be applied.
  /// [trailingSeparatorPolicy] The trailing separator policy.
  /// [trimLeadingAndTrailingSpacesAndZeroes] The value indicating whether to trim leading and trailing spaces and zeroes.
  /// [validateCharacterSet] The value indicating whether to validate character Set.
  /// [validateEDITypes] The value indicating whether to validate EDI types.
  /// [validateXSDTypes] The value indicating whether to validate XSD types.
  X12ValidationOverride({
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

  factory X12ValidationOverride.fromMap(Map<String, dynamic> map) {
    return X12ValidationOverride(
      allowLeadingAndTrailingSpacesAndZeroes: (map['allowLeadingAndTrailingSpacesAndZeroes'] as bool).input(),
      messageId: (map['messageId'] as String).input(),
      trailingSeparatorPolicy: (map['trailingSeparatorPolicy'] as String).input(),
      trimLeadingAndTrailingSpacesAndZeroes: (map['trimLeadingAndTrailingSpacesAndZeroes'] as bool).input(),
      validateCharacterSet: (map['validateCharacterSet'] as bool).input(),
      validateEDITypes: (map['validateEDITypes'] as bool).input(),
      validateXSDTypes: (map['validateXSDTypes'] as bool).input(),
    );
  }
}

