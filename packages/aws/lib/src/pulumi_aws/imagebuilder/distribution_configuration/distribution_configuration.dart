import 'package:pulumi/pulumi.dart';
import '../distribution_configuration_distribution/distribution_configuration_distribution.dart';
import 'distribution_configuration_args.dart';

/// Manages an Image Builder Distribution Configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder distribution configuration.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.getDistributionConfigurations` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/distributionConfiguration:DistributionConfiguration example arn:aws:imagebuilder:us-east-1:123456789012:distribution-configuration/example
/// ```
class DistributionConfiguration extends CustomResource {
  /// (Required) Amazon Resource Name (ARN) of the distribution configuration.
  late final Output<String> arn;

  /// Date the distribution configuration was created.
  late final Output<String> dateCreated;

  /// Date the distribution configuration was updated.
  late final Output<String> dateUpdated;

  /// Description of the distribution configuration.
  late final Output<String?> description;

  /// One or more configuration blocks with distribution settings. Detailed below.
  ///
  /// The following arguments are optional:
  late final Output<List<DistributionConfigurationDistribution>> distributions;

  /// Name of the distribution configuration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags for the distribution configuration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  DistributionConfiguration(
    String name, {
    DistributionConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/distributionConfiguration:DistributionConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.dateUpdated = registerOutput<String>('dateUpdated');
    this.description = registerOutput<String?>('description');
    this.distributions =
        registerOutput<List<DistributionConfigurationDistribution>>(
            'distributions');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
