import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_provider_args.dart';
import 'extension_provider_state.dart';

/// Provides a Service Mesh Extension Provider resource.
///
/// For information about Service Mesh Extension Provider and how to use it, see [What is Extension Provider](https://help.aliyun.com/document_detail/461549.html).
///
/// > **NOTE:** Available since v1.191.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultNetwork: alicloud.vpc.Network[] = [];
/// defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids).length.apply(length => {
///     for (const range = {value: 0}; range.value < (length > 0 ? 0 : 1); range.value++) {
///         defaultNetwork.push(new alicloud.vpc.Network(`default-${range.value}`, {}));
///     }
/// });
/// const defaultGetSwitches = pulumi.all([defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids).length, defaultGetNetworks, defaultNetwork[0].id]).apply(([length, defaultGetNetworks, id]) => length > 0 ? defaultGetNetworks.ids?.[0] : id).apply(value => alicloud.vpc.getSwitchesOutput({
///     vpcId: value,
/// }));
/// const defaultSwitch: alicloud.vpc.Switch[] = [];
/// defaultGetSwitches.apply(defaultGetSwitches => defaultGetSwitches.ids).length.apply(length => {
///     for (const range = {value: 0}; range.value < (length > 0 ? 0 : 1); range.value++) {
///         defaultSwitch.push(new alicloud.vpc.Switch(`default-${range.value}`, {
///             vpcId: pulumi.all([defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids).length, defaultGetNetworks, defaultNetwork[0].id]).apply(([length, defaultGetNetworks, id]) => length > 0 ? defaultGetNetworks.ids?.[0] : id),
///             cidrBlock: defaultGetNetworks.then(defaultGetNetworks => std.cidrsubnet({
///                 input: defaultGetNetworks.vpcs?.[0]?.cidrBlock,
///                 newbits: 8,
///                 netnum: 2,
///             })).then(invoke => invoke.result),
///             zoneId: _default.then(_default => _default.zones?.[0]?.id),
///         }));
///     }
/// });
/// const defaultServiceMesh = new alicloud.servicemesh.ServiceMesh("default", {
///     serviceMeshName: "mesh-c50f3fef117ad45b6b26047cdafef65ad",
///     version: "v1.21.6.103-g5ddeaef7-aliyun",
///     edition: "Default",
///     network: {
///         vpcId: pulumi.all([defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids).length, defaultGetNetworks, defaultNetwork[0].id]).apply(([length, defaultGetNetworks, id]) => length > 0 ? defaultGetNetworks.ids?.[0] : id),
///         vswitcheLists: [pulumi.all([defaultGetSwitches.apply(defaultGetSwitches => defaultGetSwitches.ids).length, defaultGetSwitches, defaultSwitch[0].id]).apply(([length, defaultGetSwitches, id]) => length > 0 ? defaultGetSwitches.ids?.[0] : id)],
///     },
/// });
/// const defaultExtensionProvider = new alicloud.servicemesh.ExtensionProvider("default", {
///     serviceMeshId: defaultServiceMesh.id,
///     extensionProviderName: "httpextauth-tf-example",
///     type: "httpextauth",
///     config: "{\"headersToDownstreamOnDeny\":[\"content-type\",\"set-cookie\"],\"headersToUpstreamOnAllow\":[\"authorization\",\"cookie\",\"path\",\"x-auth-request-access-token\",\"x-forwarded-access-token\"],\"includeRequestHeadersInCheck\":[\"cookie\",\"x-forward-access-token\"],\"oidc\":{\"clientID\":\"qweqweqwewqeqwe\",\"clientSecret\":\"asdasdasdasdsadas\",\"cookieExpire\":\"1000\",\"cookieRefresh\":\"500\",\"cookieSecret\":\"scxzcxzcxzcxzcxz\",\"issuerURI\":\"qweqwewqeqweqweqwe\",\"redirectDomain\":\"www.alicloud-provider.cn\",\"redirectProtocol\":\"http\",\"scopes\":[\"profile\"]},\"port\":4180,\"service\":\"oauth2proxy-httpextauth-tf-example.istio-system.svc.cluster.local\",\"timeout\":\"10s\"}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_network = []
/// def create_default(range_body):
///     for range in [{"value": i} for i in range(0, range_body)]:
///         default_network.append(alicloud.vpc.Network(f"default-{range['value']}"))
///
/// len(default_get_networks.ids).apply(lambda resolved_outputs: create_default(0 if resolved_outputs['length'] > 0 else 1))
/// default_get_switches = pulumi.Output.all(
///     length=len(default_get_networks.ids),
///     id=default_network[0].id
/// ).apply(lambda resolved_outputs: default_get_networks.ids[0] if resolved_outputs['length'] > 0 else resolved_outputs['id'])
/// .apply(lambda value: alicloud.vpc.get_switches_output(vpc_id=value))
/// default_switch = []
/// def create_default(range_body):
///     for range in [{"value": i} for i in range(0, range_body)]:
///         default_switch.append(alicloud.vpc.Switch(f"default-{range['value']}",
///             vpc_id=pulumi.Output.all(
///                 id=default_network[0].id,
///                 value=default_get_networks.ids[0] if length.apply(lambda __convert: __convert > 0) else id
/// ).apply(lambda resolved_outputs: pulumi.Output.all(
///                 length=len(default_get_networks.ids),
///                 id=resolved_outputs['id']
/// ).apply(lambda resolved_outputs: resolved_outputs['value'])
/// )
/// ,
///             cidr_block=std.cidrsubnet(input=default_get_networks.vpcs[0].cidr_block,
///                 newbits=8,
///                 netnum=2).result,
///             zone_id=default.zones[0].id))
///
/// len(default_get_switches.ids).apply(lambda resolved_outputs: create_default(0 if resolved_outputs['length'] > 0 else 1))
/// default_service_mesh = alicloud.servicemesh.ServiceMesh("default",
///     service_mesh_name="mesh-c50f3fef117ad45b6b26047cdafef65ad",
///     version="v1.21.6.103-g5ddeaef7-aliyun",
///     edition="Default",
///     network={
///         "vpc_id": pulumi.Output.all(
///             length=len(default_get_networks.ids),
///             id=default_network[0].id
/// ).apply(lambda resolved_outputs: default_get_networks.ids[0] if resolved_outputs['length'] > 0 else resolved_outputs['id'])
/// ,
///         "vswitche_lists": [pulumi.Output.all(
///             length=len(default_get_switches.ids),
///             default_get_switches=default_get_switches,
///             id=default_switch[0].id
/// ).apply(lambda resolved_outputs: default_get_switches.ids[0] if resolved_outputs['length'] > 0 else resolved_outputs['id'])
/// ],
///     })
/// default_extension_provider = alicloud.servicemesh.ExtensionProvider("default",
///     service_mesh_id=default_service_mesh.id,
///     extension_provider_name="httpextauth-tf-example",
///     type="httpextauth",
///     config="{\"headersToDownstreamOnDeny\":[\"content-type\",\"set-cookie\"],\"headersToUpstreamOnAllow\":[\"authorization\",\"cookie\",\"path\",\"x-auth-request-access-token\",\"x-forwarded-access-token\"],\"includeRequestHeadersInCheck\":[\"cookie\",\"x-forward-access-token\"],\"oidc\":{\"clientID\":\"qweqweqwewqeqwe\",\"clientSecret\":\"asdasdasdasdsadas\",\"cookieExpire\":\"1000\",\"cookieRefresh\":\"500\",\"cookieSecret\":\"scxzcxzcxzcxzcxz\",\"issuerURI\":\"qweqwewqeqweqweqwe\",\"redirectDomain\":\"www.alicloud-provider.cn\",\"redirectProtocol\":\"http\",\"scopes\":[\"profile\"]},\"port\":4180,\"service\":\"oauth2proxy-httpextauth-tf-example.istio-system.svc.cluster.local\",\"timeout\":\"10s\"}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultNetwork = new List<AliCloud.Vpc.Network>();
///     for (var rangeIndex = 0; rangeIndex < defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids).Length.Apply(length => length > 0 ? 0 : 1); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultNetwork.Add(new AliCloud.Vpc.Network($"default-{range.Value}", new()
///         {
///         }));
///     }
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids).Length > 0 ? defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]) : defaultNetwork[0].Id,
///     });
///
///     var defaultSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids).Length.Apply(length => length > 0 ? 0 : 1); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSwitch.Add(new AliCloud.Vpc.Switch($"default-{range.Value}", new()
///         {
///             VpcId = Output.Tuple(defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids).Length, defaultGetNetworks, defaultNetwork[0].Id).Apply(values =>
///             {
///                 var length = values.Item1;
///                 var defaultGetNetworks = values.Item2;
///                 var id = values.Item3;
///                 return length > 0 ? defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]) : id;
///             }),
///             CidrBlock = Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Vpcs[0]?.CidrBlock),
///                 Newbits = 8,
///                 Netnum = 2,
///             }).Apply(invoke => invoke.Result),
///             ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         }));
///     }
///     var defaultServiceMesh = new AliCloud.ServiceMesh.ServiceMesh("default", new()
///     {
///         ServiceMeshName = "mesh-c50f3fef117ad45b6b26047cdafef65ad",
///         Version = "v1.21.6.103-g5ddeaef7-aliyun",
///         Edition = "Default",
///         Network = new AliCloud.ServiceMesh.Inputs.ServiceMeshNetworkArgs
///         {
///             VpcId = Output.Tuple(defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids).Length, defaultGetNetworks, defaultNetwork[0].Id).Apply(values =>
///             {
///                 var length = values.Item1;
///                 var defaultGetNetworks = values.Item2;
///                 var id = values.Item3;
///                 return length > 0 ? defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]) : id;
///             }),
///             VswitcheLists = new[]
///             {
///                 Output.Tuple(defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids).Length, defaultGetSwitches, defaultSwitch[0].Id).Apply(values =>
///                 {
///                     var length = values.Item1;
///                     var defaultGetSwitches = values.Item2;
///                     var id = values.Item3;
///                     return length > 0 ? defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]) : id;
///                 }),
///             },
///         },
///     });
///
///     var defaultExtensionProvider = new AliCloud.ServiceMesh.ExtensionProvider("default", new()
///     {
///         ServiceMeshId = defaultServiceMesh.Id,
///         ExtensionProviderName = "httpextauth-tf-example",
///         Type = "httpextauth",
///         Config = "{\"headersToDownstreamOnDeny\":[\"content-type\",\"set-cookie\"],\"headersToUpstreamOnAllow\":[\"authorization\",\"cookie\",\"path\",\"x-auth-request-access-token\",\"x-forwarded-access-token\"],\"includeRequestHeadersInCheck\":[\"cookie\",\"x-forward-access-token\"],\"oidc\":{\"clientID\":\"qweqweqwewqeqwe\",\"clientSecret\":\"asdasdasdasdsadas\",\"cookieExpire\":\"1000\",\"cookieRefresh\":\"500\",\"cookieSecret\":\"scxzcxzcxzcxzcxz\",\"issuerURI\":\"qweqwewqeqweqweqwe\",\"redirectDomain\":\"www.alicloud-provider.cn\",\"redirectProtocol\":\"http\",\"scopes\":[\"profile\"]},\"port\":4180,\"service\":\"oauth2proxy-httpextauth-tf-example.istio-system.svc.cluster.local\",\"timeout\":\"10s\"}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicemesh"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf_example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// NameRegex: pulumi.StringRef("default-NODELETING"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// var tmp0 float64
/// if length > 0 {
/// tmp0 = 0
/// } else {
/// tmp0 = 1
/// }
/// var defaultNetwork []*vpc.Network
/// for index := 0; index < float64(len(defaultGetNetworks.Ids).ApplyT(func(length int) (float64, error) {
/// return tmp0, nil
/// }).(pulumi.Float64Output)); index++ {
///     key0 := index
///     _ := index
/// __res, err := vpc.NewNetwork(ctx, fmt.Sprintf("default-%v", key0), nil)
/// if err != nil {
/// return err
/// }
/// defaultNetwork = append(defaultNetwork, __res)
/// }
/// var tmp1 *string
/// if length > 0 {
/// tmp1 = defaultGetNetworks.Ids[0]
/// } else {
/// tmp1 = id
/// }
/// defaultGetSwitches := pulumi.All(len(defaultGetNetworks.Ids),defaultNetwork[0].ID()).ApplyT(func(_args []interface{}) (*string, error) {
/// length := _args[0].(int)
/// id := _args[1].(string)
/// return &tmp1, nil
/// }).(pulumi.StringPtrOutput).ApplyT(func(value *string) (vpc.GetSwitchesResult, error) {
/// return vpc.GetSwitchesResult(interface{}(vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// VpcId: pulumi.StringRef(pulumi.StringRef(value)),
/// }, nil))), nil
/// }).(vpc.GetSwitchesResultOutput)
/// var tmp2 *string
/// if length > 0 {
/// tmp2 = defaultGetNetworks.Ids[0]
/// } else {
/// tmp2 = id
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: defaultGetNetworks.Vpcs[0].CidrBlock,
/// Newbits: 8,
/// Netnum: 2,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var tmp3 float64
/// if length > 0 {
/// tmp3 = 0
/// } else {
/// tmp3 = 1
/// }
/// var defaultSwitch []*vpc.Switch
/// for index := 0; index < float64(len(defaultGetSwitches.ApplyT(func(defaultGetSwitches vpc.GetSwitchesResult) (interface{}, error) {
/// return defaultGetSwitches.Ids, nil
/// }).(pulumi.Interface{}Output)).ApplyT(func(length int) (float64, error) {
/// return tmp3, nil
/// }).(pulumi.Float64Output)); index++ {
///     key0 := index
///     _ := index
/// __res, err := vpc.NewSwitch(ctx, fmt.Sprintf("default-%v", key0), &vpc.SwitchArgs{
/// VpcId: pulumi.String(pulumi.All(len(defaultGetNetworks.Ids),defaultNetwork[0].ID()).ApplyT(func(_args []interface{}) (*string, error) {
/// length := _args[0].(int)
/// id := _args[1].(string)
/// return &tmp2, nil
/// }).(pulumi.StringPtrOutput)),
/// CidrBlock: pulumi.String(invokeCidrsubnet.Result),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch = append(defaultSwitch, __res)
/// }
/// var tmp4 *string
/// if length > 0 {
/// tmp4 = defaultGetNetworks.Ids[0]
/// } else {
/// tmp4 = id
/// }
/// var tmp5 *string
/// if length > 0 {
/// tmp5 = defaultGetSwitches.Ids[0]
/// } else {
/// tmp5 = id
/// }
/// defaultServiceMesh, err := servicemesh.NewServiceMesh(ctx, "default", &servicemesh.ServiceMeshArgs{
/// ServiceMeshName: pulumi.String("mesh-c50f3fef117ad45b6b26047cdafef65ad"),
/// Version: pulumi.String("v1.21.6.103-g5ddeaef7-aliyun"),
/// Edition: pulumi.String("Default"),
/// Network: &servicemesh.ServiceMeshNetworkArgs{
/// VpcId: pulumi.All(len(defaultGetNetworks.Ids),defaultNetwork[0].ID()).ApplyT(func(_args []interface{}) (*string, error) {
/// length := _args[0].(int)
/// id := _args[1].(string)
/// return &tmp4, nil
/// }).(pulumi.StringPtrOutput),
/// VswitcheLists: pulumi.StringArray{
/// pulumi.All(len(defaultGetSwitches.ApplyT(func(defaultGetSwitches vpc.GetSwitchesResult) (interface{}, error) {
/// return defaultGetSwitches.Ids, nil
/// }).(pulumi.Interface{}Output)),defaultGetSwitches,defaultSwitch[0].ID()).ApplyT(func(_args []interface{}) (*string, error) {
/// length := _args[0].(int)
/// defaultGetSwitches := _args[1].(vpc.GetSwitchesResult)
/// id := _args[2].(string)
/// return &tmp5, nil
/// }).(pulumi.StringPtrOutput),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = servicemesh.NewExtensionProvider(ctx, "default", &servicemesh.ExtensionProviderArgs{
/// ServiceMeshId: defaultServiceMesh.ID(),
/// ExtensionProviderName: pulumi.String("httpextauth-tf-example"),
/// Type: pulumi.String("httpextauth"),
/// Config: pulumi.String("{\"headersToDownstreamOnDeny\":[\"content-type\",\"set-cookie\"],\"headersToUpstreamOnAllow\":[\"authorization\",\"cookie\",\"path\",\"x-auth-request-access-token\",\"x-forwarded-access-token\"],\"includeRequestHeadersInCheck\":[\"cookie\",\"x-forward-access-token\"],\"oidc\":{\"clientID\":\"qweqweqwewqeqwe\",\"clientSecret\":\"asdasdasdasdsadas\",\"cookieExpire\":\"1000\",\"cookieRefresh\":\"500\",\"cookieSecret\":\"scxzcxzcxzcxzcxz\",\"issuerURI\":\"qweqwewqeqweqweqwe\",\"redirectDomain\":\"www.alicloud-provider.cn\",\"redirectProtocol\":\"http\",\"scopes\":[\"profile\"]},\"port\":4180,\"service\":\"oauth2proxy-httpextauth-tf-example.istio-system.svc.cluster.local\",\"timeout\":\"10s\"}"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.servicemesh.ServiceMesh;
/// import com.pulumi.alicloud.servicemesh.ServiceMeshArgs;
/// import com.pulumi.alicloud.servicemesh.inputs.ServiceMeshNetworkArgs;
/// import com.pulumi.alicloud.servicemesh.ExtensionProvider;
/// import com.pulumi.alicloud.servicemesh.ExtensionProviderArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         for (var i = 0; i < defaultGetNetworks.ids().length().applyValue(_length -> _length > 0 ? 0 : 1); i++) {
///             new Network("defaultNetwork-" + i);
///
///
/// }
///         final var defaultGetSwitches = Output.tuple(defaultGetNetworks.ids().length(), defaultNetwork[0].id()).applyValue(values -> {
///             var length = values.t1;
///             var id = values.t2;
///             return length > 0 ? defaultGetNetworks.ids()[0] : id;
///         }).applyValue(_value -> VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(_value)
///             .build()));
///
///         for (var i = 0; i < defaultGetSwitches.applyValue(_defaultGetSwitches -> _defaultGetSwitches.ids()).length().applyValue(_length -> _length > 0 ? 0 : 1); i++) {
///             new Switch("defaultSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(Output.tuple(defaultGetNetworks.ids().length(), defaultNetwork[0].id()).applyValue(values -> {
///                     var length = values.t1;
///                     var id = values.t2;
///                     return length > 0 ? defaultGetNetworks.ids()[0] : id;
///                 }))
///                 .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(defaultGetNetworks.vpcs()[0].cidrBlock())
///                     .newbits(8)
///                     .netnum(2)
///                     .build()).result())
///                 .zoneId(default_.zones()[0].id())
///                 .build());
///
///
/// }
///         var defaultServiceMesh = new ServiceMesh("defaultServiceMesh", ServiceMeshArgs.builder()
///             .serviceMeshName("mesh-c50f3fef117ad45b6b26047cdafef65ad")
///             .version("v1.21.6.103-g5ddeaef7-aliyun")
///             .edition("Default")
///             .network(ServiceMeshNetworkArgs.builder()
///                 .vpcId(Output.tuple(defaultGetNetworks.ids().length(), defaultNetwork[0].id()).applyValue(values -> {
///                     var length = values.t1;
///                     var id = values.t2;
///                     return length.applyValue(___convert -> ___convert > 0) ? defaultGetNetworks.ids()[0] : id;
///                 }))
///                 .vswitcheLists(List.of(Output.tuple(defaultGetSwitches.applyValue(_defaultGetSwitches -> _defaultGetSwitches.ids()).length(), defaultGetSwitches, defaultSwitch[0].id()).applyValue(values -> {
///                     var length = values.t1;
///                     var defaultGetSwitches = values.t2;
///                     var id = values.t3;
///                     return length.applyValue(___convert -> ___convert > 0) ? defaultGetSwitches.ids()[0] : id;
///                 })))
///                 .build())
///             .build());
///
///         var defaultExtensionProvider = new ExtensionProvider("defaultExtensionProvider", ExtensionProviderArgs.builder()
///             .serviceMeshId(defaultServiceMesh.id())
///             .extensionProviderName("httpextauth-tf-example")
///             .type("httpextauth")
///             .config("{\"headersToDownstreamOnDeny\":[\"content-type\",\"set-cookie\"],\"headersToUpstreamOnAllow\":[\"authorization\",\"cookie\",\"path\",\"x-auth-request-access-token\",\"x-forwarded-access-token\"],\"includeRequestHeadersInCheck\":[\"cookie\",\"x-forward-access-token\"],\"oidc\":{\"clientID\":\"qweqweqwewqeqwe\",\"clientSecret\":\"asdasdasdasdsadas\",\"cookieExpire\":\"1000\",\"cookieRefresh\":\"500\",\"cookieSecret\":\"scxzcxzcxzcxzcxz\",\"issuerURI\":\"qweqwewqeqweqweqwe\",\"redirectDomain\":\"www.alicloud-provider.cn\",\"redirectProtocol\":\"http\",\"scopes\":[\"profile\"]},\"port\":4180,\"service\":\"oauth2proxy-httpextauth-tf-example.istio-system.svc.cluster.local\",\"timeout\":\"10s\"}")
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Service Mesh Extension Provider can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicemesh/extensionProvider:ExtensionProvider example <service_mesh_id>:<type>:<extension_provider_name>
/// ```
class ExtensionProvider extends pulumi.CustomResource {
  /// The config of the Service Mesh Extension Provider. The `config` format is json.
  late final pulumi.Output<String> config;
  /// The name of the Service Mesh Extension Provider. It must be prefixed with `$type-`, for example `httpextauth-xxx`, `grpcextauth-xxx`.
  late final pulumi.Output<String> extensionProviderName;
  /// The ID of the Service Mesh.
  late final pulumi.Output<String> serviceMeshId;
  /// The type of the Service Mesh Extension Provider. Valid values: `httpextauth`, `grpcextauth`.
  late final pulumi.Output<String> type;

  /// Creates a new [ExtensionProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExtensionProvider]. {@macro pulumi_servicemesh_extension_provider_extension_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExtensionProvider(
    String name, {
    ExtensionProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicemesh/extensionProvider:ExtensionProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<String>('config');
    this.extensionProviderName = registerOutput<String>('extensionProviderName');
    this.serviceMeshId = registerOutput<String>('serviceMeshId');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [ExtensionProvider] resource's state with the given [name] and [id].
  static ExtensionProvider get(
    String name,
    pulumi.Input<String> id, {
    ExtensionProviderState? state,
  }) {
    return ExtensionProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ExtensionProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicemesh/extensionProvider:ExtensionProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<String>('config');
    this.extensionProviderName = registerOutput<String>('extensionProviderName');
    this.serviceMeshId = registerOutput<String>('serviceMeshId');
    this.type = registerOutput<String>('type');
  }
}
