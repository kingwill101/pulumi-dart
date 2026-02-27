import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_args.dart';

/// Provides an SSM Parameter resource.
///
/// > **Note:** The `overwrite` argument makes it possible to overwrite an existing SSM Parameter created outside of IAC.
///
///
/// ## Example Usage
///
/// ### Basic example
///
///
///
/// ### Encrypted string using default SSM KMS key
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the parameter.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Parameters using the parameter store `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/parameter:Parameter example /my_path/my_paramname
/// ```
class Parameter extends pulumi.CustomResource {
  /// Regular expression used to validate the parameter value.
  late final pulumi.Output<String?> allowedPattern;

  /// ARN of the parameter.
  late final pulumi.Output<String> arn;

  /// Data type of the parameter. Valid values: `text`, `aws:ssm:integration` and `aws:ec2:image` for AMI format, see the [Native parameter support for Amazon Machine Image IDs](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html).
  late final pulumi.Output<String> dataType;

  /// Description of the parameter.
  late final pulumi.Output<String?> description;

  /// Indicates whether the resource has a `value_wo` set.
  late final pulumi.Output<bool> hasValueWo;

  /// Value of the parameter. **Use caution:** This value is _never_ marked as sensitive in the pulumi preview output. This argument is not valid with a `type` of `SecureString`.
  late final pulumi.Output<String> insecureValue;

  /// KMS key ID or ARN for encrypting a SecureString.
  late final pulumi.Output<String> keyId;

  /// Name of the parameter. If the name contains a path (e.g., any forward slashes (`/`)), it must be fully qualified with a leading forward slash (`/`). For additional requirements and constraints, see the [AWS SSM User Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html).
  late final pulumi.Output<String> name;

  /// Overwrite an existing parameter. If not specified, defaults to `false` during create operations to avoid overwriting existing resources and then `true` for all subsequent operations once the resource is managed by IAC. Lifecycle rules should be used to manage non-standard update behavior.
  late final pulumi.Output<bool?> overwrite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Parameter tier to assign to the parameter. If not specified, will use the default parameter tier for the region. Valid tiers are `Standard`, `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier parameter to `Standard` will recreate the resource. For more information on parameter tiers, see the [AWS SSM Parameter tier comparison and guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html).
  late final pulumi.Output<String> tier;

  /// Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type
  late final pulumi.Output<String> value;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type`. Additionally, `write-only` values are never stored to state. `value_wo_version` can be used to trigger an update and is required with this argument.
  late final pulumi.Output<String?> valueWo;

  /// Used together with `value_wo` to trigger an update. Increment this value when an update to the `value_wo` is required.
  ///
  /// > **NOTE:** `aws:ssm:integration` data_type parameters must be of the type `SecureString` and the name must start with the prefix `/d9d01087-4a3f-49e0-b0b4-d568d7826553/ssm/integrations/webhook/`. See [here](https://docs.aws.amazon.com/systems-manager/latest/userguide/creating-integrations.html) for information on the usage of `aws:ssm:integration` parameters.
  late final pulumi.Output<int?> valueWoVersion;

  /// Version of the parameter.
  late final pulumi.Output<int> version;

  Parameter(
    String name, {
    ParameterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/parameter:Parameter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowedPattern = registerOutput<String?>('allowedPattern');
    this.arn = registerOutput<String>('arn');
    this.dataType = registerOutput<String>('dataType');
    this.description = registerOutput<String?>('description');
    this.hasValueWo = registerOutput<bool>('hasValueWo');
    this.insecureValue = registerOutput<String>('insecureValue');
    this.keyId = registerOutput<String>('keyId');
    this.name = registerOutput<String>('name');
    this.overwrite = registerOutput<bool?>('overwrite');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tier = registerOutput<String>('tier');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
    this.valueWo = registerOutput<String?>('valueWo');
    this.valueWoVersion = registerOutput<int?>('valueWoVersion');
    this.version = registerOutput<int>('version');
  }
}
