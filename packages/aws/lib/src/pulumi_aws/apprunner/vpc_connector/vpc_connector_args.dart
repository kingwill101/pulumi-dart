// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VpcConnector.
class VpcConnectorArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of IDs of security groups that App Runner should use for access to AWS resources under the specified subnets. If not specified, App Runner uses the default security group of the Amazon VPC. The default security group allows all outbound traffic.
  final Input<List<String>> securityGroups;

  /// List of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
  final Input<List<String>> subnets;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Name for the VPC connector.
  final Input<String> vpcConnectorName;

  VpcConnectorArgs({
    this.region,
    required this.securityGroups,
    required this.subnets,
    this.tags,
    required this.vpcConnectorName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroups'] = securityGroups;
    map['subnets'] = subnets;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcConnectorName'] = vpcConnectorName;
    return map;
  }

  factory VpcConnectorArgs.fromMap(Map<String, dynamic> map) {
    return VpcConnectorArgs(
      region: Input.asOptionalInput<String>(map['region']),
      securityGroups: Input.asInput<List<String>>(map['securityGroups']),
      subnets: Input.asInput<List<String>>(map['subnets']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConnectorName: Input.asInput<String>(map['vpcConnectorName']),
    );
  }
}
