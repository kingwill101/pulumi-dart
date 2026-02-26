// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'certificate_extension_constraints_known_extensions_item.dart';
import 'object_id.dart';

/// Describes a set of X.509 extensions that may be part of some certificate issuance controls.
class CertificateExtensionConstraints {
  /// Optional. A set of ObjectIds identifying custom X.509 extensions. Will be combined with known_extensions to determine the full set of X.509 extensions.
  final List<ObjectId>? additionalExtensions;

  /// Optional. A set of named X.509 extensions. Will be combined with additional_extensions to determine the full set of X.509 extensions.
  final List<CertificateExtensionConstraintsKnownExtensionsItem>?
      knownExtensions;

  CertificateExtensionConstraints({
    this.additionalExtensions,
    this.knownExtensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExtensionsValue = additionalExtensions;
    if (additionalExtensionsValue != null) {
      map['additionalExtensions'] =
          Input.encodeList<ObjectId, Map<String, dynamic>>(
              additionalExtensionsValue, (value) => value.toMap());
    }
    final knownExtensionsValue = knownExtensions;
    if (knownExtensionsValue != null) {
      map['knownExtensions'] = Input.encodeList<
          CertificateExtensionConstraintsKnownExtensionsItem,
          String>(knownExtensionsValue, (value) => value.value);
    }
    return map;
  }

  factory CertificateExtensionConstraints.fromMap(Map<String, dynamic> map) {
    return CertificateExtensionConstraints(
      additionalExtensions: map['additionalExtensions'] == null
          ? null
          : Input.decodeList<ObjectId>(
              map['additionalExtensions'],
              (value) =>
                  ObjectId.fromMap((value as Map).cast<String, dynamic>())),
      knownExtensions: map['knownExtensions'] == null
          ? null
          : Input.decodeList<
                  CertificateExtensionConstraintsKnownExtensionsItem>(
              map['knownExtensions'],
              (value) =>
                  CertificateExtensionConstraintsKnownExtensionsItem.fromValue(
                      value as String)),
    );
  }
}
