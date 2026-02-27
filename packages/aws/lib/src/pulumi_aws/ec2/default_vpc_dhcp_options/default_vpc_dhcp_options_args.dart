// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DefaultVpcDhcpOptions.
class DefaultVpcDhcpOptionsArgs {
  /// The ID of the AWS account that owns the DHCP options set.
  final pulumi.Input<String>? ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
      ownerId: pulumi.Input.asOptionalInput<String>(map['ownerId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
