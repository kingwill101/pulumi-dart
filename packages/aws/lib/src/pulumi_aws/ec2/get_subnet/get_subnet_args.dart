// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_subnet_filter/get_subnet_filter.dart';

/// Arguments for getSubnet.
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
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final availabilityZoneIdValue = availabilityZoneId;
    if (availabilityZoneIdValue != null) {
      map['availabilityZoneId'] = availabilityZoneIdValue;
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final defaultForAzValue = defaultForAz;
    if (defaultForAzValue != null) {
      map['defaultForAz'] = defaultForAzValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<List<GetSubnetFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetSubnetFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory GetSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetArgs(
      availabilityZone:
          pulumi.Input.asOptionalInput<String>(map['availabilityZone']),
      availabilityZoneId:
          pulumi.Input.asOptionalInput<String>(map['availabilityZoneId']),
      cidrBlock: pulumi.Input.asOptionalInput<String>(map['cidrBlock']),
      defaultForAz: pulumi.Input.asOptionalInput<bool>(map['defaultForAz']),
      filters:
          pulumi.Input.asOptionalInput<List<GetSubnetFilter>>(map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      ipv6CidrBlock: pulumi.Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
