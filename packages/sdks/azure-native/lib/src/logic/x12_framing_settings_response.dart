// ignore_for_file: unused_element, unnecessary_cast


/// The X12 agreement framing settings.
class X12FramingSettingsResponse {
  /// The X12 character set.
  final String characterSet;
  /// The component separator.
  final int componentSeparator;
  /// The data element separator.
  final int dataElementSeparator;
  /// The replacement character.
  final int replaceCharacter;
  /// The value indicating whether to replace separators in payload.
  final bool replaceSeparatorsInPayload;
  /// The segment terminator.
  final int segmentTerminator;
  /// The segment terminator suffix.
  final String segmentTerminatorSuffix;

  /// Creates a new [X12FramingSettingsResponse].
  /// [characterSet] The X12 character set.
  /// [componentSeparator] The component separator.
  /// [dataElementSeparator] The data element separator.
  /// [replaceCharacter] The replacement character.
  /// [replaceSeparatorsInPayload] The value indicating whether to replace separators in payload.
  /// [segmentTerminator] The segment terminator.
  /// [segmentTerminatorSuffix] The segment terminator suffix.
  X12FramingSettingsResponse({
    required this.characterSet,
    required this.componentSeparator,
    required this.dataElementSeparator,
    required this.replaceCharacter,
    required this.replaceSeparatorsInPayload,
    required this.segmentTerminator,
    required this.segmentTerminatorSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSet': characterSet,
      'componentSeparator': componentSeparator,
      'dataElementSeparator': dataElementSeparator,
      'replaceCharacter': replaceCharacter,
      'replaceSeparatorsInPayload': replaceSeparatorsInPayload,
      'segmentTerminator': segmentTerminator,
      'segmentTerminatorSuffix': segmentTerminatorSuffix,
    };
  }

  factory X12FramingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return X12FramingSettingsResponse(
      characterSet: map['characterSet'] as String,
      componentSeparator: map['componentSeparator'] as int,
      dataElementSeparator: map['dataElementSeparator'] as int,
      replaceCharacter: map['replaceCharacter'] as int,
      replaceSeparatorsInPayload: map['replaceSeparatorsInPayload'] as bool,
      segmentTerminator: map['segmentTerminator'] as int,
      segmentTerminatorSuffix: map['segmentTerminatorSuffix'] as String,
    );
  }
}

