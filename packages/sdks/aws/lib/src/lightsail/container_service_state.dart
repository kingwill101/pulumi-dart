// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_private_registry_access.dart';
import 'container_service_public_domain_names.dart';

/// Input properties used for looking up and filtering ContainerService resources.
class ContainerServiceState {
  /// ARN of the container service.
  final pulumi.Input<String>? arn;
  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  final pulumi.Input<String>? availabilityZone;
  /// Date and time when the container service was created.
  final pulumi.Input<String>? createdAt;
  /// Whether to disable the container service. Defaults to `false`.
  final pulumi.Input<bool>? isDisabled;
  /// Name of the container service. Names must be of length 1 to 63, and be unique within each AWS Region in your Lightsail account.
  final pulumi.Input<String>? name;
  /// Power specification for the container service. The power specifies the amount of memory, the number of vCPUs, and the monthly price of each node of the container service. Possible values: `nano`, `micro`, `small`, `medium`, `large`, `xlarge`.
  final pulumi.Input<String>? power;
  /// Power ID of the container service.
  final pulumi.Input<String>? powerId;
  /// Principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service.
  final pulumi.Input<String>? principalArn;
  /// Private domain name of the container service. The private domain name is accessible only by other resources within the default virtual private cloud (VPC) of your Lightsail account.
  final pulumi.Input<String>? privateDomainName;
  /// Configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  final pulumi.Input<ContainerServicePrivateRegistryAccess>? privateRegistryAccess;
  /// Public domain names to use with the container service, such as example.com and www.example.com. You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. See below.
  final pulumi.Input<ContainerServicePublicDomainNames>? publicDomainNames;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Lightsail resource type of the container service (i.e., ContainerService).
  final pulumi.Input<String>? resourceType;
  /// Scale specification for the container service. The scale specifies the allocated compute nodes of the container service.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? scale;
  /// Current state of the container service.
  final pulumi.Input<String>? state;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Publicly accessible URL of the container service. If no public endpoint is specified in the currentDeployment, this URL returns a 404 response.
  final pulumi.Input<String>? url;

  /// Creates a new [ContainerServiceState].
  /// [arn] ARN of the container service.
  /// [availabilityZone] Availability Zone. Follows the format us-east-2a (case-sensitive).
  /// [createdAt] Date and time when the container service was created.
  /// [isDisabled] Whether to disable the container service. Defaults to `false`.
  /// [name] Name of the container service. Names must be of length 1 to 63, and be unique within each AWS Region in your Lightsail account.
  /// [power] Power specification for the container service. The power specifies the amount of memory, the number of vCPUs, and the monthly price of each node of the container service. Possible values: `nano`, `micro`, `small`, `medium`, `large`, `xlarge`.
  /// [powerId] Power ID of the container service.
  /// [principalArn] Principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service.
  /// [privateDomainName] Private domain name of the container service. The private domain name is accessible only by other resources within the default virtual private cloud (VPC) of your Lightsail account.
  /// [privateRegistryAccess] Configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  /// [publicDomainNames] Public domain names to use with the container service, such as example.com and www.example.com. You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] Lightsail resource type of the container service (i.e., ContainerService).
  /// [scale] Scale specification for the container service. The scale specifies the allocated compute nodes of the container service.
  /// [state] Current state of the container service.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [url] Publicly accessible URL of the container service. If no public endpoint is specified in the currentDeployment, this URL returns a 404 response.
  ContainerServiceState({
    this.arn,
    this.availabilityZone,
    this.createdAt,
    this.isDisabled,
    this.name,
    this.power,
    this.powerId,
    this.principalArn,
    this.privateDomainName,
    this.privateRegistryAccess,
    this.publicDomainNames,
    this.region,
    this.resourceType,
    this.scale,
    this.state,
    this.tags,
    this.tagsAll,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'createdAt': ?createdAt,
      'isDisabled': ?isDisabled,
      'name': ?name,
      'power': ?power,
      'powerId': ?powerId,
      'principalArn': ?principalArn,
      'privateDomainName': ?privateDomainName,
      'privateRegistryAccess': ?pulumi.Input.mapOptionalInputValue<ContainerServicePrivateRegistryAccess, Map<String, dynamic>>(privateRegistryAccess, (value) => value.toMap()),
      'publicDomainNames': ?pulumi.Input.mapOptionalInputValue<ContainerServicePublicDomainNames, Map<String, dynamic>>(publicDomainNames, (value) => value.toMap()),
      'region': ?region,
      'resourceType': ?resourceType,
      'scale': ?scale,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'url': ?url,
    };
  }

  factory ContainerServiceState.fromMap(Map<String, dynamic> map) {
    return ContainerServiceState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      isDisabled: map['isDisabled'] == null ? null : ((map['isDisabled'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      power: map['power'] == null ? null : ((map['power'] as String).input()).input(),
      powerId: map['powerId'] == null ? null : ((map['powerId'] as String).input()).input(),
      principalArn: map['principalArn'] == null ? null : ((map['principalArn'] as String).input()).input(),
      privateDomainName: map['privateDomainName'] == null ? null : ((map['privateDomainName'] as String).input()).input(),
      privateRegistryAccess: map['privateRegistryAccess'] == null ? null : ((ContainerServicePrivateRegistryAccess.fromMap((map['privateRegistryAccess']! as Map).cast<String, dynamic>())).input()).input(),
      publicDomainNames: map['publicDomainNames'] == null ? null : ((ContainerServicePublicDomainNames.fromMap((map['publicDomainNames']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
      scale: map['scale'] == null ? null : ((map['scale'] as int).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      url: map['url'] == null ? null : ((map['url'] as String).input()).input(),
    );
  }
}

