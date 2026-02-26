// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DefaultVpcDhcpOptions.
class DefaultVpcDhcpOptionsArgs {
  /// The ID of the AWS account that owns the DHCP options set.
  final Input<String>? ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final Input<String>? region;

  /// A map of tags to assign to the resource.
  final Input<Map<String, String>>? tags;

  DefaultVpcDhcpOptionsArgs({
    this.ownerId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ownerIdValue = ownerId;
    if (ownerIdValue != null) {
      map['ownerId'] = ownerIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DefaultVpcDhcpOptionsArgs.fromMap(Map<String, dynamic> map) {
    return DefaultVpcDhcpOptionsArgs(
      ownerId: Input.asOptionalInput<String>(map['ownerId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
