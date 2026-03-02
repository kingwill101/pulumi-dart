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
  final pulumi.Input<X12AcknowledgementSettingsResponse> acknowledgementSettings;
  /// The X12 envelope override settings.
  final pulumi.Input<List<X12EnvelopeOverrideResponse>>? envelopeOverrides;
  /// The X12 envelope settings.
  final pulumi.Input<X12EnvelopeSettingsResponse> envelopeSettings;
  /// The X12 framing settings.
  final pulumi.Input<X12FramingSettingsResponse> framingSettings;
  /// The X12 message filter.
  final pulumi.Input<X12MessageFilterResponse> messageFilter;
  /// The X12 message filter list.
  final pulumi.Input<List<X12MessageIdentifierResponse>>? messageFilterList;
  /// The X12 processing settings.
  final pulumi.Input<X12ProcessingSettingsResponse> processingSettings;
  /// The X12 schema references.
  final pulumi.Input<List<X12SchemaReferenceResponse>> schemaReferences;
  /// The X12 security settings.
  final pulumi.Input<X12SecuritySettingsResponse> securitySettings;
  /// The X12 validation override settings.
  final pulumi.Input<List<X12ValidationOverrideResponse>>? validationOverrides;
  /// The X12 validation settings.
  final pulumi.Input<X12ValidationSettingsResponse> validationSettings;
  /// The X12 delimiter override settings.
  final pulumi.Input<List<X12DelimiterOverridesResponse>>? x12DelimiterOverrides;

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
      'acknowledgementSettings': pulumi.Input.mapInputValue<X12AcknowledgementSettingsResponse, Map<String, dynamic>>(acknowledgementSettings, (value) => value.toMap()),
      'envelopeOverrides': ?pulumi.Input.mapOptionalInputValue<List<X12EnvelopeOverrideResponse>, List<Map<String, dynamic>>>(envelopeOverrides, (value) => pulumi.Input.encodeList<X12EnvelopeOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envelopeSettings': pulumi.Input.mapInputValue<X12EnvelopeSettingsResponse, Map<String, dynamic>>(envelopeSettings, (value) => value.toMap()),
      'framingSettings': pulumi.Input.mapInputValue<X12FramingSettingsResponse, Map<String, dynamic>>(framingSettings, (value) => value.toMap()),
      'messageFilter': pulumi.Input.mapInputValue<X12MessageFilterResponse, Map<String, dynamic>>(messageFilter, (value) => value.toMap()),
      'messageFilterList': ?pulumi.Input.mapOptionalInputValue<List<X12MessageIdentifierResponse>, List<Map<String, dynamic>>>(messageFilterList, (value) => pulumi.Input.encodeList<X12MessageIdentifierResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processingSettings': pulumi.Input.mapInputValue<X12ProcessingSettingsResponse, Map<String, dynamic>>(processingSettings, (value) => value.toMap()),
      'schemaReferences': pulumi.Input.mapInputValue<List<X12SchemaReferenceResponse>, List<Map<String, dynamic>>>(schemaReferences, (value) => pulumi.Input.encodeList<X12SchemaReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securitySettings': pulumi.Input.mapInputValue<X12SecuritySettingsResponse, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'validationOverrides': ?pulumi.Input.mapOptionalInputValue<List<X12ValidationOverrideResponse>, List<Map<String, dynamic>>>(validationOverrides, (value) => pulumi.Input.encodeList<X12ValidationOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationSettings': pulumi.Input.mapInputValue<X12ValidationSettingsResponse, Map<String, dynamic>>(validationSettings, (value) => value.toMap()),
      'x12DelimiterOverrides': ?pulumi.Input.mapOptionalInputValue<List<X12DelimiterOverridesResponse>, List<Map<String, dynamic>>>(x12DelimiterOverrides, (value) => pulumi.Input.encodeList<X12DelimiterOverridesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory X12ProtocolSettingsResponse.fromMap(Map<String, dynamic> map) {
    return X12ProtocolSettingsResponse(
      acknowledgementSettings: (X12AcknowledgementSettingsResponse.fromMap((map['acknowledgementSettings'] as Map).cast<String, dynamic>())).input(),
      envelopeOverrides: map['envelopeOverrides'] == null ? null : (pulumi.Input.decodeList<X12EnvelopeOverrideResponse>(map['envelopeOverrides'], (value) => X12EnvelopeOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      envelopeSettings: (X12EnvelopeSettingsResponse.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>())).input(),
      framingSettings: (X12FramingSettingsResponse.fromMap((map['framingSettings'] as Map).cast<String, dynamic>())).input(),
      messageFilter: (X12MessageFilterResponse.fromMap((map['messageFilter'] as Map).cast<String, dynamic>())).input(),
      messageFilterList: map['messageFilterList'] == null ? null : (pulumi.Input.decodeList<X12MessageIdentifierResponse>(map['messageFilterList'], (value) => X12MessageIdentifierResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      processingSettings: (X12ProcessingSettingsResponse.fromMap((map['processingSettings'] as Map).cast<String, dynamic>())).input(),
      schemaReferences: (pulumi.Input.decodeList<X12SchemaReferenceResponse>(map['schemaReferences'], (value) => X12SchemaReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      securitySettings: (X12SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>())).input(),
      validationOverrides: map['validationOverrides'] == null ? null : (pulumi.Input.decodeList<X12ValidationOverrideResponse>(map['validationOverrides'], (value) => X12ValidationOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationSettings: (X12ValidationSettingsResponse.fromMap((map['validationSettings'] as Map).cast<String, dynamic>())).input(),
      x12DelimiterOverrides: map['x12DelimiterOverrides'] == null ? null : (pulumi.Input.decodeList<X12DelimiterOverridesResponse>(map['x12DelimiterOverrides'], (value) => X12DelimiterOverridesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

