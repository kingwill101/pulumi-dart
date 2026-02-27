// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'access_urls_response.dart';
import 'certificate_config_response.dart';
import 'certificate_description_response.dart';
import 'key_version_spec_response.dart';
import 'subordinate_config_response.dart';

/// Result data returned by getCertificateAuthority.
class GetCertificateAuthorityResult {
  /// URLs for accessing content published by this CA, such as the CA certificate and CRLs.
  final AccessUrlsResponse accessUrls;

  /// A structured description of this CertificateAuthority's CA certificate and its issuers. Ordered as self-to-root.
  final List<CertificateDescriptionResponse> caCertificateDescriptions;

  /// Immutable. The config used to create a self-signed X.509 certificate or CSR.
  final CertificateConfigResponse config;

  /// The time at which this CertificateAuthority was created.
  final String createTime;

  /// The time at which this CertificateAuthority was soft deleted, if it is in the DELETED state.
  final String deleteTime;

  /// The time at which this CertificateAuthority will be permanently purged, if it is in the DELETED state.
  final String expireTime;

  /// Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish content, such as the CA certificate and CRLs. This must be a bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named `my-bucket`, you would simply specify `my-bucket`. If not specified, a managed bucket will be created.
  final String gcsBucket;

  /// Immutable. Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA certificate. Otherwise, it is used to sign a CSR.
  final KeyVersionSpecResponse keySpec;

  /// Optional. Labels with user-defined metadata.
  final Map<String, String> labels;

  /// Immutable. The desired lifetime of the CA certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate.
  final String lifetime;

  /// The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final String name;

  /// This CertificateAuthority's certificate chain, including the current CertificateAuthority's certificate. Ordered such that the root issuer is the final element (consistent with RFC 5246). For a self-signed CA, this will only list the current CertificateAuthority's certificate.
  final List<String> pemCaCertificates;

  /// The State for this CertificateAuthority.
  final String state;

  /// Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordinate configuration, which describes its issuers. This may be updated, but this CertificateAuthority must continue to validate.
  final SubordinateConfigResponse subordinateConfig;

  /// The CaPool.Tier of the CaPool that includes this CertificateAuthority.
  final String tier;

  /// Immutable. The Type of this CertificateAuthority.
  final String type;

  /// The time at which this CertificateAuthority was last updated.
  final String updateTime;

  GetCertificateAuthorityResult({
    required this.accessUrls,
    required this.caCertificateDescriptions,
    required this.config,
    required this.createTime,
    required this.deleteTime,
    required this.expireTime,
    required this.gcsBucket,
    required this.keySpec,
    required this.labels,
    required this.lifetime,
    required this.name,
    required this.pemCaCertificates,
    required this.state,
    required this.subordinateConfig,
    required this.tier,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessUrls'] = accessUrls.toMap();
    map['caCertificateDescriptions'] =
        Input.encodeList<CertificateDescriptionResponse, Map<String, dynamic>>(
            caCertificateDescriptions, (value) => value.toMap());
    map['config'] = config.toMap();
    map['createTime'] = createTime;
    map['deleteTime'] = deleteTime;
    map['expireTime'] = expireTime;
    map['gcsBucket'] = gcsBucket;
    map['keySpec'] = keySpec.toMap();
    map['labels'] = labels;
    map['lifetime'] = lifetime;
    map['name'] = name;
    map['pemCaCertificates'] = pemCaCertificates;
    map['state'] = state;
    map['subordinateConfig'] = subordinateConfig.toMap();
    map['tier'] = tier;
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetCertificateAuthorityResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityResult(
      accessUrls: AccessUrlsResponse.fromMap(
          (map['accessUrls'] as Map).cast<String, dynamic>()),
      caCertificateDescriptions:
          Input.decodeList<CertificateDescriptionResponse>(
              map['caCertificateDescriptions'],
              (value) => CertificateDescriptionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      config: CertificateConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      expireTime: map['expireTime'] as String,
      gcsBucket: map['gcsBucket'] as String,
      keySpec: KeyVersionSpecResponse.fromMap(
          (map['keySpec'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      lifetime: map['lifetime'] as String,
      name: map['name'] as String,
      pemCaCertificates: (map['pemCaCertificates'] as List).cast<String>(),
      state: map['state'] as String,
      subordinateConfig: SubordinateConfigResponse.fromMap(
          (map['subordinateConfig'] as Map).cast<String, dynamic>()),
      tier: map['tier'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
