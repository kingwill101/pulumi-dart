// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'type_healthcare_v1beta1.dart';
import 'version_source_healthcare_v1beta1.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfigHealthcareV1beta1 {
  /// The HL7v2 type definitions.
  final List<TypeHealthcareV1beta1>? type;

  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final List<VersionSourceHealthcareV1beta1>? version;

  /// Creates a new [Hl7TypesConfigHealthcareV1beta1].
  /// [type] The HL7v2 type definitions.
  /// [version] The version selectors that this config applies to. A message must match ALL version sources to apply.
  Hl7TypesConfigHealthcareV1beta1({this.type, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null
          ? null
          : pulumi.Input.encodeList<
              TypeHealthcareV1beta1,
              Map<String, dynamic>
            >(type!, (value) => value.toMap()),
      'version': ?version == null
          ? null
          : pulumi.Input.encodeList<
              VersionSourceHealthcareV1beta1,
              Map<String, dynamic>
            >(version!, (value) => value.toMap()),
    };
  }

  factory Hl7TypesConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return Hl7TypesConfigHealthcareV1beta1(
      type: map['type'] == null
          ? null
          : pulumi.Input.decodeList<TypeHealthcareV1beta1>(
              map['type'],
              (value) => TypeHealthcareV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      version: map['version'] == null
          ? null
          : pulumi.Input.decodeList<VersionSourceHealthcareV1beta1>(
              map['version'],
              (value) => VersionSourceHealthcareV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
