import 'package:pulumi/pulumi.dart';
import 'resource_args2.dart';

/// Manages a Cloud Control API Resource. The configuration and lifecycle handling of these resources is proxied through Cloud Control API handlers to the backend service.
class ResourceType2 extends CustomResource {
  /// JSON string matching the CloudFormation resource type schema with desired configuration.
  late final Output<String> desiredState;

  /// JSON string matching the CloudFormation resource type schema with current configuration. Underlying attributes can be referenced via the `jsondecode()` function, for example, `jsondecode(data.aws_cloudcontrolapi_resource.example.properties)["example"]`.
  late final Output<String> properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the IAM Role to assume for operations.
  late final Output<String?> roleArn;

  /// JSON string of the CloudFormation resource type schema which is used for plan time validation where possible. Automatically fetched if not provided. In large scale environments with multiple resources using the same `type_name`, it is recommended to fetch the schema once via the `aws.cloudformation.CloudFormationType` data source and use this argument to reduce `DescribeType` API operation throttling. This value is marked sensitive only to prevent large plan differences from showing.
  late final Output<String> schema;

  /// CloudFormation resource type name. For example, `AWS::EC2::VPC`.
  ///
  /// The following arguments are optional:
  late final Output<String> typeName;

  /// Identifier of the CloudFormation resource type version.
  late final Output<String?> typeVersionId;

  ResourceType2(
    String name, {
    ResourceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudcontrol/resource:Resource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.desiredState = registerOutput<String>('desiredState');
    this.properties = registerOutput<String>('properties');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.schema = registerOutput<String>('schema');
    this.typeName = registerOutput<String>('typeName');
    this.typeVersionId = registerOutput<String?>('typeVersionId');
  }
}
