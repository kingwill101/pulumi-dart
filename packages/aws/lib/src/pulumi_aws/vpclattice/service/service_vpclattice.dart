import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_dns_entry/service_dns_entry.dart';
import 'service_vpclattice_args.dart';

/// Resource for managing an AWS VPC Lattice Service.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/service:Service example svc-06728e2357ea55f8a
/// ```
class ServiceVpclattice extends pulumi.CustomResource {
  /// ARN of the service.
  late final pulumi.Output<String> arn;

  /// Type of IAM policy. Either `NONE` or `AWS_IAM`.
  late final pulumi.Output<String> authType;

  /// Amazon Resource Name (ARN) of the certificate.
  late final pulumi.Output<String?> certificateArn;

  /// Custom domain name of the service.
  late final pulumi.Output<String?> customDomainName;

  /// DNS name of the service.
  late final pulumi.Output<List<ServiceDnsEntry>> dnsEntries;

  /// Name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.Must be between 3 and 40 characters in length.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of the service.
  late final pulumi.Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ServiceVpclattice(
    String name, {
    ServiceVpclatticeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.certificateArn = registerOutput<String?>('certificateArn');
    this.customDomainName = registerOutput<String?>('customDomainName');
    this.dnsEntries = registerOutput<List<ServiceDnsEntry>>('dnsEntries');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
