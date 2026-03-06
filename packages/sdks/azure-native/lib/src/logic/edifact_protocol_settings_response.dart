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
  final pulumi.Input<EdifactAcknowledgementSettingsResponse> acknowledgementSettings;
  /// The EDIFACT delimiter override settings.
  final pulumi.Input<List<EdifactDelimiterOverrideResponse>>? edifactDelimiterOverrides;
  /// The EDIFACT envelope override settings.
  final pulumi.Input<List<EdifactEnvelopeOverrideResponse>>? envelopeOverrides;
  /// The EDIFACT envelope settings.
  final pulumi.Input<EdifactEnvelopeSettingsResponse> envelopeSettings;
  /// The EDIFACT framing settings.
  final pulumi.Input<EdifactFramingSettingsResponse> framingSettings;
  /// The EDIFACT message filter.
  final pulumi.Input<EdifactMessageFilterResponse> messageFilter;
  /// The EDIFACT message filter list.
  final pulumi.Input<List<EdifactMessageIdentifierResponse>>? messageFilterList;
  /// The EDIFACT processing Settings.
  final pulumi.Input<EdifactProcessingSettingsResponse> processingSettings;
  /// The EDIFACT schema references.
  final pulumi.Input<List<EdifactSchemaReferenceResponse>> schemaReferences;
  /// The EDIFACT validation override settings.
  final pulumi.Input<List<EdifactValidationOverrideResponse>>? validationOverrides;
  /// The EDIFACT validation settings.
  final pulumi.Input<EdifactValidationSettingsResponse> validationSettings;

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
  const EdifactProtocolSettingsResponse({
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
      'acknowledgementSettings': pulumi.Input.mapInputValue<EdifactAcknowledgementSettingsResponse, Map<String, dynamic>>(acknowledgementSettings, (value) => value.toMap()),
      'edifactDelimiterOverrides': ?pulumi.Input.mapOptionalInputValue<List<EdifactDelimiterOverrideResponse>, List<Map<String, dynamic>>>(edifactDelimiterOverrides, (value) => pulumi.Input.encodeList<EdifactDelimiterOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envelopeOverrides': ?pulumi.Input.mapOptionalInputValue<List<EdifactEnvelopeOverrideResponse>, List<Map<String, dynamic>>>(envelopeOverrides, (value) => pulumi.Input.encodeList<EdifactEnvelopeOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envelopeSettings': pulumi.Input.mapInputValue<EdifactEnvelopeSettingsResponse, Map<String, dynamic>>(envelopeSettings, (value) => value.toMap()),
      'framingSettings': pulumi.Input.mapInputValue<EdifactFramingSettingsResponse, Map<String, dynamic>>(framingSettings, (value) => value.toMap()),
      'messageFilter': pulumi.Input.mapInputValue<EdifactMessageFilterResponse, Map<String, dynamic>>(messageFilter, (value) => value.toMap()),
      'messageFilterList': ?pulumi.Input.mapOptionalInputValue<List<EdifactMessageIdentifierResponse>, List<Map<String, dynamic>>>(messageFilterList, (value) => pulumi.Input.encodeList<EdifactMessageIdentifierResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processingSettings': pulumi.Input.mapInputValue<EdifactProcessingSettingsResponse, Map<String, dynamic>>(processingSettings, (value) => value.toMap()),
      'schemaReferences': pulumi.Input.mapInputValue<List<EdifactSchemaReferenceResponse>, List<Map<String, dynamic>>>(schemaReferences, (value) => pulumi.Input.encodeList<EdifactSchemaReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationOverrides': ?pulumi.Input.mapOptionalInputValue<List<EdifactValidationOverrideResponse>, List<Map<String, dynamic>>>(validationOverrides, (value) => pulumi.Input.encodeList<EdifactValidationOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationSettings': pulumi.Input.mapInputValue<EdifactValidationSettingsResponse, Map<String, dynamic>>(validationSettings, (value) => value.toMap()),
    };
  }

  factory EdifactProtocolSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EdifactProtocolSettingsResponse(
      acknowledgementSettings: pulumi.Input.fromValue(EdifactAcknowledgementSettingsResponse.fromMap((map['acknowledgementSettings']! as Map).cast<String, dynamic>())),
      edifactDelimiterOverrides: (() { final guardedValue = map['edifactDelimiterOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdifactDelimiterOverrideResponse>(guardedValue, (value) => EdifactDelimiterOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      envelopeOverrides: (() { final guardedValue = map['envelopeOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdifactEnvelopeOverrideResponse>(guardedValue, (value) => EdifactEnvelopeOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      envelopeSettings: pulumi.Input.fromValue(EdifactEnvelopeSettingsResponse.fromMap((map['envelopeSettings']! as Map).cast<String, dynamic>())),
      framingSettings: pulumi.Input.fromValue(EdifactFramingSettingsResponse.fromMap((map['framingSettings']! as Map).cast<String, dynamic>())),
      messageFilter: pulumi.Input.fromValue(EdifactMessageFilterResponse.fromMap((map['messageFilter']! as Map).cast<String, dynamic>())),
      messageFilterList: (() { final guardedValue = map['messageFilterList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdifactMessageIdentifierResponse>(guardedValue, (value) => EdifactMessageIdentifierResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      processingSettings: pulumi.Input.fromValue(EdifactProcessingSettingsResponse.fromMap((map['processingSettings']! as Map).cast<String, dynamic>())),
      schemaReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<EdifactSchemaReferenceResponse>(map['schemaReferences']!, (value) => EdifactSchemaReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      validationOverrides: (() { final guardedValue = map['validationOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdifactValidationOverrideResponse>(guardedValue, (value) => EdifactValidationOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      validationSettings: pulumi.Input.fromValue(EdifactValidationSettingsResponse.fromMap((map['validationSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

