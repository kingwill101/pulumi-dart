import 'package:pulumi/pulumi.dart';
import '../vpc_connection_timeouts/vpc_connection_timeouts.dart';
import 'vpc_connection_args2.dart';

/// Resource for managing an AWS QuickSight VPC Connection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight VPC connection using the AWS account ID and VPC connection ID separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/vpcConnection:VpcConnection example 123456789012,example
/// ```
class VpcConnection2 extends CustomResource {
  /// ARN of the VPC connection.
  late final Output<String> arn;

  /// The availability status of the VPC connection. Valid values are `AVAILABLE`, `UNAVAILABLE` or `PARTIALLY_AVAILABLE`.
  late final Output<String> availabilityStatus;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// A list of IP addresses of DNS resolver endpoints for the VPC connection.
  late final Output<List<String>?> dnsResolvers;

  /// The display name for the VPC connection.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM role to associate with the VPC connection.
  late final Output<String> roleArn;

  /// A list of security group IDs for the VPC connection.
  late final Output<List<String>> securityGroupIds;

  /// A list of subnet IDs for the VPC connection.
  ///
  /// The following arguments are optional:
  late final Output<List<String>> subnetIds;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<VpcConnectionTimeouts?> timeouts;

  /// The ID of the VPC connection.
  late final Output<String> vpcConnectionId;

  VpcConnection2(
    String name, {
    VpcConnectionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/vpcConnection:VpcConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityStatus = registerOutput<String>('availabilityStatus');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.dnsResolvers = registerOutput<List<String>?>('dnsResolvers');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<VpcConnectionTimeouts?>('timeouts');
    this.vpcConnectionId = registerOutput<String>('vpcConnectionId');
  }
}
