// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_subnet_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_vpc_subnet_subnet_args_doc}
class SubnetArgs {
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<String>? cidrBlock;
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? enableIpv6;
  final pulumi.Input<int>? ipv6CidrBlockMask;
  final pulumi.Input<bool>? isDefault;
  final pulumi.Input<String>? name;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<String>? vswitchName;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [SubnetArgs].
  /// [availabilityZone] Optional.
  /// [cidrBlock] Optional.
  /// [description] Optional.
  /// [enableIpv6] Optional.
  /// [ipv6CidrBlockMask] Optional.
  /// [isDefault] Optional.
  /// [name] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  /// [vswitchName] Optional.
  /// [zoneId] Optional.
  SubnetArgs({
    String? availabilityZone,
    String? cidrBlock,
    String? description,
    bool? enableIpv6,
    int? ipv6CidrBlockMask,
    bool? isDefault,
    String? name,
    Map<String, String>? tags,
    String? vpcId,
    String? vswitchName,
    String? zoneId,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      ipv6CidrBlockMask = pulumi.Input.asOptionalInput<int>(ipv6CidrBlockMask),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchName = pulumi.Input.asOptionalInput<String>(vswitchName),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'cidrBlock': ?cidrBlock,
      'description': ?description,
      'enableIpv6': ?enableIpv6,
      'ipv6CidrBlockMask': ?ipv6CidrBlockMask,
      'isDefault': ?isDefault,
      'name': ?name,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchName': ?vswitchName,
      'zoneId': ?zoneId,
    };
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enableIpv6: map['enableIpv6'] == null ? null : map['enableIpv6'] as bool,
      ipv6CidrBlockMask: map['ipv6CidrBlockMask'] == null ? null : map['ipv6CidrBlockMask'] as int,
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchName: map['vswitchName'] == null ? null : map['vswitchName'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

