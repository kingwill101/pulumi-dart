// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 delimiter override settings.
class X12DelimiterOverridesResponse {
  /// The component separator.
  final pulumi.Input<int> componentSeparator;
  /// The data element separator.
  final pulumi.Input<int> dataElementSeparator;
  /// The message id.
  final pulumi.Input<String>? messageId;
  /// The protocol version.
  final pulumi.Input<String>? protocolVersion;
  /// The replacement character.
  final pulumi.Input<int> replaceCharacter;
  /// The value indicating whether to replace separators in payload.
  final pulumi.Input<bool> replaceSeparatorsInPayload;
  /// The segment terminator.
  final pulumi.Input<int> segmentTerminator;
  /// The segment terminator suffix.
  final pulumi.Input<String> segmentTerminatorSuffix;
  /// The target namespace on which this delimiter settings has to be applied.
  final pulumi.Input<String>? targetNamespace;

  /// Creates a new [X12DelimiterOverridesResponse].
  /// [componentSeparator] The component separator.
  /// [dataElementSeparator] The data element separator.
  /// [messageId] The message id.
  /// [protocolVersion] The protocol version.
  /// [replaceCharacter] The replacement character.
  /// [replaceSeparatorsInPayload] The value indicating whether to replace separators in payload.
  /// [segmentTerminator] The segment terminator.
  /// [segmentTerminatorSuffix] The segment terminator suffix.
  /// [targetNamespace] The target namespace on which this delimiter settings has to be applied.
  X12DelimiterOverridesResponse({
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
      'segmentTerminatorSuffix': segmentTerminatorSuffix,
      'targetNamespace': ?targetNamespace,
    };
  }

  factory X12DelimiterOverridesResponse.fromMap(Map<String, dynamic> map) {
    return X12DelimiterOverridesResponse(
      componentSeparator: (map['componentSeparator'] as int).input(),
      dataElementSeparator: (map['dataElementSeparator'] as int).input(),
      messageId: map['messageId'] == null ? null : (map['messageId'] as String).input(),
      protocolVersion: map['protocolVersion'] == null ? null : (map['protocolVersion'] as String).input(),
      replaceCharacter: (map['replaceCharacter'] as int).input(),
      replaceSeparatorsInPayload: (map['replaceSeparatorsInPayload'] as bool).input(),
      segmentTerminator: (map['segmentTerminator'] as int).input(),
      segmentTerminatorSuffix: (map['segmentTerminatorSuffix'] as String).input(),
      targetNamespace: map['targetNamespace'] == null ? null : (map['targetNamespace'] as String).input(),
    );
  }
}

