// ignore_for_file: unused_element, unnecessary_cast

import 'segment_terminator_suffix.dart';

/// The X12 delimiter override settings.
class X12DelimiterOverrides {
  /// The component separator.
  final int componentSeparator;
  /// The data element separator.
  final int dataElementSeparator;
  /// The message id.
  final String? messageId;
  /// The protocol version.
  final String? protocolVersion;
  /// The replacement character.
  final int replaceCharacter;
  /// The value indicating whether to replace separators in payload.
  final bool replaceSeparatorsInPayload;
  /// The segment terminator.
  final int segmentTerminator;
  /// The segment terminator suffix.
  final SegmentTerminatorSuffix segmentTerminatorSuffix;
  /// The target namespace on which this delimiter settings has to be applied.
  final String? targetNamespace;

  /// Creates a new [X12DelimiterOverrides].
  /// [componentSeparator] The component separator.
  /// [dataElementSeparator] The data element separator.
  /// [messageId] The message id.
  /// [protocolVersion] The protocol version.
  /// [replaceCharacter] The replacement character.
  /// [replaceSeparatorsInPayload] The value indicating whether to replace separators in payload.
  /// [segmentTerminator] The segment terminator.
  /// [segmentTerminatorSuffix] The segment terminator suffix.
  /// [targetNamespace] The target namespace on which this delimiter settings has to be applied.
  X12DelimiterOverrides({
    required this.componentSeparator,
    required this.dataElementSeparator,
    this.messageId,
    this.protocolVersion,
    required this.replaceCharacter,
    required this.replaceSeparatorsInPayload,
    required this.segmentTerminator,
    required this.segmentTerminatorSuffix,
    this.targetNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentSeparator': componentSeparator,
      'dataElementSeparator': dataElementSeparator,
      'messageId': ?messageId,
      'protocolVersion': ?protocolVersion,
      'replaceCharacter': replaceCharacter,
      'replaceSeparatorsInPayload': replaceSeparatorsInPayload,
      'segmentTerminator': segmentTerminator,
      'segmentTerminatorSuffix': segmentTerminatorSuffix.value,
      'targetNamespace': ?targetNamespace,
    };
  }

  factory X12DelimiterOverrides.fromMap(Map<String, dynamic> map) {
    return X12DelimiterOverrides(
      componentSeparator: map['componentSeparator'] as int,
      dataElementSeparator: map['dataElementSeparator'] as int,
      messageId: map['messageId'] == null ? null : map['messageId'] as String,
      protocolVersion: map['protocolVersion'] == null ? null : map['protocolVersion'] as String,
      replaceCharacter: map['replaceCharacter'] as int,
      replaceSeparatorsInPayload: map['replaceSeparatorsInPayload'] as bool,
      segmentTerminator: map['segmentTerminator'] as int,
      segmentTerminatorSuffix: SegmentTerminatorSuffix.fromValue(map['segmentTerminatorSuffix'] as String),
      targetNamespace: map['targetNamespace'] == null ? null : map['targetNamespace'] as String,
    );
  }
}

