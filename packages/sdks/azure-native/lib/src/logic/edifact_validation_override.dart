// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact validation override settings.
class EdifactValidationOverride {
  /// The value indicating whether to allow leading and trailing spaces and zeroes.
  final pulumi.Input<bool> allowLeadingAndTrailingSpacesAndZeroes;

  /// The value indicating whether to validate character Set.
  final pulumi.Input<bool> enforceCharacterSet;

  /// The message id on which the validation settings has to be applied.
  final pulumi.Input<String> messageId;

  /// The trailing separator policy.
  final pulumi.Input<String> trailingSeparatorPolicy;

  /// The value indicating whether to trim leading and trailing spaces and zeroes.
  final pulumi.Input<bool> trimLeadingAndTrailingSpacesAndZeroes;

  /// The value indicating whether to validate EDI types.
  final pulumi.Input<bool> validateEDITypes;

  /// The value indicating whether to validate XSD types.
  final pulumi.Input<bool> validateXSDTypes;

  /// Creates a new [EdifactValidationOverride].
  /// [allowLeadingAndTrailingSpacesAndZeroes] The value indicating whether to allow leading and trailing spaces and zeroes.
  /// [enforceCharacterSet] The value indicating whether to validate character Set.
  /// [messageId] The message id on which the validation settings has to be applied.
  /// [trailingSeparatorPolicy] The trailing separator policy.
  /// [trimLeadingAndTrailingSpacesAndZeroes] The value indicating whether to trim leading and trailing spaces and zeroes.
  /// [validateEDITypes] The value indicating whether to validate EDI types.
  /// [validateXSDTypes] The value indicating whether to validate XSD types.
  EdifactValidationOverride({
    required this.allowLeadingAndTrailingSpacesAndZeroes,
    required this.enforceCharacterSet,
    required this.messageId,
    required this.trailingSeparatorPolicy,
    required this.trimLeadingAndTrailingSpacesAndZeroes,
    required this.validateEDITypes,
    required this.validateXSDTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLeadingAndTrailingSpacesAndZeroes':
          allowLeadingAndTrailingSpacesAndZeroes,
      'enforceCharacterSet': enforceCharacterSet,
      'messageId': messageId,
      'trailingSeparatorPolicy': trailingSeparatorPolicy,
      'trimLeadingAndTrailingSpacesAndZeroes':
          trimLeadingAndTrailingSpacesAndZeroes,
      'validateEDITypes': validateEDITypes,
      'validateXSDTypes': validateXSDTypes,
    };
  }

  factory EdifactValidationOverride.fromMap(Map<String, dynamic> map) {
    return EdifactValidationOverride(
      allowLeadingAndTrailingSpacesAndZeroes: pulumi.Input.fromValue(
        map['allowLeadingAndTrailingSpacesAndZeroes'] as bool,
      ),
      enforceCharacterSet: pulumi.Input.fromValue(
        map['enforceCharacterSet'] as bool,
      ),
      messageId: pulumi.Input.fromValue(map['messageId'] as String),
      trailingSeparatorPolicy: pulumi.Input.fromValue(
        map['trailingSeparatorPolicy'] as String,
      ),
      trimLeadingAndTrailingSpacesAndZeroes: pulumi.Input.fromValue(
        map['trimLeadingAndTrailingSpacesAndZeroes'] as bool,
      ),
      validateEDITypes: pulumi.Input.fromValue(map['validateEDITypes'] as bool),
      validateXSDTypes: pulumi.Input.fromValue(map['validateXSDTypes'] as bool),
    );
  }
}
