import 'package:pulumi/pulumi.dart';
import 'get_network_peering_connection_args.dart';
import 'get_network_peering_connection_result.dart';

/// Data source for managing oracle database network peering resource in AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
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
/// const example = aws.odb.getNetworkPeeringConnection({
/// id: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.get_network_peering_connection(id="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Odb.GetNetworkPeeringConnection.Invoke(new()
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
/// _, err := odb.LookupNetworkPeeringConnection(ctx, &odb.LookupNetworkPeeringConnectionArgs{
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
/// import com.pulumi.aws.odb.inputs.GetNetworkPeeringConnectionArgs;
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
/// final var example = OdbFunctions.getNetworkPeeringConnection(GetNetworkPeeringConnectionArgs.builder()
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
/// function: aws:odb:getNetworkPeeringConnection
/// arguments:
/// id: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkPeeringConnectionResult> getNetworkPeeringConnection(
  GetNetworkPeeringConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetworkPeeringConnection:getNetworkPeeringConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringConnectionResult.fromMap(result);
}
