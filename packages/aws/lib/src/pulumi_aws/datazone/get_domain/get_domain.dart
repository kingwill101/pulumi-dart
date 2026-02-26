import 'package:pulumi/pulumi.dart';
import 'get_domain_args.dart';
import 'get_domain_result.dart';

/// Data source for managing an AWS DataZone Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.datazone.getDomain({
/// name: "example_domain",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.get_domain(name="example_domain")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.DataZone.GetDomain.Invoke(new()
/// {
/// Name = "example_domain",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datazone.LookupDomain(ctx, &datazone.LookupDomainArgs{
/// Name: pulumi.StringRef("example_domain"),
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
/// import com.pulumi.aws.datazone.DatazoneFunctions;
/// import com.pulumi.aws.datazone.inputs.GetDomainArgs;
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
/// final var example = DatazoneFunctions.getDomain(GetDomainArgs.builder()
/// .name("example_domain")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:datazone:getDomain
/// arguments:
/// name: example_domain
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datazone/getDomain:getDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}
