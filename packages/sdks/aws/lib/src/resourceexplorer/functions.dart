import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_args.dart';
import 'search_result.dart';

/// Data source for managing an AWS Resource Explorer Search.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.resourceexplorer.Search({
///     queryString: "region:us-west-2",
///     viewArn: test.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resourceexplorer.search(query_string="region:us-west-2",
///     view_arn=test["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ResourceExplorer.Search.Invoke(new()
///     {
///         QueryString = "region:us-west-2",
///         ViewArn = test.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourceexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourceexplorer.Search(ctx, &resourceexplorer.SearchArgs{
/// 			QueryString: "region:us-west-2",
/// 			ViewArn:     pulumi.StringRef(test.Arn),
/// 		}, nil)
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
/// data "aws_resourceexplorer_search" "example" {
///   query_string = "region:us-west-2"
///   view_arn     = test.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resourceexplorer.ResourceexplorerFunctions;
/// import com.pulumi.aws.resourceexplorer.inputs.SearchArgs;
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
///         final var example = ResourceexplorerFunctions.Search(SearchArgs.builder()
///             .queryString("region:us-west-2")
///             .viewArn(test.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:resourceexplorer:Search
///       arguments:
///         queryString: region:us-west-2
///         viewArn: ${test.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourceexplorer_search_search_args_doc}
/// [options] Invoke options controlling this call.
Future<SearchResult> search(
  SearchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resourceexplorer/search:Search',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return SearchResult.fromMap(result);
}

pulumi.Output<SearchResult> searchOutput(
  SearchArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:resourceexplorer/search:Search',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(SearchResult.fromMap);
}
