// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 processing settings.
class X12ProcessingSettings {
  /// The value indicating whether to convert numerical type to implied decimal.
  final pulumi.Input<bool> convertImpliedDecimal;
  /// The value indicating whether to create empty xml tags for trailing separators.
  final pulumi.Input<bool> createEmptyXmlTagsForTrailingSeparators;
  /// The value indicating whether to mask security information.
  final pulumi.Input<bool> maskSecurityInfo;
  /// The value indicating whether to preserve interchange.
  final pulumi.Input<bool> preserveInterchange;
  /// The value indicating whether to suspend interchange on error.
  final pulumi.Input<bool> suspendInterchangeOnError;
  /// The value indicating whether to use dot as decimal separator.
  final pulumi.Input<bool> useDotAsDecimalSeparator;

  /// Creates a new [X12ProcessingSettings].
  /// [convertImpliedDecimal] The value indicating whether to convert numerical type to implied decimal.
  /// [createEmptyXmlTagsForTrailingSeparators] The value indicating whether to create empty xml tags for trailing separators.
  /// [maskSecurityInfo] The value indicating whether to mask security information.
  /// [preserveInterchange] The value indicating whether to preserve interchange.
  /// [suspendInterchangeOnError] The value indicating whether to suspend interchange on error.
  /// [useDotAsDecimalSeparator] The value indicating whether to use dot as decimal separator.
  X12ProcessingSettings({
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

  factory X12ProcessingSettings.fromMap(Map<String, dynamic> map) {
    return X12ProcessingSettings(
      convertImpliedDecimal: pulumi.Input.fromValue(map['convertImpliedDecimal'] as bool),
      createEmptyXmlTagsForTrailingSeparators: pulumi.Input.fromValue(map['createEmptyXmlTagsForTrailingSeparators'] as bool),
      maskSecurityInfo: pulumi.Input.fromValue(map['maskSecurityInfo'] as bool),
      preserveInterchange: pulumi.Input.fromValue(map['preserveInterchange'] as bool),
      suspendInterchangeOnError: pulumi.Input.fromValue(map['suspendInterchangeOnError'] as bool),
      useDotAsDecimalSeparator: pulumi.Input.fromValue(map['useDotAsDecimalSeparator'] as bool),
    );
  }
}

