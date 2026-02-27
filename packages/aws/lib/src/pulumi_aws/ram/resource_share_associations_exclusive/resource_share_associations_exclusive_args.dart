// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResourceShareAssociationsExclusive.
class ResourceShareAssociationsExclusiveArgs {
  /// A set of principals to associate with the resource share. Principals not configured in this argument will be removed. Valid values include:
  /// * AWS account ID (exactly 12 digits, e.g., `123456789012`)
  /// * AWS Organizations Organization ARN (e.g., `arn:aws:organizations::123456789012:organization/o-exampleorgid`)
  /// * AWS Organizations Organizational Unit ARN (e.g., `arn:aws:organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid`)
  /// * IAM role ARN (e.g., `arn:aws:iam::123456789012:role/example-role`)
  /// * IAM user ARN (e.g., `arn:aws:iam::123456789012:user/example-user`)
  /// * Service principal (e.g., `ec2.amazonaws.com`)
  final Input<List<String>>? principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A set of Amazon Resource Names (ARNs) of resources to associate with the resource share. Resources not configured in this argument will be removed.
  final Input<List<String>>? resourceArns;

  /// The Amazon Resource Name (ARN) of the resource share. Changing this value forces creation of a new resource.
  final Input<String> resourceShareArn;

  /// A set of AWS account IDs that restrict which accounts a service principal can access resources from. This argument can only be specified when `principals` contains only service principals. When specified, it limits the source accounts from which the service can access the shared resources.
  final Input<List<String>>? sources;

  ResourceShareAssociationsExclusiveArgs({
    this.principals,
    this.region,
    this.resourceArns,
    required this.resourceShareArn,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final principalsValue = principals;
    if (principalsValue != null) {
      map['principals'] = principalsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceArnsValue = resourceArns;
    if (resourceArnsValue != null) {
      map['resourceArns'] = resourceArnsValue;
    }
    map['resourceShareArn'] = resourceShareArn;
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = sourcesValue;
    }
    return map;
  }

  factory ResourceShareAssociationsExclusiveArgs.fromMap(
      Map<String, dynamic> map) {
    return ResourceShareAssociationsExclusiveArgs(
      principals: Input.asOptionalInput<List<String>>(map['principals']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArns: Input.asOptionalInput<List<String>>(map['resourceArns']),
      resourceShareArn: Input.asInput<String>(map['resourceShareArn']),
      sources: Input.asOptionalInput<List<String>>(map['sources']),
    );
  }
}
