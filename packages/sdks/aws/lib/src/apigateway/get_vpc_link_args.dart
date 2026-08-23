// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_vpc_link_get_vpc_link_args_doc}
/// Arguments for getVpcLink.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_vpc_link_get_vpc_link_args_doc}
class GetVpcLinkArgs {
  /// Name of the API Gateway VPC Link to look up. If no API Gateway VPC Link is found with this name, an error will be returned. If multiple API Gateway VPC Links are found with this name, an error will be returned.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVpcLinkArgs].
  /// [name] Name of the API Gateway VPC Link to look up. If no API Gateway VPC Link is found with this name, an error will be returned. If multiple API Gateway VPC Links are found with this name, an error will be returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags
  const GetVpcLinkArgs({
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVpcLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
