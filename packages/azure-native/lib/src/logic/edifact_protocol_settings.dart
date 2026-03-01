// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edifact_acknowledgement_settings.dart';
import 'edifact_delimiter_override.dart';
import 'edifact_envelope_override.dart';
import 'edifact_envelope_settings.dart';
import 'edifact_framing_settings.dart';
import 'edifact_message_filter.dart';
import 'edifact_message_identifier.dart';
import 'edifact_processing_settings.dart';
import 'edifact_schema_reference.dart';
import 'edifact_validation_override.dart';
import 'edifact_validation_settings.dart';

/// The Edifact agreement protocol settings.
class EdifactProtocolSettings {
  /// The EDIFACT acknowledgement settings.
  final EdifactAcknowledgementSettings acknowledgementSettings;
  /// The EDIFACT delimiter override settings.
  final List<EdifactDelimiterOverride>? edifactDelimiterOverrides;
  /// The EDIFACT envelope override settings.
  final List<EdifactEnvelopeOverride>? envelopeOverrides;
  /// The EDIFACT envelope settings.
  final EdifactEnvelopeSettings envelopeSettings;
  /// The EDIFACT framing settings.
  final EdifactFramingSettings framingSettings;
  /// The EDIFACT message filter.
  final EdifactMessageFilter messageFilter;
  /// The EDIFACT message filter list.
  final List<EdifactMessageIdentifier>? messageFilterList;
  /// The EDIFACT processing Settings.
  final EdifactProcessingSettings processingSettings;
  /// The EDIFACT schema references.
  final List<EdifactSchemaReference> schemaReferences;
  /// The EDIFACT validation override settings.
  final List<EdifactValidationOverride>? validationOverrides;
  /// The EDIFACT validation settings.
  final EdifactValidationSettings validationSettings;

  /// Creates a new [EdifactProtocolSettings].
  /// [acknowledgementSettings] The EDIFACT acknowledgement settings.
  /// [edifactDelimiterOverrides] The EDIFACT delimiter override settings.
  /// [envelopeOverrides] The EDIFACT envelope override settings.
  /// [envelopeSettings] The EDIFACT envelope settings.
  /// [framingSettings] The EDIFACT framing settings.
  /// [messageFilter] The EDIFACT message filter.
  /// [messageFilterList] The EDIFACT message filter list.
  /// [processingSettings] The EDIFACT processing Settings.
  /// [schemaReferences] The EDIFACT schema references.
  /// [validationOverrides] The EDIFACT validation override settings.
  /// [validationSettings] The EDIFACT validation settings.
  EdifactProtocolSettings({
    required this.acknowledgementSettings,
    this.edifactDelimiterOverrides,
    this.envelopeOverrides,
    required this.envelopeSettings,
    required this.framingSettings,
    required this.messageFilter,
    this.messageFilterList,
    required this.processingSettings,
    required this.schemaReferences,
    this.validationOverrides,
    required this.validationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgementSettings': acknowledgementSettings.toMap(),
      'edifactDelimiterOverrides': ?edifactDelimiterOverrides == null ? null : pulumi.Input.encodeList<EdifactDelimiterOverride, Map<String, dynamic>>(edifactDelimiterOverrides!, (value) => value.toMap()),
      'envelopeOverrides': ?envelopeOverrides == null ? null : pulumi.Input.encodeList<EdifactEnvelopeOverride, Map<String, dynamic>>(envelopeOverrides!, (value) => value.toMap()),
      'envelopeSettings': envelopeSettings.toMap(),
      'framingSettings': framingSettings.toMap(),
      'messageFilter': messageFilter.toMap(),
      'messageFilterList': ?messageFilterList == null ? null : pulumi.Input.encodeList<EdifactMessageIdentifier, Map<String, dynamic>>(messageFilterList!, (value) => value.toMap()),
      'processingSettings': processingSettings.toMap(),
      'schemaReferences': pulumi.Input.encodeList<EdifactSchemaReference, Map<String, dynamic>>(schemaReferences, (value) => value.toMap()),
      'validationOverrides': ?validationOverrides == null ? null : pulumi.Input.encodeList<EdifactValidationOverride, Map<String, dynamic>>(validationOverrides!, (value) => value.toMap()),
      'validationSettings': validationSettings.toMap(),
    };
  }

  factory EdifactProtocolSettings.fromMap(Map<String, dynamic> map) {
    return EdifactProtocolSettings(
      acknowledgementSettings: EdifactAcknowledgementSettings.fromMap((map['acknowledgementSettings'] as Map).cast<String, dynamic>()),
      edifactDelimiterOverrides: map['edifactDelimiterOverrides'] == null ? null : pulumi.Input.decodeList<EdifactDelimiterOverride>(map['edifactDelimiterOverrides'], (value) => EdifactDelimiterOverride.fromMap((value as Map).cast<String, dynamic>())),
      envelopeOverrides: map['envelopeOverrides'] == null ? null : pulumi.Input.decodeList<EdifactEnvelopeOverride>(map['envelopeOverrides'], (value) => EdifactEnvelopeOverride.fromMap((value as Map).cast<String, dynamic>())),
      envelopeSettings: EdifactEnvelopeSettings.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>()),
      framingSettings: EdifactFramingSettings.fromMap((map['framingSettings'] as Map).cast<String, dynamic>()),
      messageFilter: EdifactMessageFilter.fromMap((map['messageFilter'] as Map).cast<String, dynamic>()),
      messageFilterList: map['messageFilterList'] == null ? null : pulumi.Input.decodeList<EdifactMessageIdentifier>(map['messageFilterList'], (value) => EdifactMessageIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      processingSettings: EdifactProcessingSettings.fromMap((map['processingSettings'] as Map).cast<String, dynamic>()),
      schemaReferences: pulumi.Input.decodeList<EdifactSchemaReference>(map['schemaReferences'], (value) => EdifactSchemaReference.fromMap((value as Map).cast<String, dynamic>())),
      validationOverrides: map['validationOverrides'] == null ? null : pulumi.Input.decodeList<EdifactValidationOverride>(map['validationOverrides'], (value) => EdifactValidationOverride.fromMap((value as Map).cast<String, dynamic>())),
      validationSettings: EdifactValidationSettings.fromMap((map['validationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

