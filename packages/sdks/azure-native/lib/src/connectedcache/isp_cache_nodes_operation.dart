import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_node_property_response.dart';
import 'isp_cache_nodes_operation_args.dart';
import 'system_data_response.dart';

/// Represents the high level Nodes needed to provision cache node resources
///
/// Uses Azure REST API version 2023-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2024-11-30-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedcache [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### IspCacheNodesOperations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ispCacheNodesOperation = new AzureNative.ConnectedCache.IspCacheNodesOperation("ispCacheNodesOperation", new()
///     {
///         CacheNodeResourceName = "cabakm",
///         CustomerResourceName = "zpqzbmanlljgmkrthtydrtneavhlnlqkdmviq",
///         Location = "westus",
///         Properties = new AzureNative.ConnectedCache.Inputs.CacheNodePropertyArgs
///         {
///             AdditionalCacheNodeProperties = new AzureNative.ConnectedCache.Inputs.AdditionalCacheNodePropertiesArgs
///             {
///                 BgpConfiguration = new AzureNative.ConnectedCache.Inputs.BgpConfigurationArgs
///                 {
///                     AsnToIpAddressMapping = "pafcimhoog",
///                 },
///                 CacheNodePropertiesDetailsIssuesList = new[]
///                 {
///                     "ex",
///                 },
///                 DriveConfiguration = new[]
///                 {
///                     new AzureNative.ConnectedCache.Inputs.CacheNodeDriveConfigurationArgs
///                     {
///                         CacheNumber = 1,
///                         NginxMapping = "lijygenjq",
///                         PhysicalPath = "/mcc",
///                         SizeInGb = 500,
///                     },
///                 },
///                 OptionalProperty1 = "hvpmt",
///                 OptionalProperty2 = "talanelmsgxvksrzoeeontqkjzbpv",
///                 OptionalProperty3 = "bxkoxq",
///                 OptionalProperty4 = "pqlkcekupusoc",
///                 OptionalProperty5 = "nyvvmrjigqdufzjdvazdca",
///                 ProxyUrl = "qhux",
///                 ProxyUrlConfiguration = new AzureNative.ConnectedCache.Inputs.ProxyUrlConfigurationArgs
///                 {
///                     ProxyUrl = "hplstyg",
///                 },
///             },
///             CacheNode = new AzureNative.ConnectedCache.Inputs.CacheNodeEntityArgs
///             {
///                 CacheNodeId = "xjzffjftwcgsehanoxsl",
///                 CacheNodeName = "mfjxb",
///                 CidrCsv = new[]
///                 {
///                     "nlqlvrthafvvljuupcbcw",
///                 },
///                 CidrSelectionType = 4,
///                 CustomerAsn = 4,
///                 CustomerIndex = "qtoiglqaswivmkjhzogburcxtszmek",
///                 CustomerName = "xwyqk",
///                 FullyQualifiedResourceId = "hskxkpbiqbrbjiwdzrxndru",
///                 IpAddress = "voctagljcwqgcpnionqdcbjk",
///                 IsEnabled = true,
///                 IsEnterpriseManaged = true,
///                 MaxAllowableEgressInMbps = 29,
///                 ShouldMigrate = true,
///             },
///             StatusCode = "1",
///             StatusDetails = "djruqvptzxak",
///             StatusText = "Success",
///         },
///         ResourceGroupName = "rgConnectedCache",
///         Tags =
///         {
///             { "key4171", "qtjlszkawsdujzpgohsbw" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	connectedcache "github.com/pulumi/pulumi-azure-native-sdk/connectedcache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedcache.NewIspCacheNodesOperation(ctx, "ispCacheNodesOperation", &connectedcache.IspCacheNodesOperationArgs{
/// 			CacheNodeResourceName: pulumi.String("cabakm"),
/// 			CustomerResourceName:  pulumi.String("zpqzbmanlljgmkrthtydrtneavhlnlqkdmviq"),
/// 			Location:              pulumi.String("westus"),
/// 			Properties: &connectedcache.CacheNodePropertyArgs{
/// 				AdditionalCacheNodeProperties: &connectedcache.AdditionalCacheNodePropertiesArgs{
/// 					BgpConfiguration: &connectedcache.BgpConfigurationArgs{
/// 						AsnToIpAddressMapping: pulumi.String("pafcimhoog"),
/// 					},
/// 					CacheNodePropertiesDetailsIssuesList: pulumi.StringArray{
/// 						pulumi.String("ex"),
/// 					},
/// 					DriveConfiguration: connectedcache.CacheNodeDriveConfigurationArray{
/// 						&connectedcache.CacheNodeDriveConfigurationArgs{
/// 							CacheNumber:  pulumi.Int(1),
/// 							NginxMapping: pulumi.String("lijygenjq"),
/// 							PhysicalPath: pulumi.String("/mcc"),
/// 							SizeInGb:     pulumi.Int(500),
/// 						},
/// 					},
/// 					OptionalProperty1: pulumi.String("hvpmt"),
/// 					OptionalProperty2: pulumi.String("talanelmsgxvksrzoeeontqkjzbpv"),
/// 					OptionalProperty3: pulumi.String("bxkoxq"),
/// 					OptionalProperty4: pulumi.String("pqlkcekupusoc"),
/// 					OptionalProperty5: pulumi.String("nyvvmrjigqdufzjdvazdca"),
/// 					ProxyUrl:          pulumi.String("qhux"),
/// 					ProxyUrlConfiguration: &connectedcache.ProxyUrlConfigurationArgs{
/// 						ProxyUrl: pulumi.String("hplstyg"),
/// 					},
/// 				},
/// 				CacheNode: &connectedcache.CacheNodeEntityArgs{
/// 					CacheNodeId:   pulumi.String("xjzffjftwcgsehanoxsl"),
/// 					CacheNodeName: pulumi.String("mfjxb"),
/// 					CidrCsv: pulumi.StringArray{
/// 						pulumi.String("nlqlvrthafvvljuupcbcw"),
/// 					},
/// 					CidrSelectionType:        pulumi.Int(4),
/// 					CustomerAsn:              pulumi.Int(4),
/// 					CustomerIndex:            pulumi.String("qtoiglqaswivmkjhzogburcxtszmek"),
/// 					CustomerName:             pulumi.String("xwyqk"),
/// 					FullyQualifiedResourceId: pulumi.String("hskxkpbiqbrbjiwdzrxndru"),
/// 					IpAddress:                pulumi.String("voctagljcwqgcpnionqdcbjk"),
/// 					IsEnabled:                pulumi.Bool(true),
/// 					IsEnterpriseManaged:      pulumi.Bool(true),
/// 					MaxAllowableEgressInMbps: pulumi.Int(29),
/// 					ShouldMigrate:            pulumi.Bool(true),
/// 				},
/// 				StatusCode:    pulumi.String("1"),
/// 				StatusDetails: pulumi.String("djruqvptzxak"),
/// 				StatusText:    pulumi.String("Success"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgConnectedCache"),
/// 			Tags: pulumi.StringMap{
/// 				"key4171": pulumi.String("qtjlszkawsdujzpgohsbw"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.connectedcache.IspCacheNodesOperation;
/// import com.pulumi.azurenative.connectedcache.IspCacheNodesOperationArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.CacheNodePropertyArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.AdditionalCacheNodePropertiesArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.BgpConfigurationArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.ProxyUrlConfigurationArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.CacheNodeEntityArgs;
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
///         var ispCacheNodesOperation = new IspCacheNodesOperation("ispCacheNodesOperation", IspCacheNodesOperationArgs.builder()
///             .cacheNodeResourceName("cabakm")
///             .customerResourceName("zpqzbmanlljgmkrthtydrtneavhlnlqkdmviq")
///             .location("westus")
///             .properties(CacheNodePropertyArgs.builder()
///                 .additionalCacheNodeProperties(AdditionalCacheNodePropertiesArgs.builder()
///                     .bgpConfiguration(BgpConfigurationArgs.builder()
///                         .asnToIpAddressMapping("pafcimhoog")
///                         .build())
///                     .cacheNodePropertiesDetailsIssuesList("ex")
///                     .driveConfiguration(CacheNodeDriveConfigurationArgs.builder()
///                         .cacheNumber(1)
///                         .nginxMapping("lijygenjq")
///                         .physicalPath("/mcc")
///                         .sizeInGb(500)
///                         .build())
///                     .optionalProperty1("hvpmt")
///                     .optionalProperty2("talanelmsgxvksrzoeeontqkjzbpv")
///                     .optionalProperty3("bxkoxq")
///                     .optionalProperty4("pqlkcekupusoc")
///                     .optionalProperty5("nyvvmrjigqdufzjdvazdca")
///                     .proxyUrl("qhux")
///                     .proxyUrlConfiguration(ProxyUrlConfigurationArgs.builder()
///                         .proxyUrl("hplstyg")
///                         .build())
///                     .build())
///                 .cacheNode(CacheNodeEntityArgs.builder()
///                     .cacheNodeId("xjzffjftwcgsehanoxsl")
///                     .cacheNodeName("mfjxb")
///                     .cidrCsv("nlqlvrthafvvljuupcbcw")
///                     .cidrSelectionType(4)
///                     .customerAsn(4)
///                     .customerIndex("qtoiglqaswivmkjhzogburcxtszmek")
///                     .customerName("xwyqk")
///                     .fullyQualifiedResourceId("hskxkpbiqbrbjiwdzrxndru")
///                     .ipAddress("voctagljcwqgcpnionqdcbjk")
///                     .isEnabled(true)
///                     .isEnterpriseManaged(true)
///                     .maxAllowableEgressInMbps(29)
///                     .shouldMigrate(true)
///                     .build())
///                 .statusCode("1")
///                 .statusDetails("djruqvptzxak")
///                 .statusText("Success")
///                 .build())
///             .resourceGroupName("rgConnectedCache")
///             .tags(Map.of("key4171", "qtjlszkawsdujzpgohsbw"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const ispCacheNodesOperation = new azure_native.connectedcache.IspCacheNodesOperation("ispCacheNodesOperation", {
///     cacheNodeResourceName: "cabakm",
///     customerResourceName: "zpqzbmanlljgmkrthtydrtneavhlnlqkdmviq",
///     location: "westus",
///     properties: {
///         additionalCacheNodeProperties: {
///             bgpConfiguration: {
///                 asnToIpAddressMapping: "pafcimhoog",
///             },
///             cacheNodePropertiesDetailsIssuesList: ["ex"],
///             driveConfiguration: [{
///                 cacheNumber: 1,
///                 nginxMapping: "lijygenjq",
///                 physicalPath: "/mcc",
///                 sizeInGb: 500,
///             }],
///             optionalProperty1: "hvpmt",
///             optionalProperty2: "talanelmsgxvksrzoeeontqkjzbpv",
///             optionalProperty3: "bxkoxq",
///             optionalProperty4: "pqlkcekupusoc",
///             optionalProperty5: "nyvvmrjigqdufzjdvazdca",
///             proxyUrl: "qhux",
///             proxyUrlConfiguration: {
///                 proxyUrl: "hplstyg",
///             },
///         },
///         cacheNode: {
///             cacheNodeId: "xjzffjftwcgsehanoxsl",
///             cacheNodeName: "mfjxb",
///             cidrCsv: ["nlqlvrthafvvljuupcbcw"],
///             cidrSelectionType: 4,
///             customerAsn: 4,
///             customerIndex: "qtoiglqaswivmkjhzogburcxtszmek",
///             customerName: "xwyqk",
///             fullyQualifiedResourceId: "hskxkpbiqbrbjiwdzrxndru",
///             ipAddress: "voctagljcwqgcpnionqdcbjk",
///             isEnabled: true,
///             isEnterpriseManaged: true,
///             maxAllowableEgressInMbps: 29,
///             shouldMigrate: true,
///         },
///         statusCode: "1",
///         statusDetails: "djruqvptzxak",
///         statusText: "Success",
///     },
///     resourceGroupName: "rgConnectedCache",
///     tags: {
///         key4171: "qtjlszkawsdujzpgohsbw",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// isp_cache_nodes_operation = azure_native.connectedcache.IspCacheNodesOperation("ispCacheNodesOperation",
///     cache_node_resource_name="cabakm",
///     customer_resource_name="zpqzbmanlljgmkrthtydrtneavhlnlqkdmviq",
///     location="westus",
///     properties={
///         "additional_cache_node_properties": {
///             "bgp_configuration": {
///                 "asn_to_ip_address_mapping": "pafcimhoog",
///             },
///             "cache_node_properties_details_issues_list": ["ex"],
///             "drive_configuration": [{
///                 "cache_number": 1,
///                 "nginx_mapping": "lijygenjq",
///                 "physical_path": "/mcc",
///                 "size_in_gb": 500,
///             }],
///             "optional_property1": "hvpmt",
///             "optional_property2": "talanelmsgxvksrzoeeontqkjzbpv",
///             "optional_property3": "bxkoxq",
///             "optional_property4": "pqlkcekupusoc",
///             "optional_property5": "nyvvmrjigqdufzjdvazdca",
///             "proxy_url": "qhux",
///             "proxy_url_configuration": {
///                 "proxy_url": "hplstyg",
///             },
///         },
///         "cache_node": {
///             "cache_node_id": "xjzffjftwcgsehanoxsl",
///             "cache_node_name": "mfjxb",
///             "cidr_csv": ["nlqlvrthafvvljuupcbcw"],
///             "cidr_selection_type": 4,
///             "customer_asn": 4,
///             "customer_index": "qtoiglqaswivmkjhzogburcxtszmek",
///             "customer_name": "xwyqk",
///             "fully_qualified_resource_id": "hskxkpbiqbrbjiwdzrxndru",
///             "ip_address": "voctagljcwqgcpnionqdcbjk",
///             "is_enabled": True,
///             "is_enterprise_managed": True,
///             "max_allowable_egress_in_mbps": 29,
///             "should_migrate": True,
///         },
///         "status_code": "1",
///         "status_details": "djruqvptzxak",
///         "status_text": "Success",
///     },
///     resource_group_name="rgConnectedCache",
///     tags={
///         "key4171": "qtjlszkawsdujzpgohsbw",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   ispCacheNodesOperation:
///     type: azure-native:connectedcache:IspCacheNodesOperation
///     properties:
///       cacheNodeResourceName: cabakm
///       customerResourceName: zpqzbmanlljgmkrthtydrtneavhlnlqkdmviq
///       location: westus
///       properties:
///         additionalCacheNodeProperties:
///           bgpConfiguration:
///             asnToIpAddressMapping: pafcimhoog
///           cacheNodePropertiesDetailsIssuesList:
///             - ex
///           driveConfiguration:
///             - cacheNumber: 1
///               nginxMapping: lijygenjq
///               physicalPath: /mcc
///               sizeInGb: 500
///           optionalProperty1: hvpmt
///           optionalProperty2: talanelmsgxvksrzoeeontqkjzbpv
///           optionalProperty3: bxkoxq
///           optionalProperty4: pqlkcekupusoc
///           optionalProperty5: nyvvmrjigqdufzjdvazdca
///           proxyUrl: qhux
///           proxyUrlConfiguration:
///             proxyUrl: hplstyg
///         cacheNode:
///           cacheNodeId: xjzffjftwcgsehanoxsl
///           cacheNodeName: mfjxb
///           cidrCsv:
///             - nlqlvrthafvvljuupcbcw
///           cidrSelectionType: 4
///           customerAsn: 4
///           customerIndex: qtoiglqaswivmkjhzogburcxtszmek
///           customerName: xwyqk
///           fullyQualifiedResourceId: hskxkpbiqbrbjiwdzrxndru
///           ipAddress: voctagljcwqgcpnionqdcbjk
///           isEnabled: true
///           isEnterpriseManaged: true
///           maxAllowableEgressInMbps: 29
///           shouldMigrate: true
///         statusCode: '1'
///         statusDetails: djruqvptzxak
///         statusText: Success
///       resourceGroupName: rgConnectedCache
///       tags:
///         key4171: qtjlszkawsdujzpgohsbw
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:connectedcache:IspCacheNodesOperation MccRPTest1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedCache/ispCustomers/{customerResourceName}/ispCacheNodes/{cacheNodeResourceName}
/// ```
class IspCacheNodesOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CacheNodePropertyResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [IspCacheNodesOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IspCacheNodesOperation]. {@macro pulumi_connectedcache_isp_cache_nodes_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IspCacheNodesOperation(
    String name, {
    IspCacheNodesOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedcache:IspCacheNodesOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<CacheNodePropertyResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
