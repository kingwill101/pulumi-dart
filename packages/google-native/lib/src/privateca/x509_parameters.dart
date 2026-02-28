// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_options.dart';
import 'key_usage.dart';
import 'name_constraints.dart';
import 'object_id.dart';
import 'x509_extension.dart';

/// An X509Parameters is used to describe certain fields of an X.509 certificate, such as the key usage fields, fields specific to CA certificates, certificate policy extensions and custom extensions.
class X509Parameters {
  /// Optional. Describes custom X.509 extensions.
  final List<X509Extension>? additionalExtensions;

  /// Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  final List<String>? aiaOcspServers;

  /// Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  final CaOptions? caOptions;

  /// Optional. Indicates the intended use for keys that correspond to a certificate.
  final KeyUsage? keyUsage;

  /// Optional. Describes the X.509 name constraints extension.
  final NameConstraints? nameConstraints;

  /// Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final List<ObjectId>? policyIds;

  /// Creates a new [X509Parameters].
  /// [additionalExtensions] Optional. Describes custom X.509 extensions.
  /// [aiaOcspServers] Optional. Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the "Authority Information Access" extension in the certificate.
  /// [caOptions] Optional. Describes options in this X509Parameters that are relevant in a CA certificate.
  /// [keyUsage] Optional. Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Optional. Describes the X.509 name constraints extension.
  /// [policyIds] Optional. Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  X509Parameters({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExtensionsValue = additionalExtensions;
    if (additionalExtensionsValue != null) {
      map['additionalExtensions'] =
          pulumi.Input.encodeList<X509Extension, Map<String, dynamic>>(
              additionalExtensionsValue, (value) => value.toMap());
    }
    final aiaOcspServersValue = aiaOcspServers;
    if (aiaOcspServersValue != null) {
      map['aiaOcspServers'] = aiaOcspServersValue;
    }
    final caOptionsValue = caOptions;
    if (caOptionsValue != null) {
      map['caOptions'] = caOptionsValue.toMap();
    }
    final keyUsageValue = keyUsage;
    if (keyUsageValue != null) {
      map['keyUsage'] = keyUsageValue.toMap();
    }
    final nameConstraintsValue = nameConstraints;
    if (nameConstraintsValue != null) {
      map['nameConstraints'] = nameConstraintsValue.toMap();
    }
    final policyIdsValue = policyIds;
    if (policyIdsValue != null) {
      map['policyIds'] =
          pulumi.Input.encodeList<ObjectId, Map<String, dynamic>>(
              policyIdsValue, (value) => value.toMap());
    }
    return map;
  }

  factory X509Parameters.fromMap(Map<String, dynamic> map) {
    return X509Parameters(
      additionalExtensions: map['additionalExtensions'] == null
          ? null
          : pulumi.Input.decodeList<X509Extension>(
              map['additionalExtensions'],
              (value) => X509Extension.fromMap(
                  (value as Map).cast<String, dynamic>())),
      aiaOcspServers: map['aiaOcspServers'] == null
          ? null
          : (map['aiaOcspServers'] as List).cast<String>(),
      caOptions: map['caOptions'] == null
          ? null
          : CaOptions.fromMap(
              (map['caOptions'] as Map).cast<String, dynamic>()),
      keyUsage: map['keyUsage'] == null
          ? null
          : KeyUsage.fromMap((map['keyUsage'] as Map).cast<String, dynamic>()),
      nameConstraints: map['nameConstraints'] == null
          ? null
          : NameConstraints.fromMap(
              (map['nameConstraints'] as Map).cast<String, dynamic>()),
      policyIds: map['policyIds'] == null
          ? null
          : pulumi.Input.decodeList<ObjectId>(
              map['policyIds'],
              (value) =>
                  ObjectId.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
