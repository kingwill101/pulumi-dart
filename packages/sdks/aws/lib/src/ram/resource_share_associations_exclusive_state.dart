// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceShareAssociationsExclusive resources.
class ResourceShareAssociationsExclusiveState {
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
  final pulumi.Input<String>? resourceShareArn;
  /// A set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when `principals` contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  final pulumi.Input<List<String>>? sources;

  /// Creates a new [ResourceShareAssociationsExclusiveState].
  /// [principals] A set of principals to associate with the resource share. Principals not configured in this argument will be removed. Valid values include:
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArns] A set of Amazon Resource Names (ARNs) of resources to associate with the resource share. Resources not configured in this argument will be removed.
  /// [resourceShareArn] The Amazon Resource Name (ARN) of the resource share. Changing this value forces creation of a new resource.
  /// [sources] A set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when `principals` contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  ResourceShareAssociationsExclusiveState({
    this.principals,
    this.region,
    this.resourceArns,
    this.resourceShareArn,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principals': ?principals,
      'region': ?region,
      'resourceArns': ?resourceArns,
      'resourceShareArn': ?resourceShareArn,
      'sources': ?sources,
    };
  }

  factory ResourceShareAssociationsExclusiveState.fromMap(Map<String, dynamic> map) {
    return ResourceShareAssociationsExclusiveState(
      principals: map['principals'] == null ? null : (((map['principals'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArns: map['resourceArns'] == null ? null : (((map['resourceArns'] as List).cast<String>()).input()).input(),
      resourceShareArn: map['resourceShareArn'] == null ? null : ((map['resourceShareArn'] as String).input()).input(),
      sources: map['sources'] == null ? null : (((map['sources'] as List).cast<String>()).input()).input(),
    );
  }
}

