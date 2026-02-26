// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'type_response2.dart';
import 'version_source_response2.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfigResponse2 {
  /// The HL7v2 type definitions.
  final List<TypeResponse2> type;

  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final List<VersionSourceResponse2> version;

  Hl7TypesConfigResponse2({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = Input.encodeList<TypeResponse2, Map<String, dynamic>>(
        type, (value) => value.toMap());
    map['version'] =
        Input.encodeList<VersionSourceResponse2, Map<String, dynamic>>(
            version, (value) => value.toMap());
    return map;
  }

  factory Hl7TypesConfigResponse2.fromMap(Map<String, dynamic> map) {
    return Hl7TypesConfigResponse2(
      type: Input.decodeList<TypeResponse2>(
          map['type'],
          (value) =>
              TypeResponse2.fromMap((value as Map).cast<String, dynamic>())),
      version: Input.decodeList<VersionSourceResponse2>(
          map['version'],
          (value) => VersionSourceResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
