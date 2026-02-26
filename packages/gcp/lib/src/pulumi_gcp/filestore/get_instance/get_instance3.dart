import 'package:pulumi/pulumi.dart';
import 'get_instance_args3.dart';
import 'get_instance_result3.dart';

/// Get info about a Google Cloud Filestore instance.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myInstance = gcp.filestore.getInstance({
/// name: "my-filestore-instance",
/// });
/// export const instanceIpAddresses = myInstance.then(myInstance => myInstance.networks?.ipAddresses);
/// export const instanceConnectMode = myInstance.then(myInstance => myInstance.networks?.connectMode);
/// export const instanceFileShareName = myInstance.then(myInstance => myInstance.fileShares?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_instance = gcp.filestore.get_instance(name="my-filestore-instance")
/// pulumi.export("instanceIpAddresses", my_instance.networks.ip_addresses)
/// pulumi.export("instanceConnectMode", my_instance.networks.connect_mode)
/// pulumi.export("instanceFileShareName", my_instance.file_shares.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myInstance = Gcp.Filestore.GetInstance.Invoke(new()
/// {
/// Name = "my-filestore-instance",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["instanceIpAddresses"] = myInstance.Apply(getInstanceResult => getInstanceResult.Networks?.IpAddresses),
/// ["instanceConnectMode"] = myInstance.Apply(getInstanceResult => getInstanceResult.Networks?.ConnectMode),
/// ["instanceFileShareName"] = myInstance.Apply(getInstanceResult => getInstanceResult.FileShares?.Name),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myInstance, err := filestore.LookupInstance(ctx, &filestore.LookupInstanceArgs{
/// Name: "my-filestore-instance",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("instanceIpAddresses", myInstance.Networks.IpAddresses)
/// ctx.Export("instanceConnectMode", myInstance.Networks.ConnectMode)
/// ctx.Export("instanceFileShareName", myInstance.FileShares.Name)
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
/// import com.pulumi.gcp.filestore.FilestoreFunctions;
/// import com.pulumi.gcp.filestore.inputs.GetInstanceArgs;
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
/// final var myInstance = FilestoreFunctions.getInstance(GetInstanceArgs.builder()
/// .name("my-filestore-instance")
/// .build());
///
/// ctx.export("instanceIpAddresses", myInstance.networks().ipAddresses());
/// ctx.export("instanceConnectMode", myInstance.networks().connectMode());
/// ctx.export("instanceFileShareName", myInstance.fileShares().name());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myInstance:
/// fn::invoke:
/// function: gcp:filestore:getInstance
/// arguments:
/// name: my-filestore-instance
/// outputs:
/// instanceIpAddresses: ${myInstance.networks.ipAddresses}
/// instanceConnectMode: ${myInstance.networks.connectMode}
/// instanceFileShareName: ${myInstance.fileShares.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceResult3> getInstance3(
  GetInstanceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:filestore/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult3.fromMap(result);
}
