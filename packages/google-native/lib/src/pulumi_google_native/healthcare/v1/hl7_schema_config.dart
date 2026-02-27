// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'version_source.dart';

/// Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
class Hl7SchemaConfig {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  final Map<String, String>? messageSchemaConfigs;

  /// Each VersionSource is tested and only if they all match is the schema used for the message.
  final List<VersionSource>? version;

  Hl7SchemaConfig({
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
      map['version'] = Input.encodeList<VersionSource, Map<String, dynamic>>(
          versionValue, (value) => value.toMap());
    }
    return map;
  }

  factory Hl7SchemaConfig.fromMap(Map<String, dynamic> map) {
    return Hl7SchemaConfig(
      messageSchemaConfigs: map['messageSchemaConfigs'] == null
          ? null
          : (map['messageSchemaConfigs'] as Map).cast<String, String>(),
      version: map['version'] == null
          ? null
          : Input.decodeList<VersionSource>(
              map['version'],
              (value) => VersionSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
