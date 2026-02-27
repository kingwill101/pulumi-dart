// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_source_response_healthcare_v1beta1.dart';

/// Root config message for HL7v2 schema. This contains a schema structure of groups and segments, and filters that determine which messages to apply the schema structure to.
class Hl7SchemaConfigResponseHealthcareV1beta1 {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04, to its schema configuration root group.
  final Map<String, String> messageSchemaConfigs;

  /// Each VersionSource is tested and only if they all match is the schema used for the message.
  final List<VersionSourceResponseHealthcareV1beta1> version;

  Hl7SchemaConfigResponseHealthcareV1beta1({
    required this.messageSchemaConfigs,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['messageSchemaConfigs'] = messageSchemaConfigs;
    map['version'] = pulumi.Input.encodeList<
        VersionSourceResponseHealthcareV1beta1,
        Map<String, dynamic>>(version, (value) => value.toMap());
    return map;
  }

  factory Hl7SchemaConfigResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return Hl7SchemaConfigResponseHealthcareV1beta1(
      messageSchemaConfigs:
          (map['messageSchemaConfigs'] as Map).cast<String, String>(),
      version: pulumi.Input.decodeList<VersionSourceResponseHealthcareV1beta1>(
          map['version'],
          (value) => VersionSourceResponseHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
