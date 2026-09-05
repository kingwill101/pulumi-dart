// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_resource_share_associations_exclusive_resource_share_associations_exclusive_args_doc}
/// The set of arguments for ResourceShareAssociationsExclusive.
/// {@endtemplate}
/// {@macro pulumi_ram_resource_share_associations_exclusive_resource_share_associations_exclusive_args_doc}
class ResourceShareAssociationsExclusiveArgs {
  /// Set of principals to associate with the resource share. Principals not configured in this argument will be removed. Valid values include: AWS account ID (exactly 12 digits, e.g., `123456789012`), AWS Organizations Organization ARN (e.g., `arn:aws:organizations::123456789012:organization/o-exampleorgid`), AWS Organizations Organizational Unit ARN (e.g., `arn:aws:organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid`), IAM role ARN (e.g., `arn:aws:iam::123456789012:role/example-role`), IAM user ARN (e.g., `arn:aws:iam::123456789012:user/example-user`), or service principal (e.g., `ec2.amazonaws.com`).
  final pulumi.Input<List<String>?>? principals;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Set of ARNs of resources to associate with the resource share. Resources not configured in this argument will be removed.
  final pulumi.Input<List<String>?>? resourceArns;
  /// ARN of the resource share. Changing this value forces creation of a new resource.
  final pulumi.Input<String> resourceShareArn;
  /// Set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when `principals` contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  final pulumi.Input<List<String>?>? sources;

  /// Creates a new [ResourceShareAssociationsExclusiveArgs].
  /// [principals] Set of principals to associate with the resource share. Principals not configured in this argument will be removed. Valid values include: AWS account ID (exactly 12 digits, e.g., `123456789012`), AWS Organizations Organization ARN (e.g., `arn:aws:organizations::123456789012:organization/o-exampleorgid`), AWS Organizations Organizational Unit ARN (e.g., `arn:aws:organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid`), IAM role ARN (e.g., `arn:aws:iam::123456789012:role/example-role`), IAM user ARN (e.g., `arn:aws:iam::123456789012:user/example-user`), or service principal (e.g., `ec2.amazonaws.com`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArns] Set of ARNs of resources to associate with the resource share. Resources not configured in this argument will be removed.
  /// [resourceShareArn] ARN of the resource share. Changing this value forces creation of a new resource.
  /// [sources] Set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when `principals` contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  const ResourceShareAssociationsExclusiveArgs({
    this.principals,
    this.region,
    this.resourceArns,
    required this.resourceShareArn,
    this.sources,
  });

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
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArns: (() { final guardedValue = map['resourceArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceShareArn: pulumi.Input.fromValue(map['resourceShareArn'] as String),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
