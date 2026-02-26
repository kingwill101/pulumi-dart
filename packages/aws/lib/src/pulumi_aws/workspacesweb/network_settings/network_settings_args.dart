// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkSettings.
class NetworkSettingsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// One or more security groups used to control access from streaming instances to your VPC.
  final Input<List<String>> securityGroupIds;

  /// The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  final Input<List<String>> subnetIds;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The VPC that streaming instances will connect to.
  ///
  /// The following arguments are optional:
  final Input<String> vpcId;

  NetworkSettingsArgs({
    this.region,
    required this.securityGroupIds,
    required this.subnetIds,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory NetworkSettingsArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSettingsArgs(
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds: Input.asInput<List<String>>(map['securityGroupIds']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
