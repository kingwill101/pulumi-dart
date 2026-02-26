// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../certificate_config_x509_config_additional_extension/certificate_config_x509_config_additional_extension.dart';
import '../certificate_config_x509_config_ca_options/certificate_config_x509_config_ca_options.dart';
import '../certificate_config_x509_config_key_usage/certificate_config_x509_config_key_usage.dart';
import '../certificate_config_x509_config_name_constraints/certificate_config_x509_config_name_constraints.dart';
import '../certificate_config_x509_config_policy_id/certificate_config_x509_config_policy_id.dart';

class CertificateConfigX509Config {
  /// (Output)
  /// Describes custom X.509 extensions.
  /// Structure is documented below.
  final List<CertificateConfigX509ConfigAdditionalExtension>?
      additionalExtensions;

  /// (Output)
  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final List<String>? aiaOcspServers;

  /// (Output)
  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final CertificateConfigX509ConfigCaOptions? caOptions;

  /// (Output)
  /// Indicates the intended use for keys that correspond to a certificate.
  /// Structure is documented below.
  final CertificateConfigX509ConfigKeyUsage keyUsage;

  /// (Output)
  /// Describes the X.509 name constraints extension.
  /// Structure is documented below.
  final CertificateConfigX509ConfigNameConstraints? nameConstraints;

  /// (Output)
  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  /// Structure is documented below.
  final List<CertificateConfigX509ConfigPolicyId>? policyIds;

  CertificateConfigX509Config({
    this.additionalExtensions,
    this.aiaOcspServers,
    this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExtensionsValue = additionalExtensions;
    if (additionalExtensionsValue != null) {
      map['additionalExtensions'] = Input.encodeList<
              CertificateConfigX509ConfigAdditionalExtension,
              Map<String, dynamic>>(
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
    map['keyUsage'] = keyUsage.toMap();
    final nameConstraintsValue = nameConstraints;
    if (nameConstraintsValue != null) {
      map['nameConstraints'] = nameConstraintsValue.toMap();
    }
    final policyIdsValue = policyIds;
    if (policyIdsValue != null) {
      map['policyIds'] = Input.encodeList<CertificateConfigX509ConfigPolicyId,
          Map<String, dynamic>>(policyIdsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CertificateConfigX509Config.fromMap(Map<String, dynamic> map) {
    return CertificateConfigX509Config(
      additionalExtensions: map['additionalExtensions'] == null
          ? null
          : Input.decodeList<CertificateConfigX509ConfigAdditionalExtension>(
              map['additionalExtensions'],
              (value) => CertificateConfigX509ConfigAdditionalExtension.fromMap(
                  (value as Map).cast<String, dynamic>())),
      aiaOcspServers: map['aiaOcspServers'] == null
          ? null
          : (map['aiaOcspServers'] as List).cast<String>(),
      caOptions: map['caOptions'] == null
          ? null
          : CertificateConfigX509ConfigCaOptions.fromMap(
              (map['caOptions'] as Map).cast<String, dynamic>()),
      keyUsage: CertificateConfigX509ConfigKeyUsage.fromMap(
          (map['keyUsage'] as Map).cast<String, dynamic>()),
      nameConstraints: map['nameConstraints'] == null
          ? null
          : CertificateConfigX509ConfigNameConstraints.fromMap(
              (map['nameConstraints'] as Map).cast<String, dynamic>()),
      policyIds: map['policyIds'] == null
          ? null
          : Input.decodeList<CertificateConfigX509ConfigPolicyId>(
              map['policyIds'],
              (value) => CertificateConfigX509ConfigPolicyId.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
