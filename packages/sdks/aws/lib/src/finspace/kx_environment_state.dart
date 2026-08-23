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
  final pulumi.Input<String>? kmsKeyId;
  /// Last timestamp at which the environment was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  final pulumi.Input<String>? lastModifiedTimestamp;
  /// Name of the KX environment that you want to create.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of environment creation
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [transitGatewayConfiguration] Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  const KxEnvironmentState({
    this.arn,
    this.availabilityZones,
    this.createdTimestamp,
    this.customDnsConfigurations,
    this.description,
    this.infrastructureAccountId,
    this.kmsKeyId,
    this.lastModifiedTimestamp,
    this.name,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.transitGatewayConfiguration,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDnsConfigurations: (() { final guardedValue = map['customDnsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxEnvironmentCustomDnsConfiguration>(guardedValue, (value) => KxEnvironmentCustomDnsConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureAccountId: (() { final guardedValue = map['infrastructureAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTimestamp: (() { final guardedValue = map['lastModifiedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayConfiguration: (() { final guardedValue = map['transitGatewayConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxEnvironmentTransitGatewayConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
