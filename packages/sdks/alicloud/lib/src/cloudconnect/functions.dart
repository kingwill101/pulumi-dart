import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_args.dart';
import 'get_networks_result.dart';

/// This data source provides Cloud Connect Networks available to the user.
///
/// &gt; **NOTE:** Available in 1.59.0+
///
/// &gt; **NOTE:** Only the following regions support create Cloud Connect Network. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cloudconnect.getNetworks({
///     ids: [defaultAlicloudCloudConnectNetworks.id],
///     nameRegex: "^tf-testAcc.*",
/// });
/// const defaultNetwork = new alicloud.cloudconnect.Network("default", {
///     name: "tf-testAccCloudConnectNetworkName",
///     description: "tf-testAccCloudConnectNetworkDescription",
///     cidrBlock: "192.168.0.0/24",
///     isDefault: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cloudconnect.get_networks(ids=[default_alicloud_cloud_connect_networks["id"]],
///     name_regex="^tf-testAcc.*")
/// default_network = alicloud.cloudconnect.Network("default",
///     name="tf-testAccCloudConnectNetworkName",
///     description="tf-testAccCloudConnectNetworkDescription",
///     cidr_block="192.168.0.0/24",
///     is_default=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.CloudConnect.GetNetworks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudCloudConnectNetworks.Id,
///         },
///         NameRegex = "^tf-testAcc.*",
///     });
///
///     var defaultNetwork = new AliCloud.CloudConnect.Network("default", new()
///     {
///         Name = "tf-testAccCloudConnectNetworkName",
///         Description = "tf-testAccCloudConnectNetworkDescription",
///         CidrBlock = "192.168.0.0/24",
///         IsDefault = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudconnect.GetNetworks(ctx, &cloudconnect.GetNetworksArgs{
/// Ids: interface{}{
/// defaultAlicloudCloudConnectNetworks.Id,
/// },
/// NameRegex: pulumi.StringRef("^tf-testAcc.*"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = cloudconnect.NewNetwork(ctx, "default", &cloudconnect.NetworkArgs{
/// Name: pulumi.String("tf-testAccCloudConnectNetworkName"),
/// Description: pulumi.String("tf-testAccCloudConnectNetworkDescription"),
/// CidrBlock: pulumi.String("192.168.0.0/24"),
/// IsDefault: pulumi.Bool(true),
/// })
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
/// import com.pulumi.alicloud.cloudconnect.CloudconnectFunctions;
/// import com.pulumi.alicloud.cloudconnect.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.cloudconnect.Network;
/// import com.pulumi.alicloud.cloudconnect.NetworkArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var default = CloudconnectFunctions.getNetworks(GetNetworksArgs.builder()
///             .ids(defaultAlicloudCloudConnectNetworks.id())
///             .nameRegex("^tf-testAcc.*")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("tf-testAccCloudConnectNetworkName")
///             .description("tf-testAccCloudConnectNetworkDescription")
///             .cidrBlock("192.168.0.0/24")
///             .isDefault(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:cloudconnect:Network
///     name: default
///     properties:
///       name: tf-testAccCloudConnectNetworkName
///       description: tf-testAccCloudConnectNetworkDescription
///       cidrBlock: 192.168.0.0/24
///       isDefault: true
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudconnect:getNetworks
///       arguments:
///         ids:
///           - ${defaultAlicloudCloudConnectNetworks.id}
///         nameRegex: ^tf-testAcc.*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudconnect_get_networks_get_networks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworksResult> getNetworks(
  GetNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudconnect/getNetworks:getNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworksResult.fromMap(result);
}
