// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EipAssociation.
class EipAssociationArgs {
  /// ID of the associated Elastic IP.
  /// This argument is required despite being optional at the resource level due to legacy support for EC2-Classic networking.
  final Input<String>? allocationId;

  /// Whether to allow an Elastic IP address to be re-associated.
  /// Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? allowReassociation;

  /// ID of the instance.
  /// The instance must have exactly one attached network interface.
  /// You can specify either the instance ID or the network interface ID, but not both.
  final Input<String>? instanceId;

  /// ID of the network interface.
  /// If the instance has more than one network interface, you must specify a network interface ID.
  /// You can specify either the instance ID or the network interface ID, but not both.
  final Input<String>? networkInterfaceId;

  /// Primary or secondary private IP address to associate with the Elastic IP address.
  /// If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  final Input<String>? privateIpAddress;

  /// ) Address of the associated Elastic IP.
  final Input<String>? publicIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      allocationId: Input.asOptionalInput<String>(map['allocationId']),
      allowReassociation:
          Input.asOptionalInput<bool>(map['allowReassociation']),
      instanceId: Input.asOptionalInput<String>(map['instanceId']),
      networkInterfaceId:
          Input.asOptionalInput<String>(map['networkInterfaceId']),
      privateIpAddress: Input.asOptionalInput<String>(map['privateIpAddress']),
      publicIp: Input.asOptionalInput<String>(map['publicIp']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
