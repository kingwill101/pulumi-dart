import 'package:pulumi/pulumi.dart';
import 'get_namespace_args.dart';
import 'get_namespace_result.dart';

/// Data source for managing an AWS Redshift Serverless Namespace.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshiftserverless.getNamespace({
/// namespaceName: "example-namespace",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.get_namespace(namespace_name="example-namespace")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.RedshiftServerless.GetNamespace.Invoke(new()
/// {
/// NamespaceName = "example-namespace",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshiftserverless.LookupNamespace(ctx, &redshiftserverless.LookupNamespaceArgs{
/// NamespaceName: "example-namespace",
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
/// import com.pulumi.aws.redshiftserverless.RedshiftserverlessFunctions;
/// import com.pulumi.aws.redshiftserverless.inputs.GetNamespaceArgs;
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
/// final var example = RedshiftserverlessFunctions.getNamespace(GetNamespaceArgs.builder()
/// .namespaceName("example-namespace")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:redshiftserverless:getNamespace
/// arguments:
/// namespaceName: example-namespace
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshiftserverless/getNamespace:getNamespace',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}
