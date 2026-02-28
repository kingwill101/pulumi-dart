// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_vpc_link_get_vpc_link_args_doc}
/// Arguments for getVpcLink.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_vpc_link_get_vpc_link_args_doc}
class GetVpcLinkArgs {
  /// Name of the API Gateway VPC Link to look up. If no API Gateway VPC Link is found with this name, an error will be returned.
  /// If multiple API Gateway VPC Links are found with this name, an error will be returned.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVpcLinkArgs].
  /// [name] Name of the API Gateway VPC Link to look up. If no API Gateway VPC Link is found with this name, an error will be returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags
  GetVpcLinkArgs({
    required String name,
    String? region,
    Map<String, String>? tags,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
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

  factory GetVpcLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
