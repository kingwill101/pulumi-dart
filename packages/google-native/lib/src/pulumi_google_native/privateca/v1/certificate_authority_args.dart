// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_type.dart';
import 'certificate_config.dart';
import 'key_version_spec.dart';
import 'subordinate_config.dart';

/// The set of arguments for CertificateAuthority.
class CertificateAuthorityArgs {
  final pulumi.Input<String> caPoolId;

  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> certificateAuthorityId;

  /// Immutable. The config used to create a self-signed X.509 certificate or CSR.
  final pulumi.Input<CertificateConfig> config;

  /// Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish content, such as the CA certificate and CRLs. This must be a bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named `my-bucket`, you would simply specify `my-bucket`. If not specified, a managed bucket will be created.
  final pulumi.Input<String>? gcsBucket;

  /// Immutable. Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA certificate. Otherwise, it is used to sign a CSR.
  final pulumi.Input<KeyVersionSpec> keySpec;

  /// Optional. Labels with user-defined metadata.
  final pulumi.Input<Map<String, String>>? labels;

  /// Immutable. The desired lifetime of the CA certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate.
  final pulumi.Input<String> lifetime;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordinate configuration, which describes its issuers. This may be updated, but this CertificateAuthority must continue to validate.
  final pulumi.Input<SubordinateConfig>? subordinateConfig;

  /// Immutable. The Type of this CertificateAuthority.
  final pulumi.Input<CertificateAuthorityType> type;

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
        pulumi.Input.mapInputValue<CertificateConfig, Map<String, dynamic>>(
            config, (value) => value.toMap());
    final gcsBucketValue = gcsBucket;
    if (gcsBucketValue != null) {
      map['gcsBucket'] = gcsBucketValue;
    }
    map['keySpec'] =
        pulumi.Input.mapInputValue<KeyVersionSpec, Map<String, dynamic>>(
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
      map['subordinateConfig'] = pulumi.Input.mapOptionalInputValue<
              SubordinateConfig, Map<String, dynamic>>(
          subordinateConfigValue, (value) => value.toMap());
    }
    map['type'] = pulumi.Input.mapInputValue<CertificateAuthorityType, String>(
        type, (value) => value.value);
    return map;
  }

  factory CertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityArgs(
      caPoolId: pulumi.Input.asInput<String>(map['caPoolId']),
      certificateAuthorityId:
          pulumi.Input.asInput<String>(map['certificateAuthorityId']),
      config: pulumi.Input.asInput<CertificateConfig>(map['config']),
      gcsBucket: pulumi.Input.asOptionalInput<String>(map['gcsBucket']),
      keySpec: pulumi.Input.asInput<KeyVersionSpec>(map['keySpec']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifetime: pulumi.Input.asInput<String>(map['lifetime']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      subordinateConfig: pulumi.Input.asOptionalInput<SubordinateConfig>(
          map['subordinateConfig']),
      type: pulumi.Input.asInput<CertificateAuthorityType>(map['type']),
    );
  }
}
