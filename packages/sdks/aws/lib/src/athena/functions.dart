import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_named_query_args.dart';
import 'get_named_query_result.dart';

/// Provides an Athena Named Query data source.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.athena.getNamedQuery({
///     name: "athenaQueryName",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.get_named_query(name="athenaQueryName")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Athena.GetNamedQuery.Invoke(new()
///     {
///         Name = "athenaQueryName",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := athena.LookupNamedQuery(ctx, &athena.LookupNamedQueryArgs{
/// 			Name: "athenaQueryName",
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
/// data "aws_athena_getnamedquery" "example" {
///   name = "athenaQueryName"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.athena.AthenaFunctions;
/// import com.pulumi.aws.athena.inputs.GetNamedQueryArgs;
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
///         final var example = AthenaFunctions.getNamedQuery(GetNamedQueryArgs.builder()
///             .name("athenaQueryName")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:athena:getNamedQuery
///       arguments:
///         name: athenaQueryName
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_athena_get_named_query_get_named_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamedQueryResult> getNamedQuery(
  GetNamedQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:athena/getNamedQuery:getNamedQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamedQueryResult.fromMap(result);
}
