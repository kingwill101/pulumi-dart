// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Resource.
class ResourceArgs2 {
  /// JSON string matching the CloudFormation resource type schema with desired configuration.
  final Input<String> desiredState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) of the IAM Role to assume for operations.
  final Input<String>? roleArn;

  /// JSON string of the CloudFormation resource type schema which is used for plan time validation where possible. Automatically fetched if not provided. In large scale environments with multiple resources using the same `type_name`, it is recommended to fetch the schema once via the `aws.cloudformation.CloudFormationType` data source and use this argument to reduce `DescribeType` API operation throttling. This value is marked sensitive only to prevent large plan differences from showing.
  final Input<String>? schema;

  /// CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  ///
  /// The following arguments are optional:
  final Input<String> typeName;

  /// Identifier of the CloudFormation resource type version.
  final Input<String>? typeVersionId;

  ResourceArgs2({
    required this.desiredState,
    this.region,
    this.roleArn,
    this.schema,
    required this.typeName,
    this.typeVersionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['desiredState'] = desiredState;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    map['typeName'] = typeName;
    final typeVersionIdValue = typeVersionId;
    if (typeVersionIdValue != null) {
      map['typeVersionId'] = typeVersionIdValue;
    }
    return map;
  }

  factory ResourceArgs2.fromMap(Map<String, dynamic> map) {
    return ResourceArgs2(
      desiredState: Input.asInput<String>(map['desiredState']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      schema: Input.asOptionalInput<String>(map['schema']),
      typeName: Input.asInput<String>(map['typeName']),
      typeVersionId: Input.asOptionalInput<String>(map['typeVersionId']),
    );
  }
}
