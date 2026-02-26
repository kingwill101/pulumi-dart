import 'package:pulumi/pulumi.dart';
import 'get_region_network_endpoint_group_args.dart';
import 'get_region_network_endpoint_group_result.dart';

/// Use this data source to access a Region Network Endpoint Group's attributes.
///
/// The RNEG may be found by providing either a <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span>, or a <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and a <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const rneg1 = gcp.compute.getRegionNetworkEndpointGroup({
/// name: "k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// region: "us-central1",
/// });
/// const rneg2 = gcp.compute.getRegionNetworkEndpointGroup({
/// selfLink: "https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// rneg1 = gcp.compute.get_region_network_endpoint_group(name="k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// region="us-central1")
/// rneg2 = gcp.compute.get_region_network_endpoint_group(self_link="https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var rneg1 = Gcp.Compute.GetRegionNetworkEndpointGroup.Invoke(new()
/// {
/// Name = "k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// Region = "us-central1",
/// });
///
/// var rneg2 = Gcp.Compute.GetRegionNetworkEndpointGroup.Invoke(new()
/// {
/// SelfLink = "https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.LookupRegionNetworkEndpointGroup(ctx, &compute.LookupRegionNetworkEndpointGroupArgs{
/// Name:   pulumi.StringRef("k8s1-abcdef01-myns-mysvc-8080-4b6bac43"),
/// Region: pulumi.StringRef("us-central1"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.LookupRegionNetworkEndpointGroup(ctx, &compute.LookupRegionNetworkEndpointGroupArgs{
/// SelfLink: pulumi.StringRef("https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionNetworkEndpointGroupArgs;
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
/// final var rneg1 = ComputeFunctions.getRegionNetworkEndpointGroup(GetRegionNetworkEndpointGroupArgs.builder()
/// .name("k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
/// .region("us-central1")
/// .build());
///
/// final var rneg2 = ComputeFunctions.getRegionNetworkEndpointGroup(GetRegionNetworkEndpointGroupArgs.builder()
/// .selfLink("https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// rneg1:
/// fn::invoke:
/// function: gcp:compute:getRegionNetworkEndpointGroup
/// arguments:
/// name: k8s1-abcdef01-myns-mysvc-8080-4b6bac43
/// region: us-central1
/// rneg2:
/// fn::invoke:
/// function: gcp:compute:getRegionNetworkEndpointGroup
/// arguments:
/// selfLink: https://www.googleapis.com/compute/v1/projects/myproject/regions/us-central1/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionNetworkEndpointGroupResult> getRegionNetworkEndpointGroup(
  GetRegionNetworkEndpointGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionNetworkEndpointGroup:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult.fromMap(result);
}
