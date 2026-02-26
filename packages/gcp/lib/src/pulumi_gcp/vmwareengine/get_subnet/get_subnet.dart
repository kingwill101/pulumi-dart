import 'package:pulumi/pulumi.dart';
import 'get_subnet_args.dart';
import 'get_subnet_result.dart';

/// Use this data source to get details about a subnet. Management subnets support only read operations and should be configured through this data source. User defined subnets can be configured using the resource as well as the datasource.
///
/// To get more information about private cloud subnet, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.subnets)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mySubnet = gcp.vmwareengine.getSubnet({
/// name: "service-1",
/// parent: "project/my-project/locations/us-west1-a/privateClouds/my-cloud",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_subnet = gcp.vmwareengine.get_subnet(name="service-1",
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
/// var mySubnet = Gcp.VMwareEngine.GetSubnet.Invoke(new()
/// {
/// Name = "service-1",
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
/// _, err := vmwareengine.LookupSubnet(ctx, &vmwareengine.LookupSubnetArgs{
/// Name:   "service-1",
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
/// import com.pulumi.gcp.vmwareengine.inputs.GetSubnetArgs;
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
/// final var mySubnet = VmwareengineFunctions.getSubnet(GetSubnetArgs.builder()
/// .name("service-1")
/// .parent("project/my-project/locations/us-west1-a/privateClouds/my-cloud")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// mySubnet:
/// fn::invoke:
/// function: gcp:vmwareengine:getSubnet
/// arguments:
/// name: service-1
/// parent: project/my-project/locations/us-west1-a/privateClouds/my-cloud
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubnetResult> getSubnet(
  GetSubnetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getSubnet:getSubnet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetResult.fromMap(result);
}
