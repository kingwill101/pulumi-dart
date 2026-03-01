// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subnet resources.
class SubnetState {
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<String>? cidrBlock;
  final pulumi.Input<String>? createTime;
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? enableIpv6;
  final pulumi.Input<String>? ipv6CidrBlock;
  final pulumi.Input<int>? ipv6CidrBlockMask;
  final pulumi.Input<bool>? isDefault;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<String>? vswitchName;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [SubnetState].
  /// [availabilityZone] Optional.
  /// [cidrBlock] Optional.
  /// [createTime] Optional.
  /// [description] Optional.
  /// [enableIpv6] Optional.
  /// [ipv6CidrBlock] Optional.
  /// [ipv6CidrBlockMask] Optional.
  /// [isDefault] Optional.
  /// [name] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  /// [vswitchName] Optional.
  /// [zoneId] Optional.
  SubnetState({
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableIpv6,
    pulumi.Output<String>? ipv6CidrBlock,
    pulumi.Output<int>? ipv6CidrBlockMask,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<String>? name,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchName,
    pulumi.Output<String>? zoneId,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      ipv6CidrBlockMask = pulumi.Input.asOptionalInput<int>(ipv6CidrBlockMask),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      name = pulumi.Input.asOptionalInput<String>(name),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchName = pulumi.Input.asOptionalInput<String>(vswitchName),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'cidrBlock': ?cidrBlock,
      'createTime': ?createTime,
      'description': ?description,
      'enableIpv6': ?enableIpv6,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlockMask': ?ipv6CidrBlockMask,
      'isDefault': ?isDefault,
      'name': ?name,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchName': ?vswitchName,
      'zoneId': ?zoneId,
    };
  }

  factory SubnetState.fromMap(Map<String, dynamic> map) {
    return SubnetState(
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableIpv6: map['enableIpv6'] == null ? null : pulumi.Output.create<bool>(map['enableIpv6'] as bool),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlock'] as String),
      ipv6CidrBlockMask: map['ipv6CidrBlockMask'] == null ? null : pulumi.Output.create<int>(map['ipv6CidrBlockMask'] as int),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchName: map['vswitchName'] == null ? null : pulumi.Output.create<String>(map['vswitchName'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

