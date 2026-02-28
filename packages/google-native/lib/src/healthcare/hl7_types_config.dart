// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'type.dart';
import 'version_source.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfig {
  /// The HL7v2 type definitions.
  final List<Type>? type;
  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final List<VersionSource>? version;

  /// Creates a new [Hl7TypesConfig].
  /// [type] The HL7v2 type definitions.
  /// [version] The version selectors that this config applies to. A message must match ALL version sources to apply.
  Hl7TypesConfig({
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : pulumi.Input.encodeList<Type, Map<String, dynamic>>(type!, (value) => value.toMap()),
      'version': ?version == null ? null : pulumi.Input.encodeList<VersionSource, Map<String, dynamic>>(version!, (value) => value.toMap()),
    };
  }

  factory Hl7TypesConfig.fromMap(Map<String, dynamic> map) {
    return Hl7TypesConfig(
      type: map['type'] == null ? null : pulumi.Input.decodeList<Type>(map['type'], (value) => Type.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Input.decodeList<VersionSource>(map['version'], (value) => VersionSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

