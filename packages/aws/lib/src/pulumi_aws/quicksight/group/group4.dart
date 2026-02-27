import 'package:pulumi/pulumi.dart';
import 'group_args4.dart';

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
class Group4 extends CustomResource {
  /// Amazon Resource Name (ARN) of group
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// A description for the group.
  late final Output<String?> description;

  /// A name for the group.
  late final Output<String> groupName;

  /// The namespace. Currently, you should set this to `default`.
  late final Output<String?> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Group4(
    String name, {
    GroupArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/group:Group',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.description = registerOutput<String?>('description');
    this.groupName = registerOutput<String>('groupName');
    this.namespace = registerOutput<String?>('namespace');
    this.region = registerOutput<String>('region');
  }
}
