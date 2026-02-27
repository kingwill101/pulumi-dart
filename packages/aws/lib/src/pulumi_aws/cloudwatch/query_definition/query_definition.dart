import 'package:pulumi/pulumi.dart';
import 'query_definition_args.dart';

/// Provides a CloudWatch Logs query definition resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch query definitions using the query definition ARN. The ARN can be found on the "Edit Query" page for the query in the AWS Console. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/queryDefinition:QueryDefinition example arn:aws:logs:us-west-2:123456789012:query-definition:269951d7-6f75-496d-9d7b-6b7a5486bdbd
/// ```
class QueryDefinition extends CustomResource {
  /// Specific log groups to use with the query.
  late final Output<List<String>?> logGroupNames;

  /// The name of the query.
  late final Output<String> name;

  /// The query definition ID.
  late final Output<String> queryDefinitionId;

  /// The query to save. You can read more about CloudWatch Logs Query Syntax in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  late final Output<String> queryString;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  QueryDefinition(
    String name, {
    QueryDefinitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/queryDefinition:QueryDefinition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.logGroupNames = registerOutput<List<String>?>('logGroupNames');
    this.name = registerOutput<String>('name');
    this.queryDefinitionId = registerOutput<String>('queryDefinitionId');
    this.queryString = registerOutput<String>('queryString');
    this.region = registerOutput<String>('region');
  }
}
