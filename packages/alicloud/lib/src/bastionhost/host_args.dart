// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_host_args_doc}
/// The set of arguments for Host.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_host_args_doc}
class HostArgs {
  /// Specify the new create a host of address types. Valid values: `Public`: the IP address of a Public network. `Private`: Private network address.
  final pulumi.Input<String> activeAddressType;
  /// Specify a host of notes, supports up to 500 characters.
  final pulumi.Input<String>? comment;
  /// Specify the new create a host name of the supports up to 128 characters.
  final pulumi.Input<String> hostName;
  /// Specify the new create a host of the private network address, it is possible to use the domain name or IP ADDRESS. **NOTE:**  This parameter is required if the `active_address_type` parameter is set to `Private`.
  final pulumi.Input<String>? hostPrivateAddress;
  /// Specify the new create a host of the IP address of a public network, it is possible to use the domain name or IP ADDRESS.
  final pulumi.Input<String>? hostPublicAddress;
  /// Specify the new create a host where the Bastion host ID of.
  final pulumi.Input<String> instanceId;
  /// The instance region id.
  final pulumi.Input<String>? instanceRegionId;
  /// Specify the new create the host's operating system. Valid values: `Linux`,`Windows`.
  final pulumi.Input<String> osType;
  /// Specify the new create a host of source. Valid values:
  /// * `Local`: localhost
  /// * `Ecs`:ECS instance
  /// * `Rds`:RDS exclusive cluster host.
  final pulumi.Input<String> source;
  /// Specify the newly created ECS instance ID or dedicated cluster host ID. **NOTE:** This parameter is required if the `source` parameter is set to `Ecs` or `Rds`.
  final pulumi.Input<String>? sourceInstanceId;

  /// Creates a new [HostArgs].
  /// [activeAddressType] Specify the new create a host of address types. Valid values: `Public`: the IP address of a Public network. `Private`: Private network address.
  /// [comment] Specify a host of notes, supports up to 500 characters.
  /// [hostName] Specify the new create a host name of the supports up to 128 characters.
  /// [hostPrivateAddress] Specify the new create a host of the private network address, it is possible to use the domain name or IP ADDRESS. **NOTE:**  This parameter is required if the `active_address_type` parameter is set to `Private`.
  /// [hostPublicAddress] Specify the new create a host of the IP address of a public network, it is possible to use the domain name or IP ADDRESS.
  /// [instanceId] Specify the new create a host where the Bastion host ID of.
  /// [instanceRegionId] The instance region id.
  /// [osType] Specify the new create the host's operating system. Valid values: `Linux`,`Windows`.
  /// [source] Specify the new create a host of source. Valid values:
  /// [sourceInstanceId] Specify the newly created ECS instance ID or dedicated cluster host ID. **NOTE:** This parameter is required if the `source` parameter is set to `Ecs` or `Rds`.
  HostArgs({
    required String activeAddressType,
    String? comment,
    required String hostName,
    String? hostPrivateAddress,
    String? hostPublicAddress,
    required String instanceId,
    String? instanceRegionId,
    required String osType,
    required String source,
    String? sourceInstanceId,
  }) :
      activeAddressType = pulumi.Input.asInput<String>(activeAddressType),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      hostName = pulumi.Input.asInput<String>(hostName),
      hostPrivateAddress = pulumi.Input.asOptionalInput<String>(hostPrivateAddress),
      hostPublicAddress = pulumi.Input.asOptionalInput<String>(hostPublicAddress),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceRegionId = pulumi.Input.asOptionalInput<String>(instanceRegionId),
      osType = pulumi.Input.asInput<String>(osType),
      source = pulumi.Input.asInput<String>(source),
      sourceInstanceId = pulumi.Input.asOptionalInput<String>(sourceInstanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAddressType': activeAddressType,
      'comment': ?comment,
      'hostName': hostName,
      'hostPrivateAddress': ?hostPrivateAddress,
      'hostPublicAddress': ?hostPublicAddress,
      'instanceId': instanceId,
      'instanceRegionId': ?instanceRegionId,
      'osType': osType,
      'source': source,
      'sourceInstanceId': ?sourceInstanceId,
    };
  }

  factory HostArgs.fromMap(Map<String, dynamic> map) {
    return HostArgs(
      activeAddressType: map['activeAddressType'] as String,
      comment: map['comment'] == null ? null : map['comment'] as String,
      hostName: map['hostName'] as String,
      hostPrivateAddress: map['hostPrivateAddress'] == null ? null : map['hostPrivateAddress'] as String,
      hostPublicAddress: map['hostPublicAddress'] == null ? null : map['hostPublicAddress'] as String,
      instanceId: map['instanceId'] as String,
      instanceRegionId: map['instanceRegionId'] == null ? null : map['instanceRegionId'] as String,
      osType: map['osType'] as String,
      source: map['source'] as String,
      sourceInstanceId: map['sourceInstanceId'] == null ? null : map['sourceInstanceId'] as String,
    );
  }
}

