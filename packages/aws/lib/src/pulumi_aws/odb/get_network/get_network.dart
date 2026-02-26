import 'package:pulumi/pulumi.dart';
import 'get_network_args.dart';
import 'get_network_result.dart';

/// Data source for to retrieve network resource in AWS for Oracle Database@AWS.
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
/// const example = aws.odb.getNetwork({
/// id: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_network(id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Odb.GetNetwork.Invoke(new()
/// {
/// Id = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := odb.LookupNetwork(ctx, &odb.LookupNetworkArgs{
/// Id: "example",
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
/// import com.pulumi.aws.odb.OdbFunctions;
/// import com.pulumi.aws.odb.inputs.GetNetworkArgs;
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
/// final var example = OdbFunctions.getNetwork(GetNetworkArgs.builder()
/// .id("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:odb:getNetwork
/// arguments:
/// id: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetwork:getNetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}
