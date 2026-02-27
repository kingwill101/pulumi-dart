import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_quicksight_args.dart';

/// Resource for managing QuickSight Group
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Group using the aws account id, namespace and group name separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/group:Group example 123456789123/default/tf-example
/// ```
class GroupQuicksight extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of group
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// A description for the group.
  late final pulumi.Output<String?> description;

  /// A name for the group.
  late final pulumi.Output<String> groupName;

  /// The namespace. Currently, you should set this to `default`.
  late final pulumi.Output<String?> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  GroupQuicksight(
    String name, {
    GroupQuicksightArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.description = registerOutput<String?>('description');
    this.groupName = registerOutput<String>('groupName');
    this.namespace = registerOutput<String?>('namespace');
    this.region = registerOutput<String>('region');
  }
}
