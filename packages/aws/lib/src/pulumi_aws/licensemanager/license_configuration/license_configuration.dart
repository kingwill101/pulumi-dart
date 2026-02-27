import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_configuration_args.dart';

/// Provides a License Manager license configuration resource.
///
/// > **Note:** Removing the `license_count` attribute is not supported by the License Manager API.
///
/// ## Example Usage
///
///
///
/// ## Rules
///
/// License rules should be in the format of `#RuleType=RuleValue`. Supported rule types:
///
/// * `minimumVcpus` - Resource must have minimum vCPU count in order to use the license. Default: 1
/// * `maximumVcpus` - Resource must have maximum vCPU count in order to use the license. Default: unbounded, limit: 10000
/// * `minimumCores` - Resource must have minimum core count in order to use the license. Default: 1
/// * `maximumCores` - Resource must have maximum core count in order to use the license. Default: unbounded, limit: 10000
/// * `minimumSockets` - Resource must have minimum socket count in order to use the license. Default: 1
/// * `maximumSockets` - Resource must have maximum socket count in order to use the license. Default: unbounded, limit: 10000
/// * `allowedTenancy` - Defines where the license can be used. If set, restricts license usage to selected tenancies. Specify a comma delimited list of `EC2-Default`, `EC2-DedicatedHost`, `EC2-DedicatedInstance`
///
/// ## Import
///
/// Using `pulumi import`, import license configurations using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/licenseConfiguration:LicenseConfiguration example arn:aws:license-manager:eu-west-1:123456789012:license-configuration:lic-0123456789abcdef0123456789abcdef
/// ```
class LicenseConfiguration extends pulumi.CustomResource {
  /// The license configuration ARN.
  late final pulumi.Output<String> arn;

  /// Description of the license configuration.
  late final pulumi.Output<String?> description;

  /// Number of licenses managed by the license configuration.
  late final pulumi.Output<int?> licenseCount;

  /// Sets the number of available licenses as a hard limit.
  late final pulumi.Output<bool?> licenseCountHardLimit;

  /// Dimension to use to track license inventory. Specify either `vCPU`, `Instance`, `Core` or `Socket`.
  late final pulumi.Output<String> licenseCountingType;

  /// Array of configured License Manager rules.
  late final pulumi.Output<List<String>?> licenseRules;

  /// Name of the license configuration.
  late final pulumi.Output<String> name;

  /// Account ID of the owner of the license configuration.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  LicenseConfiguration(
    String name, {
    LicenseConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/licenseConfiguration:LicenseConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.licenseCount = registerOutput<int?>('licenseCount');
    this.licenseCountHardLimit = registerOutput<bool?>('licenseCountHardLimit');
    this.licenseCountingType = registerOutput<String>('licenseCountingType');
    this.licenseRules = registerOutput<List<String>?>('licenseRules');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
