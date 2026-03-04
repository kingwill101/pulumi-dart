// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Resource resources.
class ResourceState {
  /// JSON string matching the CloudFormation resource type schema with desired configuration.
  final pulumi.Input<String>? desiredState;

  /// JSON string matching the CloudFormation resource type schema with current configuration. Underlying attributes can be referenced via the `jsondecode()` function, for example, `jsondecode(data.aws_cloudcontrolapi_resource.example.properties)["example"]`.
  final pulumi.Input<String>? properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Resource Name (ARN) of the IAM Role to assume for operations.
  final pulumi.Input<String>? roleArn;

  /// JSON string of the CloudFormation resource type schema which is used for plan time validation where possible. Automatically fetched if not provided. In large scale environments with multiple resources using the same `type_name`, it is recommended to fetch the schema once via the `aws.cloudformation.CloudFormationType` data source and use this argument to reduce `DescribeType` API operation throttling. This value is marked sensitive only to prevent large plan differences from showing.
  final pulumi.Input<String>? schema;

  /// CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? typeName;

  /// Identifier of the CloudFormation resource type version.
  final pulumi.Input<String>? typeVersionId;

  /// Creates a new [ResourceState].
  /// [desiredState] JSON string matching the CloudFormation resource type schema with desired configuration.
  /// [properties] JSON string matching the CloudFormation resource type schema with current configuration. Underlying attributes can be referenced via the `jsondecode()` function, for example, `jsondecode(data.aws_cloudcontrolapi_resource.example.properties)["example"]`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Amazon Resource Name (ARN) of the IAM Role to assume for operations.
  /// [schema] JSON string of the CloudFormation resource type schema which is used for plan time validation where possible. Automatically fetched if not provided. In large scale environments with multiple resources using the same `type_name`, it is recommended to fetch the schema once via the `aws.cloudformation.CloudFormationType` data source and use this argument to reduce `DescribeType` API operation throttling. This value is marked sensitive only to prevent large plan differences from showing.
  /// [typeName] CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  /// [typeVersionId] Identifier of the CloudFormation resource type version.
  ResourceState({
    this.desiredState,
    this.properties,
    this.region,
    this.roleArn,
    this.schema,
    this.typeName,
    this.typeVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': ?desiredState,
      'properties': ?properties,
      'region': ?region,
      'roleArn': ?roleArn,
      'schema': ?schema,
      'typeName': ?typeName,
      'typeVersionId': ?typeVersionId,
    };
  }

  factory ResourceState.fromMap(Map<String, dynamic> map) {
    return ResourceState(
      desiredState: (() {
        final guardedValue = map['desiredState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArn: (() {
        final guardedValue = map['roleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schema: (() {
        final guardedValue = map['schema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      typeName: (() {
        final guardedValue = map['typeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      typeVersionId: (() {
        final guardedValue = map['typeVersionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
