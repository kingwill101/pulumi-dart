import 'package:pulumi/pulumi.dart' as pulumi;
import 'contributor_insights_args.dart';
import 'contributor_insights_state.dart';

/// Provides a DynamoDB contributor insights resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.dynamodb.ContributorInsights("test", {tableName: "ExampleTableName"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dynamodb.ContributorInsights("test", table_name="ExampleTableName")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.DynamoDB.ContributorInsights("test", new()
///     {
///         TableName = "ExampleTableName",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dynamodb.NewContributorInsights(ctx, "test", &dynamodb.ContributorInsightsArgs{
/// 			TableName: pulumi.String("ExampleTableName"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dynamodb_contributorinsights" "test" {
///   table_name = "ExampleTableName"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dynamodb.ContributorInsights;
/// import com.pulumi.aws.dynamodb.ContributorInsightsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new ContributorInsights("test", ContributorInsightsArgs.builder()
///             .tableName("ExampleTableName")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:dynamodb:ContributorInsights
///     properties:
///       tableName: ExampleTableName
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.dynamodb.ContributorInsights` using the format `name:table_name/index:index_name`, followed by the account number. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/contributorInsights:ContributorInsights test name:ExampleTableName/index:ExampleIndexName/123456789012
/// ```
class ContributorInsights extends pulumi.CustomResource {
  /// The global secondary index name
  late final pulumi.Output<String?> indexName;
  /// argument to specify the [CloudWatch contributor insights mode](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/contributorinsights_HowItWorks.html#contributorinsights_HowItWorks.Modes)
  late final pulumi.Output<String> mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the table to enable contributor insights
  late final pulumi.Output<String> tableName;

  /// Creates a new [ContributorInsights].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContributorInsights]. {@macro pulumi_dynamodb_contributor_insights_contributor_insights_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContributorInsights(
    String name, {
    ContributorInsightsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/contributorInsights:ContributorInsights',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    indexName = registerOutput<String?>('indexName');
    mode = registerOutput<String>('mode');
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
  }

  /// Gets an existing [ContributorInsights] resource's state with the given [name] and [id].
  static ContributorInsights get(
    String name,
    pulumi.Input<String> id, {
    ContributorInsightsState? state,
  }) {
    return ContributorInsights._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContributorInsights._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/contributorInsights:ContributorInsights',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    indexName = registerOutput<String?>('indexName');
    mode = registerOutput<String>('mode');
    region = registerOutput<String>('region');
    tableName = registerOutput<String>('tableName');
  }
}
