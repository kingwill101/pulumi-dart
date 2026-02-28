// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_source_healthcare_v1beta1.dart';

/// Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
class Hl7SchemaConfigHealthcareV1beta1 {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  final Map<String, String>? messageSchemaConfigs;

  /// Each VersionSource is tested and only if they all match is the schema used for the message.
  final List<VersionSourceHealthcareV1beta1>? version;

  /// Creates a new [Hl7SchemaConfigHealthcareV1beta1].
  /// [messageSchemaConfigs] Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  /// [version] Each VersionSource is tested and only if they all match is the schema used for the message.
  Hl7SchemaConfigHealthcareV1beta1({
    this.messageSchemaConfigs,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageSchemaConfigsValue = messageSchemaConfigs;
    if (messageSchemaConfigsValue != null) {
      map['messageSchemaConfigs'] = messageSchemaConfigsValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = pulumi.Input.encodeList<VersionSourceHealthcareV1beta1,
          Map<String, dynamic>>(versionValue, (value) => value.toMap());
    }
    return map;
  }

  factory Hl7SchemaConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return Hl7SchemaConfigHealthcareV1beta1(
      messageSchemaConfigs: map['messageSchemaConfigs'] == null
          ? null
          : (map['messageSchemaConfigs'] as Map).cast<String, String>(),
      version: map['version'] == null
          ? null
          : pulumi.Input.decodeList<VersionSourceHealthcareV1beta1>(
              map['version'],
              (value) => VersionSourceHealthcareV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
