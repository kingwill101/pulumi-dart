// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EipAssociation resources.
class EipAssociationState {
  /// ID of the associated Elastic IP.
  /// This argument is required despite being optional at the resource level due to legacy support for EC2-Classic networking.
  final pulumi.Input<String>? allocationId;
  /// Whether to allow an Elastic IP address to be re-associated.
  /// Defaults to `true`.
  final pulumi.Input<bool>? allowReassociation;
  /// ID of the instance.
  /// The instance must have exactly one attached network interface.
  /// You can specify either the instance ID or the network interface ID, but not both.
  final pulumi.Input<String>? instanceId;
  /// ID of the network interface.
  /// If the instance has more than one network interface, you must specify a network interface ID.
  /// You can specify either the instance ID or the network interface ID, but not both.
  final pulumi.Input<String>? networkInterfaceId;
  /// Primary or secondary private IP address to associate with the Elastic IP address.
  /// If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  final pulumi.Input<String>? privateIpAddress;
  /// ) Address of the associated Elastic IP.
  final pulumi.Input<String>? publicIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EipAssociationState].
  /// [allocationId] ID of the associated Elastic IP.
  /// [allowReassociation] Whether to allow an Elastic IP address to be re-associated.
  /// [instanceId] ID of the instance.
  /// [networkInterfaceId] ID of the network interface.
  /// [privateIpAddress] Primary or secondary private IP address to associate with the Elastic IP address.
  /// [publicIp] ) Address of the associated Elastic IP.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EipAssociationState({
    this.allocationId,
    this.allowReassociation,
    this.instanceId,
    this.networkInterfaceId,
    this.privateIpAddress,
    this.publicIp,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'allowReassociation': ?allowReassociation,
      'instanceId': ?instanceId,
      'networkInterfaceId': ?networkInterfaceId,
      'privateIpAddress': ?privateIpAddress,
      'publicIp': ?publicIp,
      'region': ?region,
    };
  }

  factory EipAssociationState.fromMap(Map<String, dynamic> map) {
    return EipAssociationState(
      allocationId: map['allocationId'] == null ? null : (map['allocationId'] as String).input(),
      allowReassociation: map['allowReassociation'] == null ? null : (map['allowReassociation'] as bool).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      publicIp: map['publicIp'] == null ? null : (map['publicIp'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

