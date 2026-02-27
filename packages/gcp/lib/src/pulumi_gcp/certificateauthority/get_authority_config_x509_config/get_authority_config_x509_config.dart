// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_authority_config_x509_config_additional_extension/get_authority_config_x509_config_additional_extension.dart';
import '../get_authority_config_x509_config_ca_option/get_authority_config_x509_config_ca_option.dart';
import '../get_authority_config_x509_config_key_usage/get_authority_config_x509_config_key_usage.dart';
import '../get_authority_config_x509_config_name_constraint/get_authority_config_x509_config_name_constraint.dart';
import '../get_authority_config_x509_config_policy_id/get_authority_config_x509_config_policy_id.dart';

class GetAuthorityConfigX509Config {
  /// Specifies an X.509 extension, which may be used in different parts of X.509 objects like certificates, CSRs, and CRLs.
  final List<GetAuthorityConfigX509ConfigAdditionalExtension>
      additionalExtensions;

  /// Describes Online Certificate Status Protocol (OCSP) endpoint addresses that appear in the
  /// "Authority Information Access" extension in the certificate.
  final List<String> aiaOcspServers;

  /// Describes values that are relevant in a CA certificate.
  final List<GetAuthorityConfigX509ConfigCaOption> caOptions;

  /// Indicates the intended use for keys that correspond to a certificate.
  final List<GetAuthorityConfigX509ConfigKeyUsage> keyUsages;

  /// Describes the X.509 name constraints extension.
  final List<GetAuthorityConfigX509ConfigNameConstraint> nameConstraints;

  /// Describes the X.509 certificate policy object identifiers, per https://tools.ietf.org/html/rfc5280#section-4.2.1.4.
  final List<GetAuthorityConfigX509ConfigPolicyId> policyIds;

  GetAuthorityConfigX509Config({
    required this.additionalExtensions,
    required this.aiaOcspServers,
    required this.caOptions,
    required this.keyUsages,
    required this.nameConstraints,
    required this.policyIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalExtensions'] = pulumi.Input.encodeList<
        GetAuthorityConfigX509ConfigAdditionalExtension,
        Map<String, dynamic>>(additionalExtensions, (value) => value.toMap());
    map['aiaOcspServers'] = aiaOcspServers;
    map['caOptions'] = pulumi.Input.encodeList<
        GetAuthorityConfigX509ConfigCaOption,
        Map<String, dynamic>>(caOptions, (value) => value.toMap());
    map['keyUsages'] = pulumi.Input.encodeList<
        GetAuthorityConfigX509ConfigKeyUsage,
        Map<String, dynamic>>(keyUsages, (value) => value.toMap());
    map['nameConstraints'] = pulumi.Input.encodeList<
        GetAuthorityConfigX509ConfigNameConstraint,
        Map<String, dynamic>>(nameConstraints, (value) => value.toMap());
    map['policyIds'] = pulumi.Input.encodeList<
        GetAuthorityConfigX509ConfigPolicyId,
        Map<String, dynamic>>(policyIds, (value) => value.toMap());
    return map;
  }

  factory GetAuthorityConfigX509Config.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigX509Config(
      additionalExtensions: pulumi.Input.decodeList<
              GetAuthorityConfigX509ConfigAdditionalExtension>(
          map['additionalExtensions'],
          (value) => GetAuthorityConfigX509ConfigAdditionalExtension.fromMap(
              (value as Map).cast<String, dynamic>())),
      aiaOcspServers: (map['aiaOcspServers'] as List).cast<String>(),
      caOptions: pulumi.Input.decodeList<GetAuthorityConfigX509ConfigCaOption>(
          map['caOptions'],
          (value) => GetAuthorityConfigX509ConfigCaOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      keyUsages: pulumi.Input.decodeList<GetAuthorityConfigX509ConfigKeyUsage>(
          map['keyUsages'],
          (value) => GetAuthorityConfigX509ConfigKeyUsage.fromMap(
              (value as Map).cast<String, dynamic>())),
      nameConstraints:
          pulumi.Input.decodeList<GetAuthorityConfigX509ConfigNameConstraint>(
              map['nameConstraints'],
              (value) => GetAuthorityConfigX509ConfigNameConstraint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      policyIds: pulumi.Input.decodeList<GetAuthorityConfigX509ConfigPolicyId>(
          map['policyIds'],
          (value) => GetAuthorityConfigX509ConfigPolicyId.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
