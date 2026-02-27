import 'package:pulumi/pulumi.dart' as pulumi;
import '../configuration_aggregator_account_aggregation_source/configuration_aggregator_account_aggregation_source.dart';
import '../configuration_aggregator_organization_aggregation_source/configuration_aggregator_organization_aggregation_source.dart';
import 'configuration_aggregator_args.dart';

/// Manages an AWS Config Configuration Aggregator
///
/// ## Example Usage
///
/// ### Account Based Aggregation
///
///
///
/// ### Organization Based Aggregation
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Aggregators using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/configurationAggregator:ConfigurationAggregator example foo
/// ```
class ConfigurationAggregator extends pulumi.CustomResource {
  /// The account(s) to aggregate config data from as documented below.
  late final pulumi.Output<ConfigurationAggregatorAccountAggregationSource?>
      accountAggregationSource;

  /// The ARN of the aggregator
  late final pulumi.Output<String> arn;

  /// The name of the configuration aggregator.
  late final pulumi.Output<String> name;

  /// The organization to aggregate config data from as documented below.
  late final pulumi
      .Output<ConfigurationAggregatorOrganizationAggregationSource?>
      organizationAggregationSource;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// Either `account_aggregation_source` or `organization_aggregation_source` must be specified.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ConfigurationAggregator(
    String name, {
    ConfigurationAggregatorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/configurationAggregator:ConfigurationAggregator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountAggregationSource =
        registerOutput<ConfigurationAggregatorAccountAggregationSource?>(
            'accountAggregationSource');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.organizationAggregationSource =
        registerOutput<ConfigurationAggregatorOrganizationAggregationSource?>(
            'organizationAggregationSource');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
