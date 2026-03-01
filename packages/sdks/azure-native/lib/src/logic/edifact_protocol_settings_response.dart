// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edifact_acknowledgement_settings_response.dart';
import 'edifact_delimiter_override_response.dart';
import 'edifact_envelope_override_response.dart';
import 'edifact_envelope_settings_response.dart';
import 'edifact_framing_settings_response.dart';
import 'edifact_message_filter_response.dart';
import 'edifact_message_identifier_response.dart';
import 'edifact_processing_settings_response.dart';
import 'edifact_schema_reference_response.dart';
import 'edifact_validation_override_response.dart';
import 'edifact_validation_settings_response.dart';

/// The Edifact agreement protocol settings.
class EdifactProtocolSettingsResponse {
  /// The EDIFACT acknowledgement settings.
  final EdifactAcknowledgementSettingsResponse acknowledgementSettings;
  /// The EDIFACT delimiter override settings.
  final List<EdifactDelimiterOverrideResponse>? edifactDelimiterOverrides;
  /// The EDIFACT envelope override settings.
  final List<EdifactEnvelopeOverrideResponse>? envelopeOverrides;
  /// The EDIFACT envelope settings.
  final EdifactEnvelopeSettingsResponse envelopeSettings;
  /// The EDIFACT framing settings.
  final EdifactFramingSettingsResponse framingSettings;
  /// The EDIFACT message filter.
  final EdifactMessageFilterResponse messageFilter;
  /// The EDIFACT message filter list.
  final List<EdifactMessageIdentifierResponse>? messageFilterList;
  /// The EDIFACT processing Settings.
  final EdifactProcessingSettingsResponse processingSettings;
  /// The EDIFACT schema references.
  final List<EdifactSchemaReferenceResponse> schemaReferences;
  /// The EDIFACT validation override settings.
  final List<EdifactValidationOverrideResponse>? validationOverrides;
  /// The EDIFACT validation settings.
  final EdifactValidationSettingsResponse validationSettings;

  /// Creates a new [EdifactProtocolSettingsResponse].
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
  EdifactProtocolSettingsResponse({
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
      'edifactDelimiterOverrides': ?edifactDelimiterOverrides == null ? null : pulumi.Input.encodeList<EdifactDelimiterOverrideResponse, Map<String, dynamic>>(edifactDelimiterOverrides!, (value) => value.toMap()),
      'envelopeOverrides': ?envelopeOverrides == null ? null : pulumi.Input.encodeList<EdifactEnvelopeOverrideResponse, Map<String, dynamic>>(envelopeOverrides!, (value) => value.toMap()),
      'envelopeSettings': envelopeSettings.toMap(),
      'framingSettings': framingSettings.toMap(),
      'messageFilter': messageFilter.toMap(),
      'messageFilterList': ?messageFilterList == null ? null : pulumi.Input.encodeList<EdifactMessageIdentifierResponse, Map<String, dynamic>>(messageFilterList!, (value) => value.toMap()),
      'processingSettings': processingSettings.toMap(),
      'schemaReferences': pulumi.Input.encodeList<EdifactSchemaReferenceResponse, Map<String, dynamic>>(schemaReferences, (value) => value.toMap()),
      'validationOverrides': ?validationOverrides == null ? null : pulumi.Input.encodeList<EdifactValidationOverrideResponse, Map<String, dynamic>>(validationOverrides!, (value) => value.toMap()),
      'validationSettings': validationSettings.toMap(),
    };
  }

  factory EdifactProtocolSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EdifactProtocolSettingsResponse(
      acknowledgementSettings: EdifactAcknowledgementSettingsResponse.fromMap((map['acknowledgementSettings'] as Map).cast<String, dynamic>()),
      edifactDelimiterOverrides: map['edifactDelimiterOverrides'] == null ? null : pulumi.Input.decodeList<EdifactDelimiterOverrideResponse>(map['edifactDelimiterOverrides'], (value) => EdifactDelimiterOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      envelopeOverrides: map['envelopeOverrides'] == null ? null : pulumi.Input.decodeList<EdifactEnvelopeOverrideResponse>(map['envelopeOverrides'], (value) => EdifactEnvelopeOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      envelopeSettings: EdifactEnvelopeSettingsResponse.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>()),
      framingSettings: EdifactFramingSettingsResponse.fromMap((map['framingSettings'] as Map).cast<String, dynamic>()),
      messageFilter: EdifactMessageFilterResponse.fromMap((map['messageFilter'] as Map).cast<String, dynamic>()),
      messageFilterList: map['messageFilterList'] == null ? null : pulumi.Input.decodeList<EdifactMessageIdentifierResponse>(map['messageFilterList'], (value) => EdifactMessageIdentifierResponse.fromMap((value as Map).cast<String, dynamic>())),
      processingSettings: EdifactProcessingSettingsResponse.fromMap((map['processingSettings'] as Map).cast<String, dynamic>()),
      schemaReferences: pulumi.Input.decodeList<EdifactSchemaReferenceResponse>(map['schemaReferences'], (value) => EdifactSchemaReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      validationOverrides: map['validationOverrides'] == null ? null : pulumi.Input.decodeList<EdifactValidationOverrideResponse>(map['validationOverrides'], (value) => EdifactValidationOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      validationSettings: EdifactValidationSettingsResponse.fromMap((map['validationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

