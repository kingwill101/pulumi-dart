// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVpcLink.
class GetVpcLinkArgs2 {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// VPC Link Tags.
  final Input<Map<String, String>>? tags;

  /// VPC Link ID
  final Input<String> vpcLinkId;

  GetVpcLinkArgs2({
    this.region,
    this.tags,
    required this.vpcLinkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcLinkId'] = vpcLinkId;
    return map;
  }

  factory GetVpcLinkArgs2.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkArgs2(
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcLinkId: Input.asInput<String>(map['vpcLinkId']),
    );
  }
}
