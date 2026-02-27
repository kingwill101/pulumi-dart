import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_args.dart';

/// Resource for managing an AWS VPC Lattice Service Network.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetwork:ServiceNetwork example sn-0158f91c1e3358dba
/// ```
class ServiceNetwork extends pulumi.CustomResource {
  /// ARN of the Service Network.
  late final pulumi.Output<String> arn;

  /// Type of IAM policy. Either `NONE` or `AWS_IAM`.
  late final pulumi.Output<String> authType;

  /// Name of the service network
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ServiceNetwork(
    String name, {
    ServiceNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetwork:ServiceNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
