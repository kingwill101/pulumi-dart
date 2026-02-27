import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_certificate_args.dart';

/// Provides an API Gateway Client Certificate.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway Client Certificates using the id. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/clientCertificate:ClientCertificate demo ab1cqe
/// ```
class ClientCertificate extends pulumi.CustomResource {
  /// ARN
  late final pulumi.Output<String> arn;

  /// Date when the client certificate was created.
  late final pulumi.Output<String> createdDate;

  /// Description of the client certificate.
  late final pulumi.Output<String?> description;

  /// Date when the client certificate will expire.
  late final pulumi.Output<String> expirationDate;

  /// The PEM-encoded public key of the client certificate.
  late final pulumi.Output<String> pemEncodedCertificate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ClientCertificate(
    String name, {
    ClientCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/clientCertificate:ClientCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.pemEncodedCertificate =
        registerOutput<String>('pemEncodedCertificate');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
