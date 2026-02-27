import 'package:pulumi/pulumi.dart';
import '../kx_environment_custom_dns_configuration/kx_environment_custom_dns_configuration.dart';
import '../kx_environment_transit_gateway_configuration/kx_environment_transit_gateway_configuration.dart';
import 'kx_environment_args.dart';

/// Resource for managing an AWS FinSpace Kx Environment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Transit Gateway Configuration
///
///
///
/// ### With Transit Gateway Attachment Network ACL Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Environment using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxEnvironment:KxEnvironment example n3ceo7wqxoxcti5tujqwzs
/// ```
class KxEnvironment extends CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX environment.
  late final Output<String> arn;

  /// AWS Availability Zone IDs that this environment is available in. Important when selecting VPC subnets to use in cluster creation.
  late final Output<List<String>> availabilityZones;

  /// Timestamp at which the environment is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final Output<String> createdTimestamp;

  /// List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  late final Output<List<KxEnvironmentCustomDnsConfiguration>?>
      customDnsConfigurations;

  /// Description for the KX environment.
  late final Output<String?> description;

  /// Unique identifier for the AWS environment infrastructure account.
  late final Output<String> infrastructureAccountId;

  /// KMS key ID to encrypt your data in the FinSpace environment.
  ///
  /// The following arguments are optional:
  late final Output<String> kmsKeyId;

  /// Last timestamp at which the environment was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final Output<String> lastModifiedTimestamp;

  /// Name of the KX environment that you want to create.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of environment creation
  late final Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  late final Output<KxEnvironmentTransitGatewayConfiguration?>
      transitGatewayConfiguration;

  KxEnvironment(
    String name, {
    KxEnvironmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxEnvironment:KxEnvironment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.customDnsConfigurations =
        registerOutput<List<KxEnvironmentCustomDnsConfiguration>?>(
            'customDnsConfigurations');
    this.description = registerOutput<String?>('description');
    this.infrastructureAccountId =
        registerOutput<String>('infrastructureAccountId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.lastModifiedTimestamp =
        registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayConfiguration =
        registerOutput<KxEnvironmentTransitGatewayConfiguration?>(
            'transitGatewayConfiguration');
  }
}
