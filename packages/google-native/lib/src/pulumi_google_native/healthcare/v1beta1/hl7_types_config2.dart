// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'type2.dart';
import 'version_source2.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfig2 {
  /// The HL7v2 type definitions.
  final List<Type2>? type;

  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final List<VersionSource2>? version;

  Hl7TypesConfig2({
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.encodeList<Type2, Map<String, dynamic>>(
          typeValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = Input.encodeList<VersionSource2, Map<String, dynamic>>(
          versionValue, (value) => value.toMap());
    }
    return map;
  }

  factory Hl7TypesConfig2.fromMap(Map<String, dynamic> map) {
    return Hl7TypesConfig2(
      type: map['type'] == null
          ? null
          : Input.decodeList<Type2>(map['type'],
              (value) => Type2.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null
          ? null
          : Input.decodeList<VersionSource2>(
              map['version'],
              (value) => VersionSource2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
