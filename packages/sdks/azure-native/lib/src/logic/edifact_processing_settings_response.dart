// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact agreement protocol settings.
class EdifactProcessingSettingsResponse {
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

  /// Creates a new [EdifactProcessingSettingsResponse].
  /// [createEmptyXmlTagsForTrailingSeparators] The value indicating whether to create empty xml tags for trailing separators.
  /// [maskSecurityInfo] The value indicating whether to mask security information.
  /// [preserveInterchange] The value indicating whether to preserve interchange.
  /// [suspendInterchangeOnError] The value indicating whether to suspend interchange on error.
  /// [useDotAsDecimalSeparator] The value indicating whether to use dot as decimal separator.
  EdifactProcessingSettingsResponse({
    required this.createEmptyXmlTagsForTrailingSeparators,
    required this.maskSecurityInfo,
    required this.preserveInterchange,
    required this.suspendInterchangeOnError,
    required this.useDotAsDecimalSeparator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createEmptyXmlTagsForTrailingSeparators': createEmptyXmlTagsForTrailingSeparators,
      'maskSecurityInfo': maskSecurityInfo,
      'preserveInterchange': preserveInterchange,
      'suspendInterchangeOnError': suspendInterchangeOnError,
      'useDotAsDecimalSeparator': useDotAsDecimalSeparator,
    };
  }

  factory EdifactProcessingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EdifactProcessingSettingsResponse(
      createEmptyXmlTagsForTrailingSeparators: (map['createEmptyXmlTagsForTrailingSeparators'] as bool).input(),
      maskSecurityInfo: (map['maskSecurityInfo'] as bool).input(),
      preserveInterchange: (map['preserveInterchange'] as bool).input(),
      suspendInterchangeOnError: (map['suspendInterchangeOnError'] as bool).input(),
      useDotAsDecimalSeparator: (map['useDotAsDecimalSeparator'] as bool).input(),
    );
  }
}

