import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_iam_args.dart';

/// Provides an IAM group.
///
/// > **NOTE on user management:** Using `aws.iam.GroupMembership` or `aws.iam.UserGroupMembership` resources in addition to manually managing user/group membership using the console may lead to configuration drift or conflicts. For this reason, it's recommended to either manage membership entirely with the provider or entirely within the AWS console.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/group:Group developers developers
/// ```
class GroupIam extends pulumi.CustomResource {
  /// The ARN assigned by AWS for this group.
  late final pulumi.Output<String> arn;

  /// The group's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".
  late final pulumi.Output<String> name;

  /// Path in which to create the group.
  late final pulumi.Output<String?> path;

  /// The [unique ID][1] assigned by AWS.
  late final pulumi.Output<String> uniqueId;

  GroupIam(
    String name, {
    GroupIamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String?>('path');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}
