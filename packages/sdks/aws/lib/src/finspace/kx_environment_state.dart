// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_environment_custom_dns_configuration.dart';
import 'kx_environment_transit_gateway_configuration.dart';

/// Input properties used for looking up and filtering KxEnvironment resources.
class KxEnvironmentState {
  /// Amazon Resource Name (ARN) identifier of the KX environment.
  final pulumi.Input<String>? arn;
  /// AWS Availability Zone IDs that this environment is available in. Important when selecting VPC subnets to use in cluster creation.
  final pulumi.Input<List<String>>? availabilityZones;
  /// Timestamp at which the environment is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? createdTimestamp;
  /// List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  final pulumi.Input<List<KxEnvironmentCustomDnsConfiguration>>? customDnsConfigurations;
  /// Description for the KX environment.
  final pulumi.Input<String>? description;
  /// Unique identifier for the AWS environment infrastructure account.
  final pulumi.Input<String>? infrastructureAccountId;
  /// KMS key ID to encrypt your data in the FinSpace environment.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? kmsKeyId;
  /// Last timestamp at which the environment was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? lastModifiedTimestamp;
  /// Name of the KX environment that you want to create.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of environment creation
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  final pulumi.Input<KxEnvironmentTransitGatewayConfiguration>? transitGatewayConfiguration;

  /// Creates a new [KxEnvironmentState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX environment.
  /// [availabilityZones] AWS Availability Zone IDs that this environment is available in. Important when selecting VPC subnets to use in cluster creation.
  /// [createdTimestamp] Timestamp at which the environment is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [customDnsConfigurations] List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  /// [description] Description for the KX environment.
  /// [infrastructureAccountId] Unique identifier for the AWS environment infrastructure account.
  /// [kmsKeyId] KMS key ID to encrypt your data in the FinSpace environment.
  /// [lastModifiedTimestamp] Last timestamp at which the environment was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  /// [name] Name of the KX environment that you want to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of environment creation
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayConfiguration] Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  KxEnvironmentState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<String>? createdTimestamp,
    pulumi.Output<List<KxEnvironmentCustomDnsConfiguration>>? customDnsConfigurations,
    pulumi.Output<String>? description,
    pulumi.Output<String>? infrastructureAccountId,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? lastModifiedTimestamp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<KxEnvironmentTransitGatewayConfiguration>? transitGatewayConfiguration,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      createdTimestamp = pulumi.Input.asOptionalInput<String>(createdTimestamp),
      customDnsConfigurations = pulumi.Input.asOptionalInput<List<KxEnvironmentCustomDnsConfiguration>>(customDnsConfigurations),
      description = pulumi.Input.asOptionalInput<String>(description),
      infrastructureAccountId = pulumi.Input.asOptionalInput<String>(infrastructureAccountId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      lastModifiedTimestamp = pulumi.Input.asOptionalInput<String>(lastModifiedTimestamp),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayConfiguration = pulumi.Input.asOptionalInput<KxEnvironmentTransitGatewayConfiguration>(transitGatewayConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'createdTimestamp': ?createdTimestamp,
      'customDnsConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KxEnvironmentCustomDnsConfiguration>, List<Map<String, dynamic>>>(customDnsConfigurations, (value) => pulumi.Input.encodeList<KxEnvironmentCustomDnsConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'infrastructureAccountId': ?infrastructureAccountId,
      'kmsKeyId': ?kmsKeyId,
      'lastModifiedTimestamp': ?lastModifiedTimestamp,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayConfiguration': ?pulumi.Input.mapOptionalInputValue<KxEnvironmentTransitGatewayConfiguration, Map<String, dynamic>>(transitGatewayConfiguration, (value) => value.toMap()),
    };
  }

  factory KxEnvironmentState.fromMap(Map<String, dynamic> map) {
    return KxEnvironmentState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      createdTimestamp: map['createdTimestamp'] == null ? null : pulumi.Output.create<String>(map['createdTimestamp'] as String),
      customDnsConfigurations: map['customDnsConfigurations'] == null ? null : pulumi.Output.create<List<KxEnvironmentCustomDnsConfiguration>>(pulumi.Input.decodeList<KxEnvironmentCustomDnsConfiguration>(map['customDnsConfigurations'], (value) => KxEnvironmentCustomDnsConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      infrastructureAccountId: map['infrastructureAccountId'] == null ? null : pulumi.Output.create<String>(map['infrastructureAccountId'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      lastModifiedTimestamp: map['lastModifiedTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTimestamp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayConfiguration: map['transitGatewayConfiguration'] == null ? null : pulumi.Output.create<KxEnvironmentTransitGatewayConfiguration>(KxEnvironmentTransitGatewayConfiguration.fromMap((map['transitGatewayConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

