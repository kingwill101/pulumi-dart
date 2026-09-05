// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_private_registry_access.dart';
import 'container_service_public_domain_names.dart';

/// {@template pulumi_lightsail_container_service_container_service_args_doc}
/// The set of arguments for ContainerService.
/// {@endtemplate}
/// {@macro pulumi_lightsail_container_service_container_service_args_doc}
class ContainerServiceArgs {
  /// Whether to disable the container service. Defaults to `false`.
  final pulumi.Input<bool?>? isDisabled;
  /// Name of the container service. Names must be of length 1 to 63, and be unique within each AWS Region in your Lightsail account.
  final pulumi.Input<String?>? name;
  /// Power specification for the container service. The power specifies the amount of memory, the number of vCPUs, and the monthly price of each node of the container service. Possible values: `nano`, `micro`, `small`, `medium`, `large`, `xlarge`.
  final pulumi.Input<String> power;
  /// Configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  final pulumi.Input<ContainerServicePrivateRegistryAccess?>? privateRegistryAccess;
  /// Public domain names to use with the container service, such as example.com and www.example.com. You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. See below.
  final pulumi.Input<ContainerServicePublicDomainNames?>? publicDomainNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Scale specification for the container service. The scale specifies the allocated compute nodes of the container service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> scale;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ContainerServiceArgs].
  /// [isDisabled] Whether to disable the container service. Defaults to `false`.
  /// [name] Name of the container service. Names must be of length 1 to 63, and be unique within each AWS Region in your Lightsail account.
  /// [power] Power specification for the container service. The power specifies the amount of memory, the number of vCPUs, and the monthly price of each node of the container service. Possible values: `nano`, `micro`, `small`, `medium`, `large`, `xlarge`.
  /// [privateRegistryAccess] Configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  /// [publicDomainNames] Public domain names to use with the container service, such as example.com and www.example.com. You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scale] Scale specification for the container service. The scale specifies the allocated compute nodes of the container service.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ContainerServiceArgs({
    this.isDisabled,
    this.name,
    required this.power,
    this.privateRegistryAccess,
    this.publicDomainNames,
    this.region,
    required this.scale,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDisabled': ?isDisabled,
      'name': ?name,
      'power': power,
      'privateRegistryAccess': ?pulumi.Input.mapOptionalInputValue<ContainerServicePrivateRegistryAccess, Map<String, dynamic>>(privateRegistryAccess, (value) => value.toMap()),
      'publicDomainNames': ?pulumi.Input.mapOptionalInputValue<ContainerServicePublicDomainNames, Map<String, dynamic>>(publicDomainNames, (value) => value.toMap()),
      'region': ?region,
      'scale': scale,
      'tags': ?tags,
    };
  }

  factory ContainerServiceArgs.fromMap(Map<String, dynamic> map) {
    return ContainerServiceArgs(
      isDisabled: (() { final guardedValue = map['isDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      power: pulumi.Input.fromValue(map['power'] as String),
      privateRegistryAccess: (() { final guardedValue = map['privateRegistryAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerServicePrivateRegistryAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicDomainNames: (() { final guardedValue = map['publicDomainNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerServicePublicDomainNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scale: pulumi.Input.fromValue((map['scale'] as num).toInt()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
