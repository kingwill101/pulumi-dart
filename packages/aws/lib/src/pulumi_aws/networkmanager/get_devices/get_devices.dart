import 'package:pulumi/pulumi.dart';
import 'get_devices_args.dart';
import 'get_devices_result.dart';

/// Provides details about existing Network Manager devices.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getDevices({
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
/// example = aws.networkmanager.get_devices(global_network_id=global_network_id,
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
/// var example = Aws.NetworkManager.GetDevices.Invoke(new()
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
/// _, err := networkmanager.GetDevices(ctx, &networkmanager.GetDevicesArgs{
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
/// import com.pulumi.aws.networkmanager.inputs.GetDevicesArgs;
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
/// final var example = NetworkmanagerFunctions.getDevices(GetDevicesArgs.builder()
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
/// function: aws:networkmanager:getDevices
/// arguments:
/// globalNetworkId: ${globalNetworkId}
/// tags:
/// Env: test
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDevicesResult> getDevices(
  GetDevicesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getDevices:getDevices',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDevicesResult.fromMap(result);
}
