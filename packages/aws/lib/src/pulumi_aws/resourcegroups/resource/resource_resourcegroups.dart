import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_resourcegroups_args.dart';

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
class ResourceResourcegroups extends pulumi.CustomResource {
  /// Name or ARN of the resource group to add resources to.
  late final pulumi.Output<String> groupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the resource to be added to the group.
  late final pulumi.Output<String> resourceArn;

  /// The resource type of a resource, such as `AWS::EC2::Instance`.
  late final pulumi.Output<String> resourceType;

  ResourceResourcegroups(
    String name, {
    ResourceResourcegroupsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resourcegroups/resource:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupArn = registerOutput<String>('groupArn');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
