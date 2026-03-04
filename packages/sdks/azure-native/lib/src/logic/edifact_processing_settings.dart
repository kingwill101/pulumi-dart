// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact agreement protocol settings.
class EdifactProcessingSettings {
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

  /// Creates a new [EdifactProcessingSettings].
  /// [createEmptyXmlTagsForTrailingSeparators] The value indicating whether to create empty xml tags for trailing separators.
  /// [maskSecurityInfo] The value indicating whether to mask security information.
  /// [preserveInterchange] The value indicating whether to preserve interchange.
  /// [suspendInterchangeOnError] The value indicating whether to suspend interchange on error.
  /// [useDotAsDecimalSeparator] The value indicating whether to use dot as decimal separator.
  EdifactProcessingSettings({
    required this.createEmptyXmlTagsForTrailingSeparators,
    required this.maskSecurityInfo,
    required this.preserveInterchange,
    required this.suspendInterchangeOnError,
    required this.useDotAsDecimalSeparator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createEmptyXmlTagsForTrailingSeparators':
          createEmptyXmlTagsForTrailingSeparators,
      'maskSecurityInfo': maskSecurityInfo,
      'preserveInterchange': preserveInterchange,
      'suspendInterchangeOnError': suspendInterchangeOnError,
      'useDotAsDecimalSeparator': useDotAsDecimalSeparator,
    };
  }

  factory EdifactProcessingSettings.fromMap(Map<String, dynamic> map) {
    return EdifactProcessingSettings(
      createEmptyXmlTagsForTrailingSeparators: pulumi.Input.fromValue(
        map['createEmptyXmlTagsForTrailingSeparators'] as bool,
      ),
      maskSecurityInfo: pulumi.Input.fromValue(map['maskSecurityInfo'] as bool),
      preserveInterchange: pulumi.Input.fromValue(
        map['preserveInterchange'] as bool,
      ),
      suspendInterchangeOnError: pulumi.Input.fromValue(
        map['suspendInterchangeOnError'] as bool,
      ),
      useDotAsDecimalSeparator: pulumi.Input.fromValue(
        map['useDotAsDecimalSeparator'] as bool,
      ),
    );
  }
}
