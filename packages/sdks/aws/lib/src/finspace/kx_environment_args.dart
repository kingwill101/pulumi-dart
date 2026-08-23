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
  final pulumi.Input<String> kmsKeyId;
  /// Name of the KX environment that you want to create.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  final pulumi.Input<KxEnvironmentTransitGatewayConfiguration>? transitGatewayConfiguration;

  /// Creates a new [KxEnvironmentArgs].
  /// [customDnsConfigurations] List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  /// [description] Description for the KX environment.
  /// [kmsKeyId] KMS key ID to encrypt your data in the FinSpace environment.
  /// [name] Name of the KX environment that you want to create.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayConfiguration] Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  const KxEnvironmentArgs({
    this.customDnsConfigurations,
    this.description,
    required this.kmsKeyId,
    this.name,
    this.region,
    this.tags,
    this.transitGatewayConfiguration,
  });

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
      customDnsConfigurations: (() { final guardedValue = map['customDnsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxEnvironmentCustomDnsConfiguration>(guardedValue, (value) => KxEnvironmentCustomDnsConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayConfiguration: (() { final guardedValue = map['transitGatewayConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KxEnvironmentTransitGatewayConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
