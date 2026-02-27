import 'package:pulumi/pulumi.dart';
import 'instance_profile_args2.dart';

/// Provides an IAM instance profile.
///
/// > **NOTE:** When managing instance profiles, remember that the `name` attribute must always be unique. This means that even if you have different `role` or `path` values, duplicating an existing instance profile `name` will lead to an `EntityAlreadyExists` error.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Instance Profiles using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/instanceProfile:InstanceProfile test_profile app-instance-profile-1
/// ```
class InstanceProfile2 extends CustomResource {
  /// ARN assigned by AWS to the instance profile.
  late final Output<String> arn;

  /// Creation timestamp of the instance profile.
  late final Output<String> createDate;

  /// Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with `name_prefix`. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The `name` must be unique, regardless of the `path` or `role`. In other words, if there are different `role` or `path` values but the same `name` as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  late final Output<String?> path;

  /// Name of the role to add to the profile.
  late final Output<String?> role;

  /// Map of resource tags for the IAM Instance Profile. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// [Unique ID][1] assigned by AWS.
  late final Output<String> uniqueId;

  InstanceProfile2(
    String name, {
    InstanceProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/instanceProfile:InstanceProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createDate = registerOutput<String>('createDate');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.path = registerOutput<String?>('path');
    this.role = registerOutput<String?>('role');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}
