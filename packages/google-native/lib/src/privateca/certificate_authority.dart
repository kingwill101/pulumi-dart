import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_urls_response.dart';
import 'certificate_authority_args.dart';
import 'certificate_config_response.dart';
import 'certificate_description_response.dart';
import 'key_version_spec_response.dart';
import 'subordinate_config_response.dart';

/// Create a new CertificateAuthority in a given Project and Location.
/// Auto-naming is currently not supported for this resource.
class CertificateAuthority extends pulumi.CustomResource {
  /// URLs for accessing content published by this CA, such as the CA certificate and CRLs.
  late final pulumi.Output<AccessUrlsResponse> accessUrls;
  /// A structured description of this CertificateAuthority's CA certificate and its issuers. Ordered as self-to-root.
  late final pulumi.Output<List<CertificateDescriptionResponse>> caCertificateDescriptions;
  late final pulumi.Output<String> caPoolId;
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final pulumi.Output<String> certificateAuthorityId;
  /// Immutable. The config used to create a self-signed X.509 certificate or CSR.
  late final pulumi.Output<CertificateConfigResponse> config;
  /// The time at which this CertificateAuthority was created.
  late final pulumi.Output<String> createTime;
  /// The time at which this CertificateAuthority was soft deleted, if it is in the DELETED state.
  late final pulumi.Output<String> deleteTime;
  /// The time at which this CertificateAuthority will be permanently purged, if it is in the DELETED state.
  late final pulumi.Output<String> expireTime;
  /// Immutable. The name of a Cloud Storage bucket where this CertificateAuthority will publish content, such as the CA certificate and CRLs. This must be a bucket name, without any prefixes (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named `my-bucket`, you would simply specify `my-bucket`. If not specified, a managed bucket will be created.
  late final pulumi.Output<String> gcsBucket;
  /// Immutable. Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA certificate. Otherwise, it is used to sign a CSR.
  late final pulumi.Output<KeyVersionSpecResponse> keySpec;
  /// Optional. Labels with user-defined metadata.
  late final pulumi.Output<Map<String, String>> labels;
  /// Immutable. The desired lifetime of the CA certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate.
  late final pulumi.Output<String> lifetime;
  late final pulumi.Output<String> location;
  /// The resource name for this CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  late final pulumi.Output<String> name;
  /// This CertificateAuthority's certificate chain, including the current CertificateAuthority's certificate. Ordered such that the root issuer is the final element (consistent with RFC 5246). For a self-signed CA, this will only list the current CertificateAuthority's certificate.
  late final pulumi.Output<List<String>> pemCaCertificates;
  late final pulumi.Output<String> project;
  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The State for this CertificateAuthority.
  late final pulumi.Output<String> state;
  /// Optional. If this is a subordinate CertificateAuthority, this field will be set with the subordinate configuration, which describes its issuers. This may be updated, but this CertificateAuthority must continue to validate.
  late final pulumi.Output<SubordinateConfigResponse> subordinateConfig;
  /// The CaPool.Tier of the CaPool that includes this CertificateAuthority.
  late final pulumi.Output<String> tier;
  /// Immutable. The Type of this CertificateAuthority.
  late final pulumi.Output<String> type;
  /// The time at which this CertificateAuthority was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CertificateAuthority].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateAuthority]. {@macro pulumi_privateca_v1_certificate_authority_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateAuthority(
    String name, {
    CertificateAuthorityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:privateca/v1:CertificateAuthority',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessUrls = registerOutput<AccessUrlsResponse>('accessUrls');
    this.caCertificateDescriptions = registerOutput<List<CertificateDescriptionResponse>>('caCertificateDescriptions');
    this.caPoolId = registerOutput<String>('caPoolId');
    this.certificateAuthorityId = registerOutput<String>('certificateAuthorityId');
    this.config = registerOutput<CertificateConfigResponse>('config');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.gcsBucket = registerOutput<String>('gcsBucket');
    this.keySpec = registerOutput<KeyVersionSpecResponse>('keySpec');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lifetime = registerOutput<String>('lifetime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pemCaCertificates = registerOutput<List<String>>('pemCaCertificates');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.subordinateConfig = registerOutput<SubordinateConfigResponse>('subordinateConfig');
    this.tier = registerOutput<String>('tier');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
