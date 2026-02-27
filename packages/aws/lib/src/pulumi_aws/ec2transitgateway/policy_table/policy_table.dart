import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_table_args.dart';

/// Manages an EC2 Transit Gateway Policy Table.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.PolicyTable` using the EC2 Transit Gateway Policy Table identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/policyTable:PolicyTable example tgw-rtb-12345678
/// ```
class PolicyTable extends pulumi.CustomResource {
  /// EC2 Transit Gateway Policy Table Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The state of the EC2 Transit Gateway Policy Table.
  late final pulumi.Output<String> state;

  /// Key-value tags for the EC2 Transit Gateway Policy Table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// EC2 Transit Gateway identifier.
  late final pulumi.Output<String> transitGatewayId;

  PolicyTable(
    String name, {
    PolicyTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/policyTable:PolicyTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
