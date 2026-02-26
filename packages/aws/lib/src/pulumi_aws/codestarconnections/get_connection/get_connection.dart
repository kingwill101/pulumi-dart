import 'package:pulumi/pulumi.dart';
import 'get_connection_args.dart';
import 'get_connection_result.dart';

/// Provides details about CodeStar Connection.
///
/// ## Example Usage
///
/// ### By ARN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.codestarconnections.getConnection({
/// arn: exampleAwsCodestarconnectionsConnection.arn,
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
/// var example = Aws.CodeStarConnections.GetConnection.Invoke(new()
/// {
/// Arn = exampleAwsCodestarconnectionsConnection.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codestarconnections"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codestarconnections.LookupConnection(ctx, &codestarconnections.LookupConnectionArgs{
/// Arn: pulumi.StringRef(exampleAwsCodestarconnectionsConnection.Arn),
/// }, nil)
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
/// import com.pulumi.aws.codestarconnections.CodestarconnectionsFunctions;
/// import com.pulumi.aws.codestarconnections.inputs.GetConnectionArgs;
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
/// final var example = CodestarconnectionsFunctions.getConnection(GetConnectionArgs.builder()
/// .arn(exampleAwsCodestarconnectionsConnection.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:codestarconnections:getConnection
/// arguments:
/// arn: ${exampleAwsCodestarconnectionsConnection.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### By Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.codestarconnections.getConnection({
/// name: exampleAwsCodestarconnectionsConnection.name,
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
/// var example = Aws.CodeStarConnections.GetConnection.Invoke(new()
/// {
/// Name = exampleAwsCodestarconnectionsConnection.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codestarconnections"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codestarconnections.LookupConnection(ctx, &codestarconnections.LookupConnectionArgs{
/// Name: pulumi.StringRef(exampleAwsCodestarconnectionsConnection.Name),
/// }, nil)
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
/// import com.pulumi.aws.codestarconnections.CodestarconnectionsFunctions;
/// import com.pulumi.aws.codestarconnections.inputs.GetConnectionArgs;
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
/// final var example = CodestarconnectionsFunctions.getConnection(GetConnectionArgs.builder()
/// .name(exampleAwsCodestarconnectionsConnection.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:codestarconnections:getConnection
/// arguments:
/// name: ${exampleAwsCodestarconnectionsConnection.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codestarconnections/getConnection:getConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}
