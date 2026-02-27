// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'type_response.dart';
import 'version_source_response.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfigResponse {
  /// The HL7v2 type definitions.
  final List<TypeResponse> type;

  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final List<VersionSourceResponse> version;

  Hl7TypesConfigResponse({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = Input.encodeList<TypeResponse, Map<String, dynamic>>(
        type, (value) => value.toMap());
    map['version'] =
        Input.encodeList<VersionSourceResponse, Map<String, dynamic>>(
            version, (value) => value.toMap());
    return map;
  }

  factory Hl7TypesConfigResponse.fromMap(Map<String, dynamic> map) {
    return Hl7TypesConfigResponse(
      type: Input.decodeList<TypeResponse>(
          map['type'],
          (value) =>
              TypeResponse.fromMap((value as Map).cast<String, dynamic>())),
      version: Input.decodeList<VersionSourceResponse>(
          map['version'],
          (value) => VersionSourceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
