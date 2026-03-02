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
  final pulumi.Input<EdifactAcknowledgementSettings> acknowledgementSettings;
  /// The EDIFACT delimiter override settings.
  final pulumi.Input<List<EdifactDelimiterOverride>>? edifactDelimiterOverrides;
  /// The EDIFACT envelope override settings.
  final pulumi.Input<List<EdifactEnvelopeOverride>>? envelopeOverrides;
  /// The EDIFACT envelope settings.
  final pulumi.Input<EdifactEnvelopeSettings> envelopeSettings;
  /// The EDIFACT framing settings.
  final pulumi.Input<EdifactFramingSettings> framingSettings;
  /// The EDIFACT message filter.
  final pulumi.Input<EdifactMessageFilter> messageFilter;
  /// The EDIFACT message filter list.
  final pulumi.Input<List<EdifactMessageIdentifier>>? messageFilterList;
  /// The EDIFACT processing Settings.
  final pulumi.Input<EdifactProcessingSettings> processingSettings;
  /// The EDIFACT schema references.
  final pulumi.Input<List<EdifactSchemaReference>> schemaReferences;
  /// The EDIFACT validation override settings.
  final pulumi.Input<List<EdifactValidationOverride>>? validationOverrides;
  /// The EDIFACT validation settings.
  final pulumi.Input<EdifactValidationSettings> validationSettings;

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
      'acknowledgementSettings': pulumi.Input.mapInputValue<EdifactAcknowledgementSettings, Map<String, dynamic>>(acknowledgementSettings, (value) => value.toMap()),
      'edifactDelimiterOverrides': ?pulumi.Input.mapOptionalInputValue<List<EdifactDelimiterOverride>, List<Map<String, dynamic>>>(edifactDelimiterOverrides, (value) => pulumi.Input.encodeList<EdifactDelimiterOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envelopeOverrides': ?pulumi.Input.mapOptionalInputValue<List<EdifactEnvelopeOverride>, List<Map<String, dynamic>>>(envelopeOverrides, (value) => pulumi.Input.encodeList<EdifactEnvelopeOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envelopeSettings': pulumi.Input.mapInputValue<EdifactEnvelopeSettings, Map<String, dynamic>>(envelopeSettings, (value) => value.toMap()),
      'framingSettings': pulumi.Input.mapInputValue<EdifactFramingSettings, Map<String, dynamic>>(framingSettings, (value) => value.toMap()),
      'messageFilter': pulumi.Input.mapInputValue<EdifactMessageFilter, Map<String, dynamic>>(messageFilter, (value) => value.toMap()),
      'messageFilterList': ?pulumi.Input.mapOptionalInputValue<List<EdifactMessageIdentifier>, List<Map<String, dynamic>>>(messageFilterList, (value) => pulumi.Input.encodeList<EdifactMessageIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processingSettings': pulumi.Input.mapInputValue<EdifactProcessingSettings, Map<String, dynamic>>(processingSettings, (value) => value.toMap()),
      'schemaReferences': pulumi.Input.mapInputValue<List<EdifactSchemaReference>, List<Map<String, dynamic>>>(schemaReferences, (value) => pulumi.Input.encodeList<EdifactSchemaReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationOverrides': ?pulumi.Input.mapOptionalInputValue<List<EdifactValidationOverride>, List<Map<String, dynamic>>>(validationOverrides, (value) => pulumi.Input.encodeList<EdifactValidationOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationSettings': pulumi.Input.mapInputValue<EdifactValidationSettings, Map<String, dynamic>>(validationSettings, (value) => value.toMap()),
    };
  }

  factory EdifactProtocolSettings.fromMap(Map<String, dynamic> map) {
    return EdifactProtocolSettings(
      acknowledgementSettings: (EdifactAcknowledgementSettings.fromMap((map['acknowledgementSettings'] as Map).cast<String, dynamic>())).input(),
      edifactDelimiterOverrides: map['edifactDelimiterOverrides'] == null ? null : (pulumi.Input.decodeList<EdifactDelimiterOverride>(map['edifactDelimiterOverrides']!, (value) => EdifactDelimiterOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      envelopeOverrides: map['envelopeOverrides'] == null ? null : (pulumi.Input.decodeList<EdifactEnvelopeOverride>(map['envelopeOverrides']!, (value) => EdifactEnvelopeOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      envelopeSettings: (EdifactEnvelopeSettings.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>())).input(),
      framingSettings: (EdifactFramingSettings.fromMap((map['framingSettings'] as Map).cast<String, dynamic>())).input(),
      messageFilter: (EdifactMessageFilter.fromMap((map['messageFilter'] as Map).cast<String, dynamic>())).input(),
      messageFilterList: map['messageFilterList'] == null ? null : (pulumi.Input.decodeList<EdifactMessageIdentifier>(map['messageFilterList']!, (value) => EdifactMessageIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      processingSettings: (EdifactProcessingSettings.fromMap((map['processingSettings'] as Map).cast<String, dynamic>())).input(),
      schemaReferences: (pulumi.Input.decodeList<EdifactSchemaReference>(map['schemaReferences'], (value) => EdifactSchemaReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationOverrides: map['validationOverrides'] == null ? null : (pulumi.Input.decodeList<EdifactValidationOverride>(map['validationOverrides']!, (value) => EdifactValidationOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationSettings: (EdifactValidationSettings.fromMap((map['validationSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

