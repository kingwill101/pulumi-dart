import 'package:pulumi/pulumi.dart';
import 'get_router_configuration_args.dart';
import 'get_router_configuration_result.dart';

/// Data source for retrieving Router Configuration instructions for a given AWS Direct Connect Virtual Interface and Router Type.
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
/// const example = aws.directconnect.getRouterConfiguration({
/// virtualInterfaceId: "dxvif-abcde123",
/// routerTypeIdentifier: "CiscoSystemsInc-2900SeriesRouters-IOS124",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.get_router_configuration(virtual_interface_id="dxvif-abcde123",
/// router_type_identifier="CiscoSystemsInc-2900SeriesRouters-IOS124")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.DirectConnect.GetRouterConfiguration.Invoke(new()
/// {
/// VirtualInterfaceId = "dxvif-abcde123",
/// RouterTypeIdentifier = "CiscoSystemsInc-2900SeriesRouters-IOS124",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := directconnect.GetRouterConfiguration(ctx, &directconnect.GetRouterConfigurationArgs{
/// VirtualInterfaceId:   "dxvif-abcde123",
/// RouterTypeIdentifier: "CiscoSystemsInc-2900SeriesRouters-IOS124",
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
/// import com.pulumi.aws.directconnect.DirectconnectFunctions;
/// import com.pulumi.aws.directconnect.inputs.GetRouterConfigurationArgs;
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
/// final var example = DirectconnectFunctions.getRouterConfiguration(GetRouterConfigurationArgs.builder()
/// .virtualInterfaceId("dxvif-abcde123")
/// .routerTypeIdentifier("CiscoSystemsInc-2900SeriesRouters-IOS124")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:directconnect:getRouterConfiguration
/// arguments:
/// virtualInterfaceId: dxvif-abcde123
/// routerTypeIdentifier: CiscoSystemsInc-2900SeriesRouters-IOS124
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRouterConfigurationResult> getRouterConfiguration(
  GetRouterConfigurationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:directconnect/getRouterConfiguration:getRouterConfiguration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouterConfigurationResult.fromMap(result);
}
