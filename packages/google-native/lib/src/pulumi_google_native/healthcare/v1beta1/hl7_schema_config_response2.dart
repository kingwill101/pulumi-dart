// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'version_source_response2.dart';

/// Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
class Hl7SchemaConfigResponse2 {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  final Map<String, String> messageSchemaConfigs;

  /// Each VersionSource is tested and only if they all match is the schema used for the message.
  final List<VersionSourceResponse2> version;

  Hl7SchemaConfigResponse2({
    required this.messageSchemaConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messageSchemaConfigs'] = messageSchemaConfigs;
    map['version'] =
        Input.encodeList<VersionSourceResponse2, Map<String, dynamic>>(
            version, (value) => value.toMap());
    return map;
  }

  factory Hl7SchemaConfigResponse2.fromMap(Map<String, dynamic> map) {
    return Hl7SchemaConfigResponse2(
      messageSchemaConfigs:
          (map['messageSchemaConfigs'] as Map).cast<String, String>(),
      version: Input.decodeList<VersionSourceResponse2>(
          map['version'],
          (value) => VersionSourceResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
