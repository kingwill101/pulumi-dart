// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InternetGateway.
class InternetGatewayArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** It's recommended to denote that the AWS Instance or Elastic IP depends on the Internet Gateway. For example:
  final pulumi.Input<Map<String, String>>? tags;

  /// The VPC ID to create in.  See the aws.ec2.InternetGatewayAttachment resource for an alternate way to attach an Internet Gateway to a VPC.
  final pulumi.Input<String>? vpcId;

  InternetGatewayArgs({
    this.region,
    this.tags,
    this.vpcId,
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
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory InternetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return InternetGatewayArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
