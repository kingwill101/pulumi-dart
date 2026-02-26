import 'package:pulumi/pulumi.dart';
import 'contributor_insights_args.dart';

/// Provides a DynamoDB contributor insights resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var test = new Aws.DynamoDB.ContributorInsights("test", new()
/// {
/// TableName = "ExampleTableName",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dynamodb.NewContributorInsights(ctx, "test", &dynamodb.ContributorInsightsArgs{
/// TableName: pulumi.String("ExampleTableName"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new ContributorInsights("test", ContributorInsightsArgs.builder()
/// .tableName("ExampleTableName")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:dynamodb:ContributorInsights
/// properties:
/// tableName: ExampleTableName
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.dynamodb.ContributorInsights`" pulumi-lang-dotnet="`aws.dynamodb.ContributorInsights`" pulumi-lang-go="`dynamodb.ContributorInsights`" pulumi-lang-python="`dynamodb.ContributorInsights`" pulumi-lang-yaml="`aws.dynamodb.ContributorInsights`" pulumi-lang-java="`aws.dynamodb.ContributorInsights`">`aws.dynamodb.ContributorInsights`</span> using the format `name:table_name/index:index_name`, followed by the account number. For example:
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
