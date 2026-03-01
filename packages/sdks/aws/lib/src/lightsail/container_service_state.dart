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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? createdAt,
    pulumi.Output<bool>? isDisabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? power,
    pulumi.Output<String>? powerId,
    pulumi.Output<String>? principalArn,
    pulumi.Output<String>? privateDomainName,
    pulumi.Output<ContainerServicePrivateRegistryAccess>? privateRegistryAccess,
    pulumi.Output<ContainerServicePublicDomainNames>? publicDomainNames,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceType,
    pulumi.Output<int>? scale,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? url,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      isDisabled = pulumi.Input.asOptionalInput<bool>(isDisabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      power = pulumi.Input.asOptionalInput<String>(power),
      powerId = pulumi.Input.asOptionalInput<String>(powerId),
      principalArn = pulumi.Input.asOptionalInput<String>(principalArn),
      privateDomainName = pulumi.Input.asOptionalInput<String>(privateDomainName),
      privateRegistryAccess = pulumi.Input.asOptionalInput<ContainerServicePrivateRegistryAccess>(privateRegistryAccess),
      publicDomainNames = pulumi.Input.asOptionalInput<ContainerServicePublicDomainNames>(publicDomainNames),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      scale = pulumi.Input.asOptionalInput<int>(scale),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      isDisabled: map['isDisabled'] == null ? null : pulumi.Output.create<bool>(map['isDisabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      power: map['power'] == null ? null : pulumi.Output.create<String>(map['power'] as String),
      powerId: map['powerId'] == null ? null : pulumi.Output.create<String>(map['powerId'] as String),
      principalArn: map['principalArn'] == null ? null : pulumi.Output.create<String>(map['principalArn'] as String),
      privateDomainName: map['privateDomainName'] == null ? null : pulumi.Output.create<String>(map['privateDomainName'] as String),
      privateRegistryAccess: map['privateRegistryAccess'] == null ? null : pulumi.Output.create<ContainerServicePrivateRegistryAccess>(ContainerServicePrivateRegistryAccess.fromMap((map['privateRegistryAccess'] as Map).cast<String, dynamic>())),
      publicDomainNames: map['publicDomainNames'] == null ? null : pulumi.Output.create<ContainerServicePublicDomainNames>(ContainerServicePublicDomainNames.fromMap((map['publicDomainNames'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      scale: map['scale'] == null ? null : pulumi.Output.create<int>(map['scale'] as int),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

