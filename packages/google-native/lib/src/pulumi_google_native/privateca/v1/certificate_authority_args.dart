// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'certificate_authority_type.dart';
import 'certificate_config.dart';
import 'key_version_spec.dart';
import 'subordinate_config.dart';

/// The set of arguments for CertificateAuthority.
class CertificateAuthorityArgs {
  final Input<String> caPoolId;

  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final Input<String> certificateAuthorityId;

  /// Immutable. The config used to create a self-signed X.509 certificate or CSR.
  final Input<CertificateConfig> config;

  /// Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish content, such as the CA certificate and CRLs. This must be a bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named `my-bucket`, you would simply specify `my-bucket`. If not specified, a managed bucket will be created.
  final Input<String>? gcsBucket;

  /// Immutable. Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA certificate. Otherwise, it is used to sign a CSR.
  final Input<KeyVersionSpec> keySpec;

  /// Optional. Labels with user-defined metadata.
  final Input<Map<String, String>>? labels;

  /// Immutable. The desired lifetime of the CA certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate.
  final Input<String> lifetime;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordinate configuration, which describes its issuers. This may be updated, but this CertificateAuthority must continue to validate.
  final Input<SubordinateConfig>? subordinateConfig;

  /// Immutable. The Type of this CertificateAuthority.
  final Input<CertificateAuthorityType> type;

  CertificateAuthorityArgs({
    required this.caPoolId,
    required this.certificateAuthorityId,
    required this.config,
    this.gcsBucket,
    required this.keySpec,
    this.labels,
    required this.lifetime,
    this.location,
    this.project,
    this.requestId,
    this.subordinateConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPoolId'] = caPoolId;
    map['certificateAuthorityId'] = certificateAuthorityId;
    map['config'] =
        Input.mapInputValue<CertificateConfig, Map<String, dynamic>>(
            config, (value) => value.toMap());
    final gcsBucketValue = gcsBucket;
    if (gcsBucketValue != null) {
      map['gcsBucket'] = gcsBucketValue;
    }
    map['keySpec'] = Input.mapInputValue<KeyVersionSpec, Map<String, dynamic>>(
        keySpec, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lifetime'] = lifetime;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final subordinateConfigValue = subordinateConfig;
    if (subordinateConfigValue != null) {
      map['subordinateConfig'] =
          Input.mapOptionalInputValue<SubordinateConfig, Map<String, dynamic>>(
              subordinateConfigValue, (value) => value.toMap());
    }
    map['type'] = Input.mapInputValue<CertificateAuthorityType, String>(
        type, (value) => value.value);
    return map;
  }

  factory CertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityArgs(
      caPoolId: Input.asInput<String>(map['caPoolId']),
      certificateAuthorityId:
          Input.asInput<String>(map['certificateAuthorityId']),
      config: Input.asInput<CertificateConfig>(map['config']),
      gcsBucket: Input.asOptionalInput<String>(map['gcsBucket']),
      keySpec: Input.asInput<KeyVersionSpec>(map['keySpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifetime: Input.asInput<String>(map['lifetime']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      subordinateConfig:
          Input.asOptionalInput<SubordinateConfig>(map['subordinateConfig']),
      type: Input.asInput<CertificateAuthorityType>(map['type']),
    );
  }
}
