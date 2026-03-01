// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudcontrol_resource_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_cloudcontrol_resource_resource_args_doc}
class ResourceArgs {
  /// JSON string matching the CloudFormation resource type schema with desired configuration.
  final pulumi.Input<String> desiredState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Resource Name (ARN) of the IAM Role to assume for operations.
  final pulumi.Input<String>? roleArn;

  /// JSON string of the CloudFormation resource type schema which is used for plan time validation where possible. Automatically fetched if not provided. In large scale environments with multiple resources using the same `type_name`, it is recommended to fetch the schema once via the `aws.cloudformation.CloudFormationType` data source and use this argument to reduce `DescribeType` API operation throttling. This value is marked sensitive only to prevent large plan differences from showing.
  final pulumi.Input<String>? schema;

  /// CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> typeName;

  /// Identifier of the CloudFormation resource type version.
  final pulumi.Input<String>? typeVersionId;

  /// Creates a new [ResourceArgs].
  /// [desiredState] JSON string matching the CloudFormation resource type schema with desired configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM Role to assume for operations.
  /// [schema] JSON string of the CloudFormation resource type schema which is used for plan time validation where possible. Automatically fetched if not provided. In large scale environments with multiple resources using the same `type_name`, it is recommended to fetch the schema once via the `aws.cloudformation.CloudFormationType` data source and use this argument to reduce `DescribeType` API operation throttling. This value is marked sensitive only to prevent large plan differences from showing.
  /// [typeName] CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  /// [typeVersionId] Identifier of the CloudFormation resource type version.
  ResourceArgs({
    required String desiredState,
    String? region,
    String? roleArn,
    String? schema,
    required String typeName,
    String? typeVersionId,
  }) : desiredState = pulumi.Input.asInput<String>(desiredState),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
       schema = pulumi.Input.asOptionalInput<String>(schema),
       typeName = pulumi.Input.asInput<String>(typeName),
       typeVersionId = pulumi.Input.asOptionalInput<String>(typeVersionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': desiredState,
      'region': ?region,
      'roleArn': ?roleArn,
      'schema': ?schema,
      'typeName': typeName,
      'typeVersionId': ?typeVersionId,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      desiredState: map['desiredState'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
      typeName: map['typeName'] as String,
      typeVersionId: map['typeVersionId'] == null
          ? null
          : map['typeVersionId'] as String,
    );
  }
}
