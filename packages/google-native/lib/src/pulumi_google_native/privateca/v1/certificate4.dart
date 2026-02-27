import 'package:pulumi/pulumi.dart' hide Config;
import 'certificate_args3.dart';
import 'certificate_config_response.dart';
import 'certificate_description_response.dart';
import 'revocation_details_response.dart';

/// Create a new Certificate in a given Project, Location from a particular CaPool.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Certificate4 extends CustomResource {
  late final Output<String> caPoolId;

  /// A structured description of the issued X.509 certificate.
  late final Output<CertificateDescriptionResponse> certificateDescription;

  /// Optional. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`. This field is required when using a CertificateAuthority in the Enterprise CertificateAuthority.Tier, but is optional and its value is ignored otherwise.
  late final Output<String?> certificateId;

  /// Immutable. The resource name for a CertificateTemplate used to issue this certificate, in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified, the caller must have the necessary permission to use this template. If this is omitted, no template will be used. This template must be in the same location as the Certificate.
  late final Output<String> certificateTemplate;

  /// Immutable. A description of the certificate and key that does not require X.509 or ASN.1.
  late final Output<CertificateConfigResponse> config;

  /// The time at which this Certificate was created.
  late final Output<String> createTime;

  /// The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  late final Output<String> issuerCertificateAuthority;

  /// Optional. The resource ID of the CertificateAuthority that should issue the certificate. This optional field will ignore the load-balancing scheme of the Pool and directly issue the certificate from the CA with the specified ID, contained in the same CaPool referenced by `parent`. Per-CA quota rules apply. If left empty, a CertificateAuthority will be chosen from the CaPool by the service. For example, to issue a Certificate from a Certificate Authority with resource name "projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca", you can set the parent to "projects/my-project/locations/us-central1/caPools/my-pool" and the issuing_certificate_authority_id to "my-ca".
  late final Output<String?> issuingCertificateAuthorityId;

  /// Optional. Labels with user-defined metadata.
  late final Output<Map<String, String>> labels;

  /// Immutable. The desired lifetime of a certificate. Used to create the "not_before_time" and "not_after_time" fields inside an X.509 certificate. Note that the lifetime may be truncated if it would extend past the life of any certificate authority in the issuing chain.
  late final Output<String> lifetime;
  late final Output<String> location;

  /// The resource name for this Certificate in the format `projects/*/locations/*/caPools/*/certificates/*`.
  late final Output<String> name;

  /// The pem-encoded, signed X.509 certificate.
  late final Output<String> pemCertificate;

  /// The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.
  late final Output<List<String>> pemCertificateChain;

  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  late final Output<String> pemCsr;
  late final Output<String> project;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.
  late final Output<RevocationDetailsResponse> revocationDetails;

  /// Immutable. Specifies how the Certificate's identity fields are to be decided. If this is omitted, the `DEFAULT` subject mode will be used.
  late final Output<String> subjectMode;

  /// The time at which this Certificate was updated.
  late final Output<String> updateTime;

  Certificate4(
    String name, {
    CertificateArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:privateca/v1:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.caPoolId = registerOutput<String>('caPoolId');
    this.certificateDescription =
        registerOutput<CertificateDescriptionResponse>(
            'certificateDescription');
    this.certificateId = registerOutput<String?>('certificateId');
    this.certificateTemplate = registerOutput<String>('certificateTemplate');
    this.config = registerOutput<CertificateConfigResponse>('config');
    this.createTime = registerOutput<String>('createTime');
    this.issuerCertificateAuthority =
        registerOutput<String>('issuerCertificateAuthority');
    this.issuingCertificateAuthorityId =
        registerOutput<String?>('issuingCertificateAuthorityId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lifetime = registerOutput<String>('lifetime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pemCertificate = registerOutput<String>('pemCertificate');
    this.pemCertificateChain =
        registerOutput<List<String>>('pemCertificateChain');
    this.pemCsr = registerOutput<String>('pemCsr');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.revocationDetails =
        registerOutput<RevocationDetailsResponse>('revocationDetails');
    this.subjectMode = registerOutput<String>('subjectMode');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
