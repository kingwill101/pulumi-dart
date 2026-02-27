// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_source_response.dart';

/// Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
class Hl7SchemaConfigResponse {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  final Map<String, String> messageSchemaConfigs;

  /// Each VersionSource is tested and only if they all match is the schema used for the message.
  final List<VersionSourceResponse> version;

  Hl7SchemaConfigResponse({
    required this.messageSchemaConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messageSchemaConfigs'] = messageSchemaConfigs;
    map['version'] =
        pulumi.Input.encodeList<VersionSourceResponse, Map<String, dynamic>>(
            version, (value) => value.toMap());
    return map;
  }

  factory Hl7SchemaConfigResponse.fromMap(Map<String, dynamic> map) {
    return Hl7SchemaConfigResponse(
      messageSchemaConfigs:
          (map['messageSchemaConfigs'] as Map).cast<String, String>(),
      version: pulumi.Input.decodeList<VersionSourceResponse>(
          map['version'],
          (value) => VersionSourceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
