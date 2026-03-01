import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_definition_args.dart';

/// Provides a CloudWatch Logs query definition resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.QueryDefinition("example", {
///     name: "custom_query",
///     logGroupNames: [
///         "/aws/logGroup1",
///         "/aws/logGroup2",
///     ],
///     queryString: `fields @timestamp, @message
/// | sort @timestamp desc
/// | limit 25
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.QueryDefinition("example",
///     name="custom_query",
///     log_group_names=[
///         "/aws/logGroup1",
///         "/aws/logGroup2",
///     ],
///     query_string="""fields @timestamp, @message
/// | sort @timestamp desc
/// | limit 25
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.QueryDefinition("example", new()
///     {
///         Name = "custom_query",
///         LogGroupNames = new[]
///         {
///             "/aws/logGroup1",
///             "/aws/logGroup2",
///         },
///         QueryString = @"fields @timestamp, @message
/// | sort @timestamp desc
/// | limit 25
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewQueryDefinition(ctx, "example", &cloudwatch.QueryDefinitionArgs{
/// 			Name: pulumi.String("custom_query"),
/// 			LogGroupNames: pulumi.StringArray{
/// 				pulumi.String("/aws/logGroup1"),
/// 				pulumi.String("/aws/logGroup2"),
/// 			},
/// 			QueryString: pulumi.String("fields @timestamp, @message\n| sort @timestamp desc\n| limit 25\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.QueryDefinition;
/// import com.pulumi.aws.cloudwatch.QueryDefinitionArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new QueryDefinition("example", QueryDefinitionArgs.builder()
///             .name("custom_query")
///             .logGroupNames(
///                 "/aws/logGroup1",
///                 "/aws/logGroup2")
///             .queryString("""
/// fields @timestamp, @message
/// | sort @timestamp desc
/// | limit 25
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:QueryDefinition
///     properties:
///       name: custom_query
///       logGroupNames:
///         - /aws/logGroup1
///         - /aws/logGroup2
///       queryString: |
///         fields @timestamp, @message
///         | sort @timestamp desc
///         | limit 25
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch query definitions using the query definition ARN. The ARN can be found on the "Edit Query" page for the query in the AWS Console. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/queryDefinition:QueryDefinition example arn:aws:logs:us-west-2:123456789012:query-definition:269951d7-6f75-496d-9d7b-6b7a5486bdbd
/// ```
class QueryDefinition extends pulumi.CustomResource {
  /// Specific log groups to use with the query.
  late final pulumi.Output<List<String>?> logGroupNames;

  /// The name of the query.
  late final pulumi.Output<String> name;

  /// The query definition ID.
  late final pulumi.Output<String> queryDefinitionId;

  /// The query to save. You can read more about CloudWatch Logs Query Syntax in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  late final pulumi.Output<String> queryString;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [QueryDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueryDefinition]. {@macro pulumi_cloudwatch_query_definition_query_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueryDefinition(
    String name, {
    QueryDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/queryDefinition:QueryDefinition',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.logGroupNames = registerOutput<List<String>?>('logGroupNames');
    this.name = registerOutput<String>('name');
    this.queryDefinitionId = registerOutput<String>('queryDefinitionId');
    this.queryString = registerOutput<String>('queryString');
    this.region = registerOutput<String>('region');
  }
}
