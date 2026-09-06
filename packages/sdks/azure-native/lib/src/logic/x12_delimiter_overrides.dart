// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'segment_terminator_suffix.dart';

/// The X12 delimiter override settings.
class X12DelimiterOverrides {
  /// The component separator.
  final pulumi.Input<int> componentSeparator;
  /// The data element separator.
  final pulumi.Input<int> dataElementSeparator;
  /// The message id.
  final pulumi.Input<String?>? messageId;
  /// The protocol version.
  final pulumi.Input<String?>? protocolVersion;
  /// The replacement character.
  final pulumi.Input<int> replaceCharacter;
  /// The value indicating whether to replace separators in payload.
  final pulumi.Input<bool> replaceSeparatorsInPayload;
  /// The segment terminator.
  final pulumi.Input<int> segmentTerminator;
  /// The segment terminator suffix.
  final pulumi.Input<SegmentTerminatorSuffix> segmentTerminatorSuffix;
  /// The target namespace on which this delimiter settings has to be applied.
  final pulumi.Input<String?>? targetNamespace;

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
  const X12DelimiterOverrides({
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
      'segmentTerminatorSuffix': pulumi.Input.mapInputValue<SegmentTerminatorSuffix, String>(segmentTerminatorSuffix, (value) => value.wireValue),
      'targetNamespace': ?targetNamespace,
    };
  }

  factory X12DelimiterOverrides.fromMap(Map<String, dynamic> map) {
    return X12DelimiterOverrides(
      componentSeparator: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['componentSeparator'])),
      dataElementSeparator: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['dataElementSeparator'])),
      messageId: (() { final guardedValue = map['messageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolVersion: (() { final guardedValue = map['protocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replaceCharacter: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['replaceCharacter'])),
      replaceSeparatorsInPayload: pulumi.Input.fromValue(map['replaceSeparatorsInPayload'] as bool),
      segmentTerminator: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['segmentTerminator'])),
      segmentTerminatorSuffix: pulumi.Input.fromValue(SegmentTerminatorSuffix.fromValue(map['segmentTerminatorSuffix']! as String)),
      targetNamespace: (() { final guardedValue = map['targetNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
