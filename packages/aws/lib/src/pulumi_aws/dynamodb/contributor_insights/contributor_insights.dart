import 'package:pulumi/pulumi.dart';
import 'contributor_insights_args.dart';

/// Provides a DynamoDB contributor insights resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.dynamodb.ContributorInsights` using the format `name:table_name/index:index_name`, followed by the account number. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/contributorInsights:ContributorInsights test name:ExampleTableName/index:ExampleIndexName/123456789012
/// ```
class ContributorInsights extends CustomResource {
  /// The global secondary index name
  late final Output<String?> indexName;

  /// argument to specify the [CloudWatch contributor insights mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/contributorinsights_HowItWorks.html#contributorinsights_HowItWorks.Modes)
  late final Output<String> mode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the table to enable contributor insights
  late final Output<String> tableName;

  ContributorInsights(
    String name, {
    ContributorInsightsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/contributorInsights:ContributorInsights',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.indexName = registerOutput<String?>('indexName');
    this.mode = registerOutput<String>('mode');
    this.region = registerOutput<String>('region');
    this.tableName = registerOutput<String>('tableName');
  }
}
