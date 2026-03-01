// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Host resources.
class HostState {
  /// Specify the new create a host of address types. Valid values: `Public`: the IP address of a Public network. `Private`: Private network address.
  final pulumi.Input<String>? activeAddressType;
  /// Specify a host of notes, supports up to 500 characters.
  final pulumi.Input<String>? comment;
  /// The host ID.
  final pulumi.Input<String>? hostId;
  /// Specify the new create a host name of the supports up to 128 characters.
  final pulumi.Input<String>? hostName;
  /// Specify the new create a host of the private network address, it is possible to use the domain name or IP ADDRESS. **NOTE:**  This parameter is required if the `active_address_type` parameter is set to `Private`.
  final pulumi.Input<String>? hostPrivateAddress;
  /// Specify the new create a host of the IP address of a public network, it is possible to use the domain name or IP ADDRESS.
  final pulumi.Input<String>? hostPublicAddress;
  /// Specify the new create a host where the Bastion host ID of.
  final pulumi.Input<String>? instanceId;
  /// The instance region id.
  final pulumi.Input<String>? instanceRegionId;
  /// Specify the new create the host's operating system. Valid values: `Linux`,`Windows`.
  final pulumi.Input<String>? osType;
  /// Specify the new create a host of source. Valid values:
  /// * `Local`: localhost
  /// * `Ecs`:ECS instance
  /// * `Rds`:RDS exclusive cluster host.
  final pulumi.Input<String>? source;
  /// Specify the newly created ECS instance ID or dedicated cluster host ID. **NOTE:** This parameter is required if the `source` parameter is set to `Ecs` or `Rds`.
  final pulumi.Input<String>? sourceInstanceId;

  /// Creates a new [HostState].
  /// [activeAddressType] Specify the new create a host of address types. Valid values: `Public`: the IP address of a Public network. `Private`: Private network address.
  /// [comment] Specify a host of notes, supports up to 500 characters.
  /// [hostId] The host ID.
  /// [hostName] Specify the new create a host name of the supports up to 128 characters.
  /// [hostPrivateAddress] Specify the new create a host of the private network address, it is possible to use the domain name or IP ADDRESS. **NOTE:**  This parameter is required if the `active_address_type` parameter is set to `Private`.
  /// [hostPublicAddress] Specify the new create a host of the IP address of a public network, it is possible to use the domain name or IP ADDRESS.
  /// [instanceId] Specify the new create a host where the Bastion host ID of.
  /// [instanceRegionId] The instance region id.
  /// [osType] Specify the new create the host's operating system. Valid values: `Linux`,`Windows`.
  /// [source] Specify the new create a host of source. Valid values:
  /// [sourceInstanceId] Specify the newly created ECS instance ID or dedicated cluster host ID. **NOTE:** This parameter is required if the `source` parameter is set to `Ecs` or `Rds`.
  HostState({
    pulumi.Output<String>? activeAddressType,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? hostId,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? hostPrivateAddress,
    pulumi.Output<String>? hostPublicAddress,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceRegionId,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? source,
    pulumi.Output<String>? sourceInstanceId,
  }) :
      activeAddressType = pulumi.Input.asOptionalInput<String>(activeAddressType),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      hostId = pulumi.Input.asOptionalInput<String>(hostId),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      hostPrivateAddress = pulumi.Input.asOptionalInput<String>(hostPrivateAddress),
      hostPublicAddress = pulumi.Input.asOptionalInput<String>(hostPublicAddress),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceRegionId = pulumi.Input.asOptionalInput<String>(instanceRegionId),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceInstanceId = pulumi.Input.asOptionalInput<String>(sourceInstanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAddressType': ?activeAddressType,
      'comment': ?comment,
      'hostId': ?hostId,
      'hostName': ?hostName,
      'hostPrivateAddress': ?hostPrivateAddress,
      'hostPublicAddress': ?hostPublicAddress,
      'instanceId': ?instanceId,
      'instanceRegionId': ?instanceRegionId,
      'osType': ?osType,
      'source': ?source,
      'sourceInstanceId': ?sourceInstanceId,
    };
  }

  factory HostState.fromMap(Map<String, dynamic> map) {
    return HostState(
      activeAddressType: map['activeAddressType'] == null ? null : pulumi.Output.create<String>(map['activeAddressType'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      hostId: map['hostId'] == null ? null : pulumi.Output.create<String>(map['hostId'] as String),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      hostPrivateAddress: map['hostPrivateAddress'] == null ? null : pulumi.Output.create<String>(map['hostPrivateAddress'] as String),
      hostPublicAddress: map['hostPublicAddress'] == null ? null : pulumi.Output.create<String>(map['hostPublicAddress'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceRegionId: map['instanceRegionId'] == null ? null : pulumi.Output.create<String>(map['instanceRegionId'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      sourceInstanceId: map['sourceInstanceId'] == null ? null : pulumi.Output.create<String>(map['sourceInstanceId'] as String),
    );
  }
}

