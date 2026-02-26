// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../kx_environment_custom_dns_configuration/kx_environment_custom_dns_configuration.dart';
import '../kx_environment_transit_gateway_configuration/kx_environment_transit_gateway_configuration.dart';

/// The set of arguments for KxEnvironment.
class KxEnvironmentArgs {
  /// List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  final Input<List<KxEnvironmentCustomDnsConfiguration>>?
      customDnsConfigurations;

  /// Description for the KX environment.
  final Input<String>? description;

  /// KMS key ID to encrypt your data in the FinSpace environment.
  ///
  /// The following arguments are optional:
  final Input<String> kmsKeyId;

  /// Name of the KX environment that you want to create.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  final Input<KxEnvironmentTransitGatewayConfiguration>?
      transitGatewayConfiguration;

  KxEnvironmentArgs({
    this.customDnsConfigurations,
    this.description,
    required this.kmsKeyId,
    this.name,
    this.region,
    this.tags,
    this.transitGatewayConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customDnsConfigurationsValue = customDnsConfigurations;
    if (customDnsConfigurationsValue != null) {
      map['customDnsConfigurations'] = Input.mapOptionalInputValue<
              List<KxEnvironmentCustomDnsConfiguration>,
              List<Map<String, dynamic>>>(
          customDnsConfigurationsValue,
          (value) => Input.encodeList<KxEnvironmentCustomDnsConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['kmsKeyId'] = kmsKeyId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayConfigurationValue = transitGatewayConfiguration;
    if (transitGatewayConfigurationValue != null) {
      map['transitGatewayConfiguration'] = Input.mapOptionalInputValue<
              KxEnvironmentTransitGatewayConfiguration, Map<String, dynamic>>(
          transitGatewayConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory KxEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return KxEnvironmentArgs(
      customDnsConfigurations:
          Input.asOptionalInput<List<KxEnvironmentCustomDnsConfiguration>>(
              map['customDnsConfigurations']),
      description: Input.asOptionalInput<String>(map['description']),
      kmsKeyId: Input.asInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayConfiguration:
          Input.asOptionalInput<KxEnvironmentTransitGatewayConfiguration>(
              map['transitGatewayConfiguration']),
    );
  }
}
