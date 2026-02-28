// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'type_response_healthcare_v1beta1.dart';
import 'version_source_response_healthcare_v1beta1.dart';

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfigResponseHealthcareV1beta1 {
  /// The HL7v2 type definitions.
  final List<TypeResponseHealthcareV1beta1> type;

  /// The version selectors that this config applies to. A message must match ALL version sources to apply.
  final List<VersionSourceResponseHealthcareV1beta1> version;

  /// Creates a new [Hl7TypesConfigResponseHealthcareV1beta1].
  /// [type] The HL7v2 type definitions.
  /// [version] The version selectors that this config applies to. A message must match ALL version sources to apply.
  Hl7TypesConfigResponseHealthcareV1beta1({
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = pulumi.Input.encodeList<TypeResponseHealthcareV1beta1,
        Map<String, dynamic>>(type, (value) => value.toMap());
    map['version'] = pulumi.Input.encodeList<
        VersionSourceResponseHealthcareV1beta1,
        Map<String, dynamic>>(version, (value) => value.toMap());
    return map;
  }

  factory Hl7TypesConfigResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return Hl7TypesConfigResponseHealthcareV1beta1(
      type: pulumi.Input.decodeList<TypeResponseHealthcareV1beta1>(
          map['type'],
          (value) => TypeResponseHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: pulumi.Input.decodeList<VersionSourceResponseHealthcareV1beta1>(
          map['version'],
          (value) => VersionSourceResponseHealthcareV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
