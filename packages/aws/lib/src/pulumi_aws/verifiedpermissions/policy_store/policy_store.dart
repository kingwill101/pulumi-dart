import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_store_validation_settings/policy_store_validation_settings.dart';
import 'policy_store_args.dart';

/// This is a Terraform resource for managing an AWS Verified Permissions Policy Store.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy Store using the `policy_store_id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/policyStore:PolicyStore example DxQg2j8xvXJQ1tQCYNWj9T
/// ```
class PolicyStore extends pulumi.CustomResource {
  /// The ARN of the Policy Store.
  late final pulumi.Output<String> arn;

  /// Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted. Valid Values: `ENABLED`, `DISABLED`. Default value: `DISABLED`.
  late final pulumi.Output<String> deletionProtection;

  /// A description of the Policy Store.
  late final pulumi.Output<String?> description;

  /// The ID of the Policy Store.
  late final pulumi.Output<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Validation settings for the policy store.
  late final pulumi.Output<PolicyStoreValidationSettings> validationSettings;

  PolicyStore(
    String name, {
    PolicyStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/policyStore:PolicyStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtection = registerOutput<String>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.validationSettings =
        registerOutput<PolicyStoreValidationSettings>('validationSettings');
  }
}
