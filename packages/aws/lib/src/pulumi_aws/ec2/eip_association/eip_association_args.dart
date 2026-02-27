// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EipAssociation.
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
    final map = <String, dynamic>{};
    final allocationIdValue = allocationId;
    if (allocationIdValue != null) {
      map['allocationId'] = allocationIdValue;
    }
    final allowReassociationValue = allowReassociation;
    if (allowReassociationValue != null) {
      map['allowReassociation'] = allowReassociationValue;
    }
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    final privateIpAddressValue = privateIpAddress;
    if (privateIpAddressValue != null) {
      map['privateIpAddress'] = privateIpAddressValue;
    }
    final publicIpValue = publicIp;
    if (publicIpValue != null) {
      map['publicIp'] = publicIpValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EipAssociationArgs.fromMap(Map<String, dynamic> map) {
    return EipAssociationArgs(
      allocationId: pulumi.Input.asOptionalInput<String>(map['allocationId']),
      allowReassociation:
          pulumi.Input.asOptionalInput<bool>(map['allowReassociation']),
      instanceId: pulumi.Input.asOptionalInput<String>(map['instanceId']),
      networkInterfaceId:
          pulumi.Input.asOptionalInput<String>(map['networkInterfaceId']),
      privateIpAddress:
          pulumi.Input.asOptionalInput<String>(map['privateIpAddress']),
      publicIp: pulumi.Input.asOptionalInput<String>(map['publicIp']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
