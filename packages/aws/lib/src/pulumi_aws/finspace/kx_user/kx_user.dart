import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_user_args.dart';

/// Resource for managing an AWS FinSpace Kx User.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx User using the `id` (environment ID and user name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxUser:KxUser example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-user
/// ```
class KxUser extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX user.
  late final pulumi.Output<String> arn;

  /// Unique identifier for the KX environment.
  late final pulumi.Output<String> environmentId;

  /// IAM role ARN to be associated with the user.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> iamRole;

  /// A unique identifier for the user.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  KxUser(
    String name, {
    KxUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxUser:KxUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.environmentId = registerOutput<String>('environmentId');
    this.iamRole = registerOutput<String>('iamRole');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
