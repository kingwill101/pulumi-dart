import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_args.dart';
import 'get_connection_result.dart';

/// Provides details about CodeStar Connection.
///
/// ## Example Usage
///
/// ### By ARN
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.codestarconnections.getConnection({
///     arn: exampleAwsCodestarconnectionsConnection.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codestarconnections.get_connection(arn=example_aws_codestarconnections_connection["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CodeStarConnections.GetConnection.Invoke(new()
///     {
///         Arn = exampleAwsCodestarconnectionsConnection.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codestarconnections"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codestarconnections.LookupConnection(ctx, &codestarconnections.LookupConnectionArgs{
/// 			Arn: pulumi.StringRef(exampleAwsCodestarconnectionsConnection.Arn),
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
/// data "aws_codestarconnections_getconnection" "example" {
///   arn = exampleAwsCodestarconnectionsConnection.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codestarconnections.CodestarconnectionsFunctions;
/// import com.pulumi.aws.codestarconnections.inputs.GetConnectionArgs;
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
///         final var example = CodestarconnectionsFunctions.getConnection(GetConnectionArgs.builder()
///             .arn(exampleAwsCodestarconnectionsConnection.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:codestarconnections:getConnection
///       arguments:
///         arn: ${exampleAwsCodestarconnectionsConnection.arn}
/// ```
///
///
/// ### By Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.codestarconnections.getConnection({
///     name: exampleAwsCodestarconnectionsConnection.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codestarconnections.get_connection(name=example_aws_codestarconnections_connection["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CodeStarConnections.GetConnection.Invoke(new()
///     {
///         Name = exampleAwsCodestarconnectionsConnection.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codestarconnections"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codestarconnections.LookupConnection(ctx, &codestarconnections.LookupConnectionArgs{
/// 			Name: pulumi.StringRef(exampleAwsCodestarconnectionsConnection.Name),
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
/// data "aws_codestarconnections_getconnection" "example" {
///   name = exampleAwsCodestarconnectionsConnection.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.codestarconnections.CodestarconnectionsFunctions;
/// import com.pulumi.aws.codestarconnections.inputs.GetConnectionArgs;
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
///         final var example = CodestarconnectionsFunctions.getConnection(GetConnectionArgs.builder()
///             .name(exampleAwsCodestarconnectionsConnection.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:codestarconnections:getConnection
///       arguments:
///         name: ${exampleAwsCodestarconnectionsConnection.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_codestarconnections_get_connection_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codestarconnections/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}
