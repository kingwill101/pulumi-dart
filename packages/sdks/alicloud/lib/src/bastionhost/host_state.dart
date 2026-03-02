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
    this.activeAddressType,
    this.comment,
    this.hostId,
    this.hostName,
    this.hostPrivateAddress,
    this.hostPublicAddress,
    this.instanceId,
    this.instanceRegionId,
    this.osType,
    this.source,
    this.sourceInstanceId,
  });

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
      activeAddressType: map['activeAddressType'] == null ? null : (map['activeAddressType'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      hostId: map['hostId'] == null ? null : (map['hostId'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      hostPrivateAddress: map['hostPrivateAddress'] == null ? null : (map['hostPrivateAddress'] as String).input(),
      hostPublicAddress: map['hostPublicAddress'] == null ? null : (map['hostPublicAddress'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      instanceRegionId: map['instanceRegionId'] == null ? null : (map['instanceRegionId'] as String).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      sourceInstanceId: map['sourceInstanceId'] == null ? null : (map['sourceInstanceId'] as String).input(),
    );
  }
}

