// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_egress_only_internet_gateway_egress_only_internet_gateway_args_doc}
/// The set of arguments for EgressOnlyInternetGateway.
/// {@endtemplate}
/// {@macro pulumi_ec2_egress_only_internet_gateway_egress_only_internet_gateway_args_doc}
class EgressOnlyInternetGatewayArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The VPC ID to create in.
  final pulumi.Input<String> vpcId;

  /// Creates a new [EgressOnlyInternetGatewayArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The VPC ID to create in.
  EgressOnlyInternetGatewayArgs({
    String? region,
    Map<String, String>? tags,
    required String vpcId,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcId = pulumi.Input.asInput<String>(vpcId);

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
    map['vpcId'] = vpcId;
    return map;
  }

  factory EgressOnlyInternetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return EgressOnlyInternetGatewayArgs(
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
