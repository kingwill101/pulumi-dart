import 'package:pulumi/pulumi.dart';
import 'resource_args4.dart';

/// Resource for managing an AWS Resource Groups Resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS Resource Groups Resource using `group_arn` and `resource_arn`, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:resourcegroups/resource:Resource example arn:aws:resource-groups:us-west-2:012345678901:group/example,arn:aws:lambda:us-west-2:012345678901:function:example
/// ```
class ResourceType4 extends CustomResource {
  /// Name or ARN of the resource group to add resources to.
  late final Output<String> groupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the resource to be added to the group.
  late final Output<String> resourceArn;

  /// The resource type of a resource, such as `AWS::EC2::Instance`.
  late final Output<String> resourceType;

  ResourceType4(
    String name, {
    ResourceArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:resourcegroups/resource:Resource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupArn = registerOutput<String>('groupArn');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
