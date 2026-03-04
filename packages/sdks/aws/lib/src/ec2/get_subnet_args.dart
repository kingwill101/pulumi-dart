// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_filter.dart';

/// {@template pulumi_ec2_get_subnet_get_subnet_args_doc}
/// Arguments for getSubnet.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_subnet_get_subnet_args_doc}
class GetSubnetArgs {
  /// Availability zone where the subnet must reside.
  final pulumi.Input<String>? availabilityZone;

  /// ID of the Availability Zone for the subnet. This argument is not supported in all regions or partitions. If necessary, use `availability_zone` instead.
  final pulumi.Input<String>? availabilityZoneId;

  /// CIDR block of the desired subnet.
  final pulumi.Input<String>? cidrBlock;

  /// Whether the desired subnet must be the default subnet for its associated availability zone.
  final pulumi.Input<bool>? defaultForAz;

  /// Configuration block. Detailed below.
  final pulumi.Input<List<GetSubnetFilter>>? filters;

  /// ID of the specific subnet to retrieve.
  final pulumi.Input<String>? id;

  /// IPv6 CIDR block of the desired subnet.
  final pulumi.Input<String>? ipv6CidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// State that the desired subnet must have.
  final pulumi.Input<String>? state;

  /// Map of tags, each pair of which must exactly match a pair on the desired subnet.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the VPC that the desired subnet belongs to.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetSubnetArgs].
  /// [availabilityZone] Availability zone where the subnet must reside.
  /// [availabilityZoneId] ID of the Availability Zone for the subnet. This argument is not supported in all regions or partitions. If necessary, use `availability_zone` instead.
  /// [cidrBlock] CIDR block of the desired subnet.
  /// [defaultForAz] Whether the desired subnet must be the default subnet for its associated availability zone.
  /// [filters] Configuration block. Detailed below.
  /// [id] ID of the specific subnet to retrieve.
  /// [ipv6CidrBlock] IPv6 CIDR block of the desired subnet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State that the desired subnet must have.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired subnet.
  /// [vpcId] ID of the VPC that the desired subnet belongs to.
  GetSubnetArgs({
    this.availabilityZone,
    this.availabilityZoneId,
    this.cidrBlock,
    this.defaultForAz,
    this.filters,
    this.id,
    this.ipv6CidrBlock,
    this.region,
    this.state,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'cidrBlock': ?cidrBlock,
      'defaultForAz': ?defaultForAz,
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetSubnetFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<GetSubnetFilter, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'id': ?id,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetArgs(
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZoneId: (() {
        final guardedValue = map['availabilityZoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultForAz: (() {
        final guardedValue = map['defaultForAz'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetSubnetFilter>(
            guardedValue,
            (value) =>
                GetSubnetFilter.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6CidrBlock: (() {
        final guardedValue = map['ipv6CidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
