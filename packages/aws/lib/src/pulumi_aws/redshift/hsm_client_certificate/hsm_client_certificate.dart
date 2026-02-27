import 'package:pulumi/pulumi.dart';
import 'hsm_client_certificate_args.dart';

/// Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift HSM Client Certificates using `hsm_client_certificate_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/hsmClientCertificate:HsmClientCertificate test example
/// ```
class HsmClientCertificate extends CustomResource {
  /// Amazon Resource Name (ARN) of the Hsm Client Certificate.
  late final Output<String> arn;

  /// The identifier of the HSM client certificate.
  late final Output<String> hsmClientCertificateIdentifier;

  /// The public key that the Amazon Redshift cluster will use to connect to the HSM. You must register the public key in the HSM.
  late final Output<String> hsmClientCertificatePublicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  HsmClientCertificate(
    String name, {
    HsmClientCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/hsmClientCertificate:HsmClientCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hsmClientCertificateIdentifier =
        registerOutput<String>('hsmClientCertificateIdentifier');
    this.hsmClientCertificatePublicKey =
        registerOutput<String>('hsmClientCertificatePublicKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
