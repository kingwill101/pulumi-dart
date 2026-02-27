// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'type.dart';
import 'version_source.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfig {
  /// The HL7v2 type definitions.
  final List<Type>? type;

  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final List<VersionSource>? version;

  Hl7TypesConfig({
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.encodeList<Type, Map<String, dynamic>>(
          typeValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = Input.encodeList<VersionSource, Map<String, dynamic>>(
          versionValue, (value) => value.toMap());
    }
    return map;
  }

  factory Hl7TypesConfig.fromMap(Map<String, dynamic> map) {
    return Hl7TypesConfig(
      type: map['type'] == null
          ? null
          : Input.decodeList<Type>(map['type'],
              (value) => Type.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null
          ? null
          : Input.decodeList<VersionSource>(
              map['version'],
              (value) => VersionSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
