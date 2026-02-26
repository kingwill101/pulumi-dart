import 'package:pulumi/pulumi.dart';
import 'get_external_address_args.dart';
import 'get_external_address_result.dart';

/// Use this data source to get details about a external address resource.
///
/// To get more information about external address, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.externalAddresses)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myExternalAddress = gcp.vmwareengine.getExternalAddress({
/// name: "my-external-address",
/// parent: "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_external_address = gcp.vmwareengine.get_external_address(name="my-external-address",
/// parent="project/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myExternalAddress = Gcp.VMwareEngine.GetExternalAddress.Invoke(new()
/// {
/// Name = "my-external-address",
/// Parent = "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vmwareengine.LookupExternalAddress(ctx, &vmwareengine.LookupExternalAddressArgs{
/// Name:   "my-external-address",
/// Parent: "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
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
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetExternalAddressArgs;
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
/// final var myExternalAddress = VmwareengineFunctions.getExternalAddress(GetExternalAddressArgs.builder()
/// .name("my-external-address")
/// .parent("project/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myExternalAddress:
/// fn::invoke:
/// function: gcp:vmwareengine:getExternalAddress
/// arguments:
/// name: my-external-address
/// parent: project/my-project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetExternalAddressResult> getExternalAddress(
  GetExternalAddressArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getExternalAddress:getExternalAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExternalAddressResult.fromMap(result);
}
