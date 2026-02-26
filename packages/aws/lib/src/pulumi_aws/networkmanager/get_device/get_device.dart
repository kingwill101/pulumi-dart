import 'package:pulumi/pulumi.dart';
import 'get_device_args.dart';
import 'get_device_result.dart';

/// Provides details about an existing Network Manager device.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.networkmanager.getDevice({
/// globalNetworkId: globalNetworkId,
/// deviceId: deviceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.get_device(global_network_id=global_network_id,
/// device_id=device_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.NetworkManager.GetDevice.Invoke(new()
/// {
/// GlobalNetworkId = globalNetworkId,
/// DeviceId = deviceId,
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
/// _, err := networkmanager.LookupDevice(ctx, &networkmanager.LookupDeviceArgs{
/// GlobalNetworkId: globalNetworkId,
/// DeviceId:        deviceId,
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
/// import com.pulumi.aws.networkmanager.inputs.GetDeviceArgs;
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
/// final var example = NetworkmanagerFunctions.getDevice(GetDeviceArgs.builder()
/// .globalNetworkId(globalNetworkId)
/// .deviceId(deviceId)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:networkmanager:getDevice
/// arguments:
/// globalNetworkId: ${globalNetworkId}
/// deviceId: ${deviceId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getDevice:getDevice',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}
