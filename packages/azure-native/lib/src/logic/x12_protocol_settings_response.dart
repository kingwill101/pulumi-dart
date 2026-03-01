// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x12_acknowledgement_settings_response.dart';
import 'x12_delimiter_overrides_response.dart';
import 'x12_envelope_override_response.dart';
import 'x12_envelope_settings_response.dart';
import 'x12_framing_settings_response.dart';
import 'x12_message_filter_response.dart';
import 'x12_message_identifier_response.dart';
import 'x12_processing_settings_response.dart';
import 'x12_schema_reference_response.dart';
import 'x12_security_settings_response.dart';
import 'x12_validation_override_response.dart';
import 'x12_validation_settings_response.dart';

/// The X12 agreement protocol settings.
class X12ProtocolSettingsResponse {
  /// The X12 acknowledgment settings.
  final X12AcknowledgementSettingsResponse acknowledgementSettings;
  /// The X12 envelope override settings.
  final List<X12EnvelopeOverrideResponse>? envelopeOverrides;
  /// The X12 envelope settings.
  final X12EnvelopeSettingsResponse envelopeSettings;
  /// The X12 framing settings.
  final X12FramingSettingsResponse framingSettings;
  /// The X12 message filter.
  final X12MessageFilterResponse messageFilter;
  /// The X12 message filter list.
  final List<X12MessageIdentifierResponse>? messageFilterList;
  /// The X12 processing settings.
  final X12ProcessingSettingsResponse processingSettings;
  /// The X12 schema references.
  final List<X12SchemaReferenceResponse> schemaReferences;
  /// The X12 security settings.
  final X12SecuritySettingsResponse securitySettings;
  /// The X12 validation override settings.
  final List<X12ValidationOverrideResponse>? validationOverrides;
  /// The X12 validation settings.
  final X12ValidationSettingsResponse validationSettings;
  /// The X12 delimiter override settings.
  final List<X12DelimiterOverridesResponse>? x12DelimiterOverrides;

  /// Creates a new [X12ProtocolSettingsResponse].
  /// [acknowledgementSettings] The X12 acknowledgment settings.
  /// [envelopeOverrides] The X12 envelope override settings.
  /// [envelopeSettings] The X12 envelope settings.
  /// [framingSettings] The X12 framing settings.
  /// [messageFilter] The X12 message filter.
  /// [messageFilterList] The X12 message filter list.
  /// [processingSettings] The X12 processing settings.
  /// [schemaReferences] The X12 schema references.
  /// [securitySettings] The X12 security settings.
  /// [validationOverrides] The X12 validation override settings.
  /// [validationSettings] The X12 validation settings.
  /// [x12DelimiterOverrides] The X12 delimiter override settings.
  X12ProtocolSettingsResponse({
    required this.acknowledgementSettings,
    this.envelopeOverrides,
    required this.envelopeSettings,
    required this.framingSettings,
    required this.messageFilter,
    this.messageFilterList,
    required this.processingSettings,
    required this.schemaReferences,
    required this.securitySettings,
    this.validationOverrides,
    required this.validationSettings,
    this.x12DelimiterOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgementSettings': acknowledgementSettings.toMap(),
      'envelopeOverrides': ?envelopeOverrides == null ? null : pulumi.Input.encodeList<X12EnvelopeOverrideResponse, Map<String, dynamic>>(envelopeOverrides!, (value) => value.toMap()),
      'envelopeSettings': envelopeSettings.toMap(),
      'framingSettings': framingSettings.toMap(),
      'messageFilter': messageFilter.toMap(),
      'messageFilterList': ?messageFilterList == null ? null : pulumi.Input.encodeList<X12MessageIdentifierResponse, Map<String, dynamic>>(messageFilterList!, (value) => value.toMap()),
      'processingSettings': processingSettings.toMap(),
      'schemaReferences': pulumi.Input.encodeList<X12SchemaReferenceResponse, Map<String, dynamic>>(schemaReferences, (value) => value.toMap()),
      'securitySettings': securitySettings.toMap(),
      'validationOverrides': ?validationOverrides == null ? null : pulumi.Input.encodeList<X12ValidationOverrideResponse, Map<String, dynamic>>(validationOverrides!, (value) => value.toMap()),
      'validationSettings': validationSettings.toMap(),
      'x12DelimiterOverrides': ?x12DelimiterOverrides == null ? null : pulumi.Input.encodeList<X12DelimiterOverridesResponse, Map<String, dynamic>>(x12DelimiterOverrides!, (value) => value.toMap()),
    };
  }

  factory X12ProtocolSettingsResponse.fromMap(Map<String, dynamic> map) {
    return X12ProtocolSettingsResponse(
      acknowledgementSettings: X12AcknowledgementSettingsResponse.fromMap((map['acknowledgementSettings'] as Map).cast<String, dynamic>()),
      envelopeOverrides: map['envelopeOverrides'] == null ? null : pulumi.Input.decodeList<X12EnvelopeOverrideResponse>(map['envelopeOverrides'], (value) => X12EnvelopeOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      envelopeSettings: X12EnvelopeSettingsResponse.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>()),
      framingSettings: X12FramingSettingsResponse.fromMap((map['framingSettings'] as Map).cast<String, dynamic>()),
      messageFilter: X12MessageFilterResponse.fromMap((map['messageFilter'] as Map).cast<String, dynamic>()),
      messageFilterList: map['messageFilterList'] == null ? null : pulumi.Input.decodeList<X12MessageIdentifierResponse>(map['messageFilterList'], (value) => X12MessageIdentifierResponse.fromMap((value as Map).cast<String, dynamic>())),
      processingSettings: X12ProcessingSettingsResponse.fromMap((map['processingSettings'] as Map).cast<String, dynamic>()),
      schemaReferences: pulumi.Input.decodeList<X12SchemaReferenceResponse>(map['schemaReferences'], (value) => X12SchemaReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      securitySettings: X12SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      validationOverrides: map['validationOverrides'] == null ? null : pulumi.Input.decodeList<X12ValidationOverrideResponse>(map['validationOverrides'], (value) => X12ValidationOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      validationSettings: X12ValidationSettingsResponse.fromMap((map['validationSettings'] as Map).cast<String, dynamic>()),
      x12DelimiterOverrides: map['x12DelimiterOverrides'] == null ? null : pulumi.Input.decodeList<X12DelimiterOverridesResponse>(map['x12DelimiterOverrides'], (value) => X12DelimiterOverridesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

