// ignore_for_file: unused_element, unnecessary_cast

import 'authority_config_subject_config.dart';
import 'authority_config_subject_key_id.dart';
import 'authority_config_x509_config.dart';

class AuthorityConfig {
  /// Specifies some of the values in a certificate that are related to the subject.
  /// Structure is documented below.
  final AuthorityConfigSubjectConfig subjectConfig;
  /// When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  /// Structure is documented below.
  final AuthorityConfigSubjectKeyId? subjectKeyId;
  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  /// Structure is documented below.
  final AuthorityConfigX509Config x509Config;

  /// Creates a new [AuthorityConfig].
  /// [subjectConfig] Specifies some of the values in a certificate that are related to the subject.
  /// [subjectKeyId] When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  /// [x509Config] Describes how some of the technical X.509 fields in a certificate should be populated.
  AuthorityConfig({
    required this.subjectConfig,
    this.subjectKeyId,
    required this.x509Config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectConfig': subjectConfig.toMap(),
      'subjectKeyId': ?subjectKeyId == null ? null : subjectKeyId!.toMap(),
      'x509Config': x509Config.toMap(),
    };
  }

  factory AuthorityConfig.fromMap(Map<String, dynamic> map) {
    return AuthorityConfig(
      subjectConfig: AuthorityConfigSubjectConfig.fromMap((map['subjectConfig'] as Map).cast<String, dynamic>()),
      subjectKeyId: map['subjectKeyId'] == null ? null : AuthorityConfigSubjectKeyId.fromMap((map['subjectKeyId'] as Map).cast<String, dynamic>()),
      x509Config: AuthorityConfigX509Config.fromMap((map['x509Config'] as Map).cast<String, dynamic>()),
    );
  }
}

