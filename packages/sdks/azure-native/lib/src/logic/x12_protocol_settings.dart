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
  final pulumi.Input<X12AcknowledgementSettings> acknowledgementSettings;

  /// The X12 envelope override settings.
  final pulumi.Input<List<X12EnvelopeOverride>>? envelopeOverrides;

  /// The X12 envelope settings.
  final pulumi.Input<X12EnvelopeSettings> envelopeSettings;

  /// The X12 framing settings.
  final pulumi.Input<X12FramingSettings> framingSettings;

  /// The X12 message filter.
  final pulumi.Input<X12MessageFilter> messageFilter;

  /// The X12 message filter list.
  final pulumi.Input<List<X12MessageIdentifier>>? messageFilterList;

  /// The X12 processing settings.
  final pulumi.Input<X12ProcessingSettings> processingSettings;

  /// The X12 schema references.
  final pulumi.Input<List<X12SchemaReference>> schemaReferences;

  /// The X12 security settings.
  final pulumi.Input<X12SecuritySettings> securitySettings;

  /// The X12 validation override settings.
  final pulumi.Input<List<X12ValidationOverride>>? validationOverrides;

  /// The X12 validation settings.
  final pulumi.Input<X12ValidationSettings> validationSettings;

  /// The X12 delimiter override settings.
  final pulumi.Input<List<X12DelimiterOverrides>>? x12DelimiterOverrides;

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
      'acknowledgementSettings':
          pulumi.Input.mapInputValue<
            X12AcknowledgementSettings,
            Map<String, dynamic>
          >(acknowledgementSettings, (value) => value.toMap()),
      'envelopeOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<X12EnvelopeOverride>,
            List<Map<String, dynamic>>
          >(
            envelopeOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  X12EnvelopeOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'envelopeSettings':
          pulumi.Input.mapInputValue<X12EnvelopeSettings, Map<String, dynamic>>(
            envelopeSettings,
            (value) => value.toMap(),
          ),
      'framingSettings':
          pulumi.Input.mapInputValue<X12FramingSettings, Map<String, dynamic>>(
            framingSettings,
            (value) => value.toMap(),
          ),
      'messageFilter':
          pulumi.Input.mapInputValue<X12MessageFilter, Map<String, dynamic>>(
            messageFilter,
            (value) => value.toMap(),
          ),
      'messageFilterList':
          ?pulumi.Input.mapOptionalInputValue<
            List<X12MessageIdentifier>,
            List<Map<String, dynamic>>
          >(
            messageFilterList,
            (value) =>
                pulumi.Input.encodeList<
                  X12MessageIdentifier,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'processingSettings':
          pulumi.Input.mapInputValue<
            X12ProcessingSettings,
            Map<String, dynamic>
          >(processingSettings, (value) => value.toMap()),
      'schemaReferences':
          pulumi.Input.mapInputValue<
            List<X12SchemaReference>,
            List<Map<String, dynamic>>
          >(
            schemaReferences,
            (value) =>
                pulumi.Input.encodeList<
                  X12SchemaReference,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'securitySettings':
          pulumi.Input.mapInputValue<X12SecuritySettings, Map<String, dynamic>>(
            securitySettings,
            (value) => value.toMap(),
          ),
      'validationOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<X12ValidationOverride>,
            List<Map<String, dynamic>>
          >(
            validationOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  X12ValidationOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'validationSettings':
          pulumi.Input.mapInputValue<
            X12ValidationSettings,
            Map<String, dynamic>
          >(validationSettings, (value) => value.toMap()),
      'x12DelimiterOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<X12DelimiterOverrides>,
            List<Map<String, dynamic>>
          >(
            x12DelimiterOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  X12DelimiterOverrides,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory X12ProtocolSettings.fromMap(Map<String, dynamic> map) {
    return X12ProtocolSettings(
      acknowledgementSettings: pulumi.Input.fromValue(
        X12AcknowledgementSettings.fromMap(
          (map['acknowledgementSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      envelopeOverrides: (() {
        final guardedValue = map['envelopeOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<X12EnvelopeOverride>(
            guardedValue,
            (value) => X12EnvelopeOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      envelopeSettings: pulumi.Input.fromValue(
        X12EnvelopeSettings.fromMap(
          (map['envelopeSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      framingSettings: pulumi.Input.fromValue(
        X12FramingSettings.fromMap(
          (map['framingSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      messageFilter: pulumi.Input.fromValue(
        X12MessageFilter.fromMap(
          (map['messageFilter']! as Map).cast<String, dynamic>(),
        ),
      ),
      messageFilterList: (() {
        final guardedValue = map['messageFilterList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<X12MessageIdentifier>(
            guardedValue,
            (value) => X12MessageIdentifier.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      processingSettings: pulumi.Input.fromValue(
        X12ProcessingSettings.fromMap(
          (map['processingSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      schemaReferences: pulumi.Input.fromValue(
        pulumi.Input.decodeList<X12SchemaReference>(
          map['schemaReferences']!,
          (value) => X12SchemaReference.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      securitySettings: pulumi.Input.fromValue(
        X12SecuritySettings.fromMap(
          (map['securitySettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      validationOverrides: (() {
        final guardedValue = map['validationOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<X12ValidationOverride>(
            guardedValue,
            (value) => X12ValidationOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      validationSettings: pulumi.Input.fromValue(
        X12ValidationSettings.fromMap(
          (map['validationSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      x12DelimiterOverrides: (() {
        final guardedValue = map['x12DelimiterOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<X12DelimiterOverrides>(
            guardedValue,
            (value) => X12DelimiterOverrides.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
