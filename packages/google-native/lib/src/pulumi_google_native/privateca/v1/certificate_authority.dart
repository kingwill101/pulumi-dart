import 'package:pulumi/pulumi.dart';
import 'access_urls_response.dart';
import 'certificate_authority_args.dart';
import 'certificate_config_response.dart';
import 'certificate_description_response.dart';
import 'key_version_spec_response.dart';
import 'subordinate_config_response.dart';

/// Create a new CertificateAuthority in a given Project and Location.
/// Auto-naming is currently not supported for this resource.
class CertificateAuthority extends CustomResource {
  /// URLs for accessing content published by this CA, such as the CA certificate and CRLs.
  late final Output<AccessUrlsResponse> accessUrls;

  /// A structured description of this CertificateAuthority's CA certificate and its issuers. Ordered as self-to-root.
  late final Output<List<CertificateDescriptionResponse>>
      caCertificateDescriptions;
  late final Output<String> caPoolId;

  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final Output<String> certificateAuthorityId;

  /// Immutable. The config used to create a self-signed X.509 certificate or CSR.
  late final Output<CertificateConfigResponse> config;

  /// The time at which this CertificateAuthority was created.
  late final Output<String> createTime;

  /// The time at which this CertificateAuthority was soft deleted, if it is in the DELETED state.
  late final Output<String> deleteTime;

  /// The time at which this CertificateAuthority will be permanently purged, if it is in the DELETED state.
  late final Output<String> expireTime;

  /// Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish content, such as the CA certificate and CRLs. This must be a bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named `my-bucket`, you would simply specify `my-bucket`. If not specified, a managed bucket will be created.
  late final Output<String> gcsBucket;

  /// Immutable. Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA certificate. Otherwise, it is used to sign a CSR.
  late final Output<KeyVersionSpecResponse> keySpec;

  /// Optional. Labels with user-defined metadata.
  late final Output<Map<String, String>> labels;

  /// Immutable. The desired lifetime of the CA certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate.
  late final Output<String> lifetime;
  late final Output<String> location;

  /// The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  late final Output<String> name;

  /// This CertificateAuthority's certificate chain, including the current CertificateAuthority's certificate. Ordered such that the root issuer is the final element (consistent with RFC 5246). For a self-signed CA, this will only list the current CertificateAuthority's certificate.
  late final Output<List<String>> pemCaCertificates;
  late final Output<String> project;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The State for this CertificateAuthority.
  late final Output<String> state;

  /// Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordinate configuration, which describes its issuers. This may be updated, but this CertificateAuthority must continue to validate.
  late final Output<SubordinateConfigResponse> subordinateConfig;

  /// The CaPool.Tier of the CaPool that includes this CertificateAuthority.
  late final Output<String> tier;

  /// Immutable. The Type of this CertificateAuthority.
  late final Output<String> type;

  /// The time at which this CertificateAuthority was last updated.
  late final Output<String> updateTime;

  CertificateAuthority(
    String name, {
    CertificateAuthorityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:privateca/v1:CertificateAuthority',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessUrls = Output.createUnknown<AccessUrlsResponse>();
    this.caCertificateDescriptions =
        Output.createUnknown<List<CertificateDescriptionResponse>>();
    this.caPoolId = Output.createUnknown<String>();
    this.certificateAuthorityId = Output.createUnknown<String>();
    this.config = Output.createUnknown<CertificateConfigResponse>();
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.expireTime = Output.createUnknown<String>();
    this.gcsBucket = Output.createUnknown<String>();
    this.keySpec = Output.createUnknown<KeyVersionSpecResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lifetime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.pemCaCertificates = Output.createUnknown<List<String>>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.state = Output.createUnknown<String>();
    this.subordinateConfig = Output.createUnknown<SubordinateConfigResponse>();
    this.tier = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
