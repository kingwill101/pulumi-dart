// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../container_service_private_registry_access/container_service_private_registry_access.dart';
import '../container_service_public_domain_names/container_service_public_domain_names.dart';

/// The set of arguments for ContainerService.
class ContainerServiceArgs {
  /// Whether to disable the container service. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? isDisabled;

  /// Name of the container service. Names must be of length 1 to 63, and be unique within each AWS Region in your Lightsail account.
  final Input<String>? name;

  /// Power specification for the container service. The power specifies the amount of memory, the number of vCPUs, and the monthly price of each node of the container service. Possible values: <span pulumi-lang-nodejs="`nano`" pulumi-lang-dotnet="`Nano`" pulumi-lang-go="`nano`" pulumi-lang-python="`nano`" pulumi-lang-yaml="`nano`" pulumi-lang-java="`nano`">`nano`</span>, <span pulumi-lang-nodejs="`micro`" pulumi-lang-dotnet="`Micro`" pulumi-lang-go="`micro`" pulumi-lang-python="`micro`" pulumi-lang-yaml="`micro`" pulumi-lang-java="`micro`">`micro`</span>, <span pulumi-lang-nodejs="`small`" pulumi-lang-dotnet="`Small`" pulumi-lang-go="`small`" pulumi-lang-python="`small`" pulumi-lang-yaml="`small`" pulumi-lang-java="`small`">`small`</span>, <span pulumi-lang-nodejs="`medium`" pulumi-lang-dotnet="`Medium`" pulumi-lang-go="`medium`" pulumi-lang-python="`medium`" pulumi-lang-yaml="`medium`" pulumi-lang-java="`medium`">`medium`</span>, <span pulumi-lang-nodejs="`large`" pulumi-lang-dotnet="`Large`" pulumi-lang-go="`large`" pulumi-lang-python="`large`" pulumi-lang-yaml="`large`" pulumi-lang-java="`large`">`large`</span>, <span pulumi-lang-nodejs="`xlarge`" pulumi-lang-dotnet="`Xlarge`" pulumi-lang-go="`xlarge`" pulumi-lang-python="`xlarge`" pulumi-lang-yaml="`xlarge`" pulumi-lang-java="`xlarge`">`xlarge`</span>.
  final Input<String> power;

  /// Configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  final Input<ContainerServicePrivateRegistryAccess>? privateRegistryAccess;

  /// Public domain names to use with the container service, such as example.com and www.example.com. You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. See below.
  final Input<ContainerServicePublicDomainNames>? publicDomainNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Scale specification for the container service. The scale specifies the allocated compute nodes of the container service.
  ///
  /// The following arguments are optional:
  final Input<int> scale;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ContainerServiceArgs({
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
    final map = <String, dynamic>{};
    final isDisabledValue = isDisabled;
    if (isDisabledValue != null) {
      map['isDisabled'] = isDisabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['power'] = power;
    final privateRegistryAccessValue = privateRegistryAccess;
    if (privateRegistryAccessValue != null) {
      map['privateRegistryAccess'] = Input.mapOptionalInputValue<
              ContainerServicePrivateRegistryAccess, Map<String, dynamic>>(
          privateRegistryAccessValue, (value) => value.toMap());
    }
    final publicDomainNamesValue = publicDomainNames;
    if (publicDomainNamesValue != null) {
      map['publicDomainNames'] = Input.mapOptionalInputValue<
              ContainerServicePublicDomainNames, Map<String, dynamic>>(
          publicDomainNamesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scale'] = scale;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ContainerServiceArgs.fromMap(Map<String, dynamic> map) {
    return ContainerServiceArgs(
      isDisabled: Input.asOptionalInput<bool>(map['isDisabled']),
      name: Input.asOptionalInput<String>(map['name']),
      power: Input.asInput<String>(map['power']),
      privateRegistryAccess:
          Input.asOptionalInput<ContainerServicePrivateRegistryAccess>(
              map['privateRegistryAccess']),
      publicDomainNames:
          Input.asOptionalInput<ContainerServicePublicDomainNames>(
              map['publicDomainNames']),
      region: Input.asOptionalInput<String>(map['region']),
      scale: Input.asInput<int>(map['scale']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
