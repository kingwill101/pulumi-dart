import 'package:pulumi/pulumi.dart';
import 'get_network_endpoint_group_args.dart';
import 'get_network_endpoint_group_result.dart';

/// Use this data source to access a Network Endpoint Group's attributes.
///
/// The NEG may be found by providing either a <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span>, or a <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and a <span pulumi-lang-nodejs="`zone`" pulumi-lang-dotnet="`Zone`" pulumi-lang-go="`zone`" pulumi-lang-python="`zone`" pulumi-lang-yaml="`zone`" pulumi-lang-java="`zone`">`zone`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const neg1 = gcp.compute.getNetworkEndpointGroup({
/// name: "k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// zone: "us-central1-a",
/// });
/// const neg2 = gcp.compute.getNetworkEndpointGroup({
/// selfLink: "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// neg1 = gcp.compute.get_network_endpoint_group(name="k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// zone="us-central1-a")
/// neg2 = gcp.compute.get_network_endpoint_group(self_link="https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var neg1 = Gcp.Compute.GetNetworkEndpointGroup.Invoke(new()
/// {
/// Name = "k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
/// Zone = "us-central1-a",
/// });
///
/// var neg2 = Gcp.Compute.GetNetworkEndpointGroup.Invoke(new()
/// {
/// SelfLink = "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43",
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
/// _, err := compute.LookupNetworkEndpointGroup(ctx, &compute.LookupNetworkEndpointGroupArgs{
/// Name: pulumi.StringRef("k8s1-abcdef01-myns-mysvc-8080-4b6bac43"),
/// Zone: pulumi.StringRef("us-central1-a"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.LookupNetworkEndpointGroup(ctx, &compute.LookupNetworkEndpointGroupArgs{
/// SelfLink: pulumi.StringRef("https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43"),
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
/// import com.pulumi.gcp.compute.inputs.GetNetworkEndpointGroupArgs;
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
/// final var neg1 = ComputeFunctions.getNetworkEndpointGroup(GetNetworkEndpointGroupArgs.builder()
/// .name("k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
/// .zone("us-central1-a")
/// .build());
///
/// final var neg2 = ComputeFunctions.getNetworkEndpointGroup(GetNetworkEndpointGroupArgs.builder()
/// .selfLink("https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// neg1:
/// fn::invoke:
/// function: gcp:compute:getNetworkEndpointGroup
/// arguments:
/// name: k8s1-abcdef01-myns-mysvc-8080-4b6bac43
/// zone: us-central1-a
/// neg2:
/// fn::invoke:
/// function: gcp:compute:getNetworkEndpointGroup
/// arguments:
/// selfLink: https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/networkEndpointGroups/k8s1-abcdef01-myns-mysvc-8080-4b6bac43
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkEndpointGroupResult> getNetworkEndpointGroup(
  GetNetworkEndpointGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkEndpointGroup:getNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupResult.fromMap(result);
}
