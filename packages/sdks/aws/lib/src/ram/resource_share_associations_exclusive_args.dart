// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_resource_share_associations_exclusive_resource_share_associations_exclusive_args_doc}
/// The set of arguments for ResourceShareAssociationsExclusive.
/// {@endtemplate}
/// {@macro pulumi_ram_resource_share_associations_exclusive_resource_share_associations_exclusive_args_doc}
class ResourceShareAssociationsExclusiveArgs {
  /// A set of principals to associate with the resource share. Principals not configured in this argument will be removed. Valid values include:
  /// * AWS account ID (exactly 12 digits, e.g., `123456789012`)
  /// * AWS Organizations Organization ARN (e.g., `arn:aws:organizations::123456789012:organization/o-exampleorgid`)
  /// * AWS Organizations Organizational Unit ARN (e.g., `arn:aws:organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid`)
  /// * IAM role ARN (e.g., `arn:aws:iam::123456789012:role/example-role`)
  /// * IAM user ARN (e.g., `arn:aws:iam::123456789012:user/example-user`)
  /// * Service principal (e.g., `ec2.amazonaws.com`)
  final pulumi.Input<List<String>>? principals;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A set of Amazon Resource Names (ARNs) of resources to associate with the resource share. Resources not configured in this argument will be removed.
  final pulumi.Input<List<String>>? resourceArns;
  /// The Amazon Resource Name (ARN) of the resource share. Changing this value forces creation of a new resource.
  final pulumi.Input<String> resourceShareArn;
  /// A set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when `principals` contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  final pulumi.Input<List<String>>? sources;

  /// Creates a new [ResourceShareAssociationsExclusiveArgs].
  /// [principals] A set of principals to associate with the resource share. Principals not configured in this argument will be removed. Valid values include:
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArns] A set of Amazon Resource Names (ARNs) of resources to associate with the resource share. Resources not configured in this argument will be removed.
  /// [resourceShareArn] The Amazon Resource Name (ARN) of the resource share. Changing this value forces creation of a new resource.
  /// [sources] A set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when `principals` contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  ResourceShareAssociationsExclusiveArgs({
    pulumi.Output<List<String>>? principals,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? resourceArns,
    required pulumi.Output<String> resourceShareArn,
    pulumi.Output<List<String>>? sources,
  }) :
      principals = pulumi.Input.asOptionalInput<List<String>>(principals),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArns = pulumi.Input.asOptionalInput<List<String>>(resourceArns),
      resourceShareArn = pulumi.Input.asInput<String>(resourceShareArn),
      sources = pulumi.Input.asOptionalInput<List<String>>(sources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principals': ?principals,
      'region': ?region,
      'resourceArns': ?resourceArns,
      'resourceShareArn': resourceShareArn,
      'sources': ?sources,
    };
  }

  factory ResourceShareAssociationsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return ResourceShareAssociationsExclusiveArgs(
      principals: map['principals'] == null ? null : pulumi.Output.create<List<String>>((map['principals'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArns: map['resourceArns'] == null ? null : pulumi.Output.create<List<String>>((map['resourceArns'] as List).cast<String>()),
      resourceShareArn: pulumi.Output.create<String>(map['resourceShareArn'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<String>>((map['sources'] as List).cast<String>()),
    );
  }
}

