import 'package:pulumi/pulumi.dart';
import 'certificate_args2.dart';
import 'google_cloud_integrations_v1alpha_client_certificate_response.dart';

/// Creates a new certificate. The certificate will be registered to the trawler service and will be encrypted using cloud KMS and stored in Spanner Returns the certificate.
/// Auto-naming is currently not supported for this resource.
class Certificate3 extends CustomResource {
  /// Status of the certificate
  late final Output<String> certificateStatus;

  /// Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  late final Output<String> credentialId;

  /// Description of the certificate
  late final Output<String> description;

  /// Name of the certificate
  late final Output<String> displayName;
  late final Output<String> location;

  /// Auto generated primary key
  late final Output<String> name;
  late final Output<String> productId;
  late final Output<String> project;

  /// Input only. Raw client certificate which would be registered with trawler
  late final Output<GoogleCloudIntegrationsV1alphaClientCertificateResponse>
      rawCertificate;

  /// Immutable. Requestor ID to be used to register certificate with trawler
  late final Output<String> requestorId;

  /// The timestamp after which certificate will expire
  late final Output<String> validEndTime;

  /// The timestamp after which certificate will be valid
  late final Output<String> validStartTime;

  Certificate3(
    String name, {
    CertificateArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:integrations/v1alpha:Certificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateStatus = registerOutput<String>('certificateStatus');
    this.credentialId = registerOutput<String>('credentialId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.productId = registerOutput<String>('productId');
    this.project = registerOutput<String>('project');
    this.rawCertificate =
        registerOutput<GoogleCloudIntegrationsV1alphaClientCertificateResponse>(
            'rawCertificate');
    this.requestorId = registerOutput<String>('requestorId');
    this.validEndTime = registerOutput<String>('validEndTime');
    this.validStartTime = registerOutput<String>('validStartTime');
  }
}
