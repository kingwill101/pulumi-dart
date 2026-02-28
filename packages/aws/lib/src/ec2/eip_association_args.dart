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
    String? allocationId,
    bool? allowReassociation,
    String? instanceId,
    String? networkInterfaceId,
    String? privateIpAddress,
    String? publicIp,
    String? region,
  }) :
      allocationId = pulumi.Input.asOptionalInput<String>(allocationId),
      allowReassociation = pulumi.Input.asOptionalInput<bool>(allowReassociation),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      publicIp = pulumi.Input.asOptionalInput<String>(publicIp),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      allocationId: map['allocationId'] == null ? null : map['allocationId'] as String,
      allowReassociation: map['allowReassociation'] == null ? null : map['allowReassociation'] as bool,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null ? null : map['networkInterfaceId'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      publicIp: map['publicIp'] == null ? null : map['publicIp'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

