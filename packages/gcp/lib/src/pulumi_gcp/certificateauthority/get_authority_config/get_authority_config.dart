// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_authority_config_subject_config/get_authority_config_subject_config.dart';
import '../get_authority_config_subject_key_id/get_authority_config_subject_key_id.dart';
import '../get_authority_config_x509_config/get_authority_config_x509_config.dart';

class GetAuthorityConfig {
  /// Specifies some of the values in a certificate that are related to the subject.
  final List<GetAuthorityConfigSubjectConfig> subjectConfigs;

  /// When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  final List<GetAuthorityConfigSubjectKeyId> subjectKeyIds;

  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  final List<GetAuthorityConfigX509Config> x509Configs;

  GetAuthorityConfig({
    required this.subjectConfigs,
    required this.subjectKeyIds,
    required this.x509Configs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subjectConfigs'] =
        Input.encodeList<GetAuthorityConfigSubjectConfig, Map<String, dynamic>>(
            subjectConfigs, (value) => value.toMap());
    map['subjectKeyIds'] =
        Input.encodeList<GetAuthorityConfigSubjectKeyId, Map<String, dynamic>>(
            subjectKeyIds, (value) => value.toMap());
    map['x509Configs'] =
        Input.encodeList<GetAuthorityConfigX509Config, Map<String, dynamic>>(
            x509Configs, (value) => value.toMap());
    return map;
  }

  factory GetAuthorityConfig.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfig(
      subjectConfigs: Input.decodeList<GetAuthorityConfigSubjectConfig>(
          map['subjectConfigs'],
          (value) => GetAuthorityConfigSubjectConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      subjectKeyIds: Input.decodeList<GetAuthorityConfigSubjectKeyId>(
          map['subjectKeyIds'],
          (value) => GetAuthorityConfigSubjectKeyId.fromMap(
              (value as Map).cast<String, dynamic>())),
      x509Configs: Input.decodeList<GetAuthorityConfigX509Config>(
          map['x509Configs'],
          (value) => GetAuthorityConfigX509Config.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
