import 'package:pulumi/pulumi.dart';
import 'get_connections_args.dart';
import 'get_connections_result.dart';

/// Provides details about existing Network Manager connections.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getConnections({
/// globalNetworkId: globalNetworkId,
/// tags: {
/// Env: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_connections(global_network_id=global_network_id,
/// tags={
/// "Env": "test",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.NetworkManager.GetConnections.Invoke(new()
/// {
/// GlobalNetworkId = globalNetworkId,
/// Tags =
/// {
/// { "Env", "test" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.GetConnections(ctx, &networkmanager.GetConnectionsArgs{
/// GlobalNetworkId: globalNetworkId,
/// Tags: map[string]interface{}{
/// "Env": "test",
/// },
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
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetConnectionsArgs;
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
/// final var example = NetworkmanagerFunctions.getConnections(GetConnectionsArgs.builder()
/// .globalNetworkId(globalNetworkId)
/// .tags(Map.of("Env", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkmanager:getConnections
/// arguments:
/// globalNetworkId: ${globalNetworkId}
/// tags:
/// Env: test
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectionsResult> getConnections(
  GetConnectionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getConnections:getConnections',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionsResult.fromMap(result);
}
