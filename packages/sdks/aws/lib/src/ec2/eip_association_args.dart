// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_eip_association_eip_association_args_doc}
/// The set of arguments for EipAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_eip_association_eip_association_args_doc}
class EipAssociationArgs {
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

  /// Creates a new [EipAssociationArgs].
  /// [allocationId] ID of the associated Elastic IP.
  /// [allowReassociation] Whether to allow an Elastic IP address to be re-associated.
  /// [instanceId] ID of the instance.
  /// [networkInterfaceId] ID of the network interface.
  /// [privateIpAddress] Primary or secondary private IP address to associate with the Elastic IP address.
  /// [publicIp] ) Address of the associated Elastic IP.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EipAssociationArgs({
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

  factory EipAssociationArgs.fromMap(Map<String, dynamic> map) {
    return EipAssociationArgs(
      allocationId: (() { final guardedValue = map['allocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowReassociation: (() { final guardedValue = map['allowReassociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

