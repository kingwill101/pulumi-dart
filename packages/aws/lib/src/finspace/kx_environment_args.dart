// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_environment_custom_dns_configuration.dart';
import 'kx_environment_transit_gateway_configuration.dart';

/// {@template pulumi_finspace_kx_environment_kx_environment_args_doc}
/// The set of arguments for KxEnvironment.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_environment_kx_environment_args_doc}
class KxEnvironmentArgs {
  /// List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  final pulumi.Input<List<KxEnvironmentCustomDnsConfiguration>>? customDnsConfigurations;
  /// Description for the KX environment.
  final pulumi.Input<String>? description;
  /// KMS key ID to encrypt your data in the FinSpace environment.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> kmsKeyId;
  /// Name of the KX environment that you want to create.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  final pulumi.Input<KxEnvironmentTransitGatewayConfiguration>? transitGatewayConfiguration;

  /// Creates a new [KxEnvironmentArgs].
  /// [customDnsConfigurations] List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  /// [description] Description for the KX environment.
  /// [kmsKeyId] KMS key ID to encrypt your data in the FinSpace environment.
  /// [name] Name of the KX environment that you want to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayConfiguration] Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  KxEnvironmentArgs({
    List<KxEnvironmentCustomDnsConfiguration>? customDnsConfigurations,
    String? description,
    required String kmsKeyId,
    String? name,
    String? region,
    Map<String, String>? tags,
    KxEnvironmentTransitGatewayConfiguration? transitGatewayConfiguration,
  }) :
      customDnsConfigurations = pulumi.Input.asOptionalInput<List<KxEnvironmentCustomDnsConfiguration>>(customDnsConfigurations),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitGatewayConfiguration = pulumi.Input.asOptionalInput<KxEnvironmentTransitGatewayConfiguration>(transitGatewayConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDnsConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KxEnvironmentCustomDnsConfiguration>, List<Map<String, dynamic>>>(customDnsConfigurations, (value) => pulumi.Input.encodeList<KxEnvironmentCustomDnsConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'kmsKeyId': kmsKeyId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'transitGatewayConfiguration': ?pulumi.Input.mapOptionalInputValue<KxEnvironmentTransitGatewayConfiguration, Map<String, dynamic>>(transitGatewayConfiguration, (value) => value.toMap()),
    };
  }

  factory KxEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return KxEnvironmentArgs(
      customDnsConfigurations: map['customDnsConfigurations'] == null ? null : pulumi.Input.decodeList<KxEnvironmentCustomDnsConfiguration>(map['customDnsConfigurations'], (value) => KxEnvironmentCustomDnsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitGatewayConfiguration: map['transitGatewayConfiguration'] == null ? null : KxEnvironmentTransitGatewayConfiguration.fromMap((map['transitGatewayConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

