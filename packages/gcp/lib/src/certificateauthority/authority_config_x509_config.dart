// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_config_x509_config_additional_extension.dart';
import 'authority_config_x509_config_ca_options.dart';
import 'authority_config_x509_config_key_usage.dart';
import 'authority_config_x509_config_name_constraints.dart';
import 'authority_config_x509_config_policy_id.dart';

class AuthorityConfigX509Config {
  /// Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  final List<AuthorityConfigX509ConfigAdditionalExtension>?
      additionalExtensions;

  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final List<String>? aiaOcspServers;

  /// Describes values that are relevant in a CA certificate.
  final AuthorityConfigX509ConfigCaOptions caOptions;

  /// Indicates the intended use for keys that correspond to a certificate.
  final AuthorityConfigX509ConfigKeyUsage keyUsage;

  /// Describes the X.509 name constraints extension.
  final AuthorityConfigX509ConfigNameConstraints? nameConstraints;

  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final List<AuthorityConfigX509ConfigPolicyId>? policyIds;

  /// Creates a new [AuthorityConfigX509Config].
  /// [additionalExtensions] Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  /// [aiaOcspServers] Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// [caOptions] Describes values that are relevant in a CA certificate.
  /// [keyUsage] Indicates the intended use for keys that correspond to a certificate.
  /// [nameConstraints] Describes the X.509 name constraints extension.
  /// [policyIds] Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  AuthorityConfigX509Config({
    this.additionalExtensions,
    this.aiaOcspServers,
    required this.caOptions,
    required this.keyUsage,
    this.nameConstraints,
    this.policyIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExtensionsValue = additionalExtensions;
    if (additionalExtensionsValue != null) {
      map['additionalExtensions'] = pulumi.Input.encodeList<
              AuthorityConfigX509ConfigAdditionalExtension,
              Map<String, dynamic>>(
          additionalExtensionsValue, (value) => value.toMap());
    }
    final aiaOcspServersValue = aiaOcspServers;
    if (aiaOcspServersValue != null) {
      map['aiaOcspServers'] = aiaOcspServersValue;
    }
    map['caOptions'] = caOptions.toMap();
    map['keyUsage'] = keyUsage.toMap();
    final nameConstraintsValue = nameConstraints;
    if (nameConstraintsValue != null) {
      map['nameConstraints'] = nameConstraintsValue.toMap();
    }
    final policyIdsValue = policyIds;
    if (policyIdsValue != null) {
      map['policyIds'] = pulumi.Input.encodeList<
          AuthorityConfigX509ConfigPolicyId,
          Map<String, dynamic>>(policyIdsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthorityConfigX509Config.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigX509Config(
      additionalExtensions: map['additionalExtensions'] == null
          ? null
          : pulumi.Input.decodeList<
                  AuthorityConfigX509ConfigAdditionalExtension>(
              map['additionalExtensions'],
              (value) => AuthorityConfigX509ConfigAdditionalExtension.fromMap(
                  (value as Map).cast<String, dynamic>())),
      aiaOcspServers: map['aiaOcspServers'] == null
          ? null
          : (map['aiaOcspServers'] as List).cast<String>(),
      caOptions: AuthorityConfigX509ConfigCaOptions.fromMap(
          (map['caOptions'] as Map).cast<String, dynamic>()),
      keyUsage: AuthorityConfigX509ConfigKeyUsage.fromMap(
          (map['keyUsage'] as Map).cast<String, dynamic>()),
      nameConstraints: map['nameConstraints'] == null
          ? null
          : AuthorityConfigX509ConfigNameConstraints.fromMap(
              (map['nameConstraints'] as Map).cast<String, dynamic>()),
      policyIds: map['policyIds'] == null
          ? null
          : pulumi.Input.decodeList<AuthorityConfigX509ConfigPolicyId>(
              map['policyIds'],
              (value) => AuthorityConfigX509ConfigPolicyId.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
