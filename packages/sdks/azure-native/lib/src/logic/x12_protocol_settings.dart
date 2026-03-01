// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x12_acknowledgement_settings.dart';
import 'x12_delimiter_overrides.dart';
import 'x12_envelope_override.dart';
import 'x12_envelope_settings.dart';
import 'x12_framing_settings.dart';
import 'x12_message_filter.dart';
import 'x12_message_identifier.dart';
import 'x12_processing_settings.dart';
import 'x12_schema_reference.dart';
import 'x12_security_settings.dart';
import 'x12_validation_override.dart';
import 'x12_validation_settings.dart';

/// The X12 agreement protocol settings.
class X12ProtocolSettings {
  /// The X12 acknowledgment settings.
  final X12AcknowledgementSettings acknowledgementSettings;
  /// The X12 envelope override settings.
  final List<X12EnvelopeOverride>? envelopeOverrides;
  /// The X12 envelope settings.
  final X12EnvelopeSettings envelopeSettings;
  /// The X12 framing settings.
  final X12FramingSettings framingSettings;
  /// The X12 message filter.
  final X12MessageFilter messageFilter;
  /// The X12 message filter list.
  final List<X12MessageIdentifier>? messageFilterList;
  /// The X12 processing settings.
  final X12ProcessingSettings processingSettings;
  /// The X12 schema references.
  final List<X12SchemaReference> schemaReferences;
  /// The X12 security settings.
  final X12SecuritySettings securitySettings;
  /// The X12 validation override settings.
  final List<X12ValidationOverride>? validationOverrides;
  /// The X12 validation settings.
  final X12ValidationSettings validationSettings;
  /// The X12 delimiter override settings.
  final List<X12DelimiterOverrides>? x12DelimiterOverrides;

  /// Creates a new [X12ProtocolSettings].
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
  X12ProtocolSettings({
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
      'envelopeOverrides': ?envelopeOverrides == null ? null : pulumi.Input.encodeList<X12EnvelopeOverride, Map<String, dynamic>>(envelopeOverrides!, (value) => value.toMap()),
      'envelopeSettings': envelopeSettings.toMap(),
      'framingSettings': framingSettings.toMap(),
      'messageFilter': messageFilter.toMap(),
      'messageFilterList': ?messageFilterList == null ? null : pulumi.Input.encodeList<X12MessageIdentifier, Map<String, dynamic>>(messageFilterList!, (value) => value.toMap()),
      'processingSettings': processingSettings.toMap(),
      'schemaReferences': pulumi.Input.encodeList<X12SchemaReference, Map<String, dynamic>>(schemaReferences, (value) => value.toMap()),
      'securitySettings': securitySettings.toMap(),
      'validationOverrides': ?validationOverrides == null ? null : pulumi.Input.encodeList<X12ValidationOverride, Map<String, dynamic>>(validationOverrides!, (value) => value.toMap()),
      'validationSettings': validationSettings.toMap(),
      'x12DelimiterOverrides': ?x12DelimiterOverrides == null ? null : pulumi.Input.encodeList<X12DelimiterOverrides, Map<String, dynamic>>(x12DelimiterOverrides!, (value) => value.toMap()),
    };
  }

  factory X12ProtocolSettings.fromMap(Map<String, dynamic> map) {
    return X12ProtocolSettings(
      acknowledgementSettings: X12AcknowledgementSettings.fromMap((map['acknowledgementSettings'] as Map).cast<String, dynamic>()),
      envelopeOverrides: map['envelopeOverrides'] == null ? null : pulumi.Input.decodeList<X12EnvelopeOverride>(map['envelopeOverrides'], (value) => X12EnvelopeOverride.fromMap((value as Map).cast<String, dynamic>())),
      envelopeSettings: X12EnvelopeSettings.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>()),
      framingSettings: X12FramingSettings.fromMap((map['framingSettings'] as Map).cast<String, dynamic>()),
      messageFilter: X12MessageFilter.fromMap((map['messageFilter'] as Map).cast<String, dynamic>()),
      messageFilterList: map['messageFilterList'] == null ? null : pulumi.Input.decodeList<X12MessageIdentifier>(map['messageFilterList'], (value) => X12MessageIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      processingSettings: X12ProcessingSettings.fromMap((map['processingSettings'] as Map).cast<String, dynamic>()),
      schemaReferences: pulumi.Input.decodeList<X12SchemaReference>(map['schemaReferences'], (value) => X12SchemaReference.fromMap((value as Map).cast<String, dynamic>())),
      securitySettings: X12SecuritySettings.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      validationOverrides: map['validationOverrides'] == null ? null : pulumi.Input.decodeList<X12ValidationOverride>(map['validationOverrides'], (value) => X12ValidationOverride.fromMap((value as Map).cast<String, dynamic>())),
      validationSettings: X12ValidationSettings.fromMap((map['validationSettings'] as Map).cast<String, dynamic>()),
      x12DelimiterOverrides: map['x12DelimiterOverrides'] == null ? null : pulumi.Input.decodeList<X12DelimiterOverrides>(map['x12DelimiterOverrides'], (value) => X12DelimiterOverrides.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

