import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_proxy_args.dart';
import 'private_endpoint_connection_proxy_properties_response.dart';
import 'system_data_response.dart';

/// Represents private endpoint connection proxy request.
///
/// Uses Azure REST API version 2024-09-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates the Private Endpoint Connection Proxy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnectionProxy = new AzureNative.DataReplication.PrivateEndpointConnectionProxy("privateEndpointConnectionProxy", new()
///     {
///         PrivateEndpointConnectionProxyName = "d",
///         Properties = new AzureNative.DataReplication.Inputs.PrivateEndpointConnectionProxyPropertiesArgs
///         {
///             RemotePrivateEndpoint = new AzureNative.DataReplication.Inputs.RemotePrivateEndpointArgs
///             {
///                 ConnectionDetails = new[]
///                 {
///                     new AzureNative.DataReplication.Inputs.ConnectionDetailsArgs
///                     {
///                         GroupId = "pjrlygpadir",
///                         Id = "lenqkogzkes",
///                         LinkIdentifier = "ravfufhkdowufd",
///                         MemberName = "ybuysjrlfupewxe",
///                         PrivateIpAddress = "cyiacdzzyqmxjpijjbwgasegehtqe",
///                     },
///                 },
///                 Id = "yipalno",
///                 ManualPrivateLinkServiceConnections = new[]
///                 {
///                     new AzureNative.DataReplication.Inputs.PrivateLinkServiceConnectionArgs
///                     {
///                         GroupIds = new[]
///                         {
///                             "hvejynjktikteipnioyeja",
///                         },
///                         Name = "jqwntlzfsksl",
///                         RequestMessage = "bukgzpkvcvfbmcdmpcbiigbvugicqa",
///                     },
///                 },
///                 PrivateLinkServiceConnections = new[]
///                 {
///                     new AzureNative.DataReplication.Inputs.PrivateLinkServiceConnectionArgs
///                     {
///                         GroupIds = new[]
///                         {
///                             "hvejynjktikteipnioyeja",
///                         },
///                         Name = "jqwntlzfsksl",
///                         RequestMessage = "bukgzpkvcvfbmcdmpcbiigbvugicqa",
///                     },
///                 },
///                 PrivateLinkServiceProxies = new[]
///                 {
///                     new AzureNative.DataReplication.Inputs.PrivateLinkServiceProxyArgs
///                     {
///                         GroupConnectivityInformation = new[]
///                         {
///                             new AzureNative.DataReplication.Inputs.GroupConnectivityInformationArgs
///                             {
///                                 CustomerVisibleFqdns = new[]
///                                 {
///                                     "vedcg",
///                                 },
///                                 GroupId = "per",
///                                 InternalFqdn = "maqavwhxwzzhbzjbryyquvitmup",
///                                 MemberName = "ybptuypgdqoxkuwqx",
///                                 PrivateLinkServiceArmRegion = "rerkqqxinteevmlbrdkktaqhcch",
///                                 RedirectMapId = "pezncxcq",
///                             },
///                         },
///                         Id = "nzqxevuyqeedrqnkbnlcyrrrbzxvl",
///                         RemotePrivateEndpointConnection = new AzureNative.DataReplication.Inputs.RemotePrivateEndpointConnectionArgs
///                         {
///                             Id = "ocunsgawjsqohkrcyxiv",
///                         },
///                         RemotePrivateLinkServiceConnectionState = new AzureNative.DataReplication.Inputs.PrivateLinkServiceConnectionStateArgs
///                         {
///                             ActionsRequired = "afwbq",
///                             Description = "y",
///                             Status = AzureNative.DataReplication.PrivateEndpointConnectionStatus.Approved,
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rgswagger_2024-09-01",
///         VaultName = "4",
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
/// 	datareplication "github.com/pulumi/pulumi-azure-native-sdk/datareplication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datareplication.NewPrivateEndpointConnectionProxy(ctx, "privateEndpointConnectionProxy", &datareplication.PrivateEndpointConnectionProxyArgs{
/// 			PrivateEndpointConnectionProxyName: pulumi.String("d"),
/// 			Properties: &datareplication.PrivateEndpointConnectionProxyPropertiesArgs{
/// 				RemotePrivateEndpoint: &datareplication.RemotePrivateEndpointArgs{
/// 					ConnectionDetails: datareplication.ConnectionDetailsArray{
/// 						&datareplication.ConnectionDetailsArgs{
/// 							GroupId:          pulumi.String("pjrlygpadir"),
/// 							Id:               pulumi.String("lenqkogzkes"),
/// 							LinkIdentifier:   pulumi.String("ravfufhkdowufd"),
/// 							MemberName:       pulumi.String("ybuysjrlfupewxe"),
/// 							PrivateIpAddress: pulumi.String("cyiacdzzyqmxjpijjbwgasegehtqe"),
/// 						},
/// 					},
/// 					Id: pulumi.String("yipalno"),
/// 					ManualPrivateLinkServiceConnections: datareplication.PrivateLinkServiceConnectionArray{
/// 						&datareplication.PrivateLinkServiceConnectionArgs{
/// 							GroupIds: pulumi.StringArray{
/// 								pulumi.String("hvejynjktikteipnioyeja"),
/// 							},
/// 							Name:           pulumi.String("jqwntlzfsksl"),
/// 							RequestMessage: pulumi.String("bukgzpkvcvfbmcdmpcbiigbvugicqa"),
/// 						},
/// 					},
/// 					PrivateLinkServiceConnections: datareplication.PrivateLinkServiceConnectionArray{
/// 						&datareplication.PrivateLinkServiceConnectionArgs{
/// 							GroupIds: pulumi.StringArray{
/// 								pulumi.String("hvejynjktikteipnioyeja"),
/// 							},
/// 							Name:           pulumi.String("jqwntlzfsksl"),
/// 							RequestMessage: pulumi.String("bukgzpkvcvfbmcdmpcbiigbvugicqa"),
/// 						},
/// 					},
/// 					PrivateLinkServiceProxies: datareplication.PrivateLinkServiceProxyArray{
/// 						&datareplication.PrivateLinkServiceProxyArgs{
/// 							GroupConnectivityInformation: datareplication.GroupConnectivityInformationArray{
/// 								&datareplication.GroupConnectivityInformationArgs{
/// 									CustomerVisibleFqdns: pulumi.StringArray{
/// 										pulumi.String("vedcg"),
/// 									},
/// 									GroupId:                     pulumi.String("per"),
/// 									InternalFqdn:                pulumi.String("maqavwhxwzzhbzjbryyquvitmup"),
/// 									MemberName:                  pulumi.String("ybptuypgdqoxkuwqx"),
/// 									PrivateLinkServiceArmRegion: pulumi.String("rerkqqxinteevmlbrdkktaqhcch"),
/// 									RedirectMapId:               pulumi.String("pezncxcq"),
/// 								},
/// 							},
/// 							Id: pulumi.String("nzqxevuyqeedrqnkbnlcyrrrbzxvl"),
/// 							RemotePrivateEndpointConnection: &datareplication.RemotePrivateEndpointConnectionArgs{
/// 								Id: pulumi.String("ocunsgawjsqohkrcyxiv"),
/// 							},
/// 							RemotePrivateLinkServiceConnectionState: &datareplication.PrivateLinkServiceConnectionStateArgs{
/// 								ActionsRequired: pulumi.String("afwbq"),
/// 								Description:     pulumi.String("y"),
/// 								Status:          pulumi.String(datareplication.PrivateEndpointConnectionStatusApproved),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgswagger_2024-09-01"),
/// 			VaultName:         pulumi.String("4"),
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
/// import com.pulumi.azurenative.datareplication.PrivateEndpointConnectionProxy;
/// import com.pulumi.azurenative.datareplication.PrivateEndpointConnectionProxyArgs;
/// import com.pulumi.azurenative.datareplication.inputs.PrivateEndpointConnectionProxyPropertiesArgs;
/// import com.pulumi.azurenative.datareplication.inputs.RemotePrivateEndpointArgs;
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
///         var privateEndpointConnectionProxy = new PrivateEndpointConnectionProxy("privateEndpointConnectionProxy", PrivateEndpointConnectionProxyArgs.builder()
///             .privateEndpointConnectionProxyName("d")
///             .properties(PrivateEndpointConnectionProxyPropertiesArgs.builder()
///                 .remotePrivateEndpoint(RemotePrivateEndpointArgs.builder()
///                     .connectionDetails(ConnectionDetailsArgs.builder()
///                         .groupId("pjrlygpadir")
///                         .id("lenqkogzkes")
///                         .linkIdentifier("ravfufhkdowufd")
///                         .memberName("ybuysjrlfupewxe")
///                         .privateIpAddress("cyiacdzzyqmxjpijjbwgasegehtqe")
///                         .build())
///                     .id("yipalno")
///                     .manualPrivateLinkServiceConnections(PrivateLinkServiceConnectionArgs.builder()
///                         .groupIds("hvejynjktikteipnioyeja")
///                         .name("jqwntlzfsksl")
///                         .requestMessage("bukgzpkvcvfbmcdmpcbiigbvugicqa")
///                         .build())
///                     .privateLinkServiceConnections(PrivateLinkServiceConnectionArgs.builder()
///                         .groupIds("hvejynjktikteipnioyeja")
///                         .name("jqwntlzfsksl")
///                         .requestMessage("bukgzpkvcvfbmcdmpcbiigbvugicqa")
///                         .build())
///                     .privateLinkServiceProxies(PrivateLinkServiceProxyArgs.builder()
///                         .groupConnectivityInformation(GroupConnectivityInformationArgs.builder()
///                             .customerVisibleFqdns("vedcg")
///                             .groupId("per")
///                             .internalFqdn("maqavwhxwzzhbzjbryyquvitmup")
///                             .memberName("ybptuypgdqoxkuwqx")
///                             .privateLinkServiceArmRegion("rerkqqxinteevmlbrdkktaqhcch")
///                             .redirectMapId("pezncxcq")
///                             .build())
///                         .id("nzqxevuyqeedrqnkbnlcyrrrbzxvl")
///                         .remotePrivateEndpointConnection(RemotePrivateEndpointConnectionArgs.builder()
///                             .id("ocunsgawjsqohkrcyxiv")
///                             .build())
///                         .remotePrivateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                             .actionsRequired("afwbq")
///                             .description("y")
///                             .status("Approved")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rgswagger_2024-09-01")
///             .vaultName("4")
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
/// const privateEndpointConnectionProxy = new azure_native.datareplication.PrivateEndpointConnectionProxy("privateEndpointConnectionProxy", {
///     privateEndpointConnectionProxyName: "d",
///     properties: {
///         remotePrivateEndpoint: {
///             connectionDetails: [{
///                 groupId: "pjrlygpadir",
///                 id: "lenqkogzkes",
///                 linkIdentifier: "ravfufhkdowufd",
///                 memberName: "ybuysjrlfupewxe",
///                 privateIpAddress: "cyiacdzzyqmxjpijjbwgasegehtqe",
///             }],
///             id: "yipalno",
///             manualPrivateLinkServiceConnections: [{
///                 groupIds: ["hvejynjktikteipnioyeja"],
///                 name: "jqwntlzfsksl",
///                 requestMessage: "bukgzpkvcvfbmcdmpcbiigbvugicqa",
///             }],
///             privateLinkServiceConnections: [{
///                 groupIds: ["hvejynjktikteipnioyeja"],
///                 name: "jqwntlzfsksl",
///                 requestMessage: "bukgzpkvcvfbmcdmpcbiigbvugicqa",
///             }],
///             privateLinkServiceProxies: [{
///                 groupConnectivityInformation: [{
///                     customerVisibleFqdns: ["vedcg"],
///                     groupId: "per",
///                     internalFqdn: "maqavwhxwzzhbzjbryyquvitmup",
///                     memberName: "ybptuypgdqoxkuwqx",
///                     privateLinkServiceArmRegion: "rerkqqxinteevmlbrdkktaqhcch",
///                     redirectMapId: "pezncxcq",
///                 }],
///                 id: "nzqxevuyqeedrqnkbnlcyrrrbzxvl",
///                 remotePrivateEndpointConnection: {
///                     id: "ocunsgawjsqohkrcyxiv",
///                 },
///                 remotePrivateLinkServiceConnectionState: {
///                     actionsRequired: "afwbq",
///                     description: "y",
///                     status: azure_native.datareplication.PrivateEndpointConnectionStatus.Approved,
///                 },
///             }],
///         },
///     },
///     resourceGroupName: "rgswagger_2024-09-01",
///     vaultName: "4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection_proxy = azure_native.datareplication.PrivateEndpointConnectionProxy("privateEndpointConnectionProxy",
///     private_endpoint_connection_proxy_name="d",
///     properties={
///         "remote_private_endpoint": {
///             "connection_details": [{
///                 "group_id": "pjrlygpadir",
///                 "id": "lenqkogzkes",
///                 "link_identifier": "ravfufhkdowufd",
///                 "member_name": "ybuysjrlfupewxe",
///                 "private_ip_address": "cyiacdzzyqmxjpijjbwgasegehtqe",
///             }],
///             "id": "yipalno",
///             "manual_private_link_service_connections": [{
///                 "group_ids": ["hvejynjktikteipnioyeja"],
///                 "name": "jqwntlzfsksl",
///                 "request_message": "bukgzpkvcvfbmcdmpcbiigbvugicqa",
///             }],
///             "private_link_service_connections": [{
///                 "group_ids": ["hvejynjktikteipnioyeja"],
///                 "name": "jqwntlzfsksl",
///                 "request_message": "bukgzpkvcvfbmcdmpcbiigbvugicqa",
///             }],
///             "private_link_service_proxies": [{
///                 "group_connectivity_information": [{
///                     "customer_visible_fqdns": ["vedcg"],
///                     "group_id": "per",
///                     "internal_fqdn": "maqavwhxwzzhbzjbryyquvitmup",
///                     "member_name": "ybptuypgdqoxkuwqx",
///                     "private_link_service_arm_region": "rerkqqxinteevmlbrdkktaqhcch",
///                     "redirect_map_id": "pezncxcq",
///                 }],
///                 "id": "nzqxevuyqeedrqnkbnlcyrrrbzxvl",
///                 "remote_private_endpoint_connection": {
///                     "id": "ocunsgawjsqohkrcyxiv",
///                 },
///                 "remote_private_link_service_connection_state": {
///                     "actions_required": "afwbq",
///                     "description": "y",
///                     "status": azure_native.datareplication.PrivateEndpointConnectionStatus.APPROVED,
///                 },
///             }],
///         },
///     },
///     resource_group_name="rgswagger_2024-09-01",
///     vault_name="4")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnectionProxy:
///     type: azure-native:datareplication:PrivateEndpointConnectionProxy
///     properties:
///       privateEndpointConnectionProxyName: d
///       properties:
///         remotePrivateEndpoint:
///           connectionDetails:
///             - groupId: pjrlygpadir
///               id: lenqkogzkes
///               linkIdentifier: ravfufhkdowufd
///               memberName: ybuysjrlfupewxe
///               privateIpAddress: cyiacdzzyqmxjpijjbwgasegehtqe
///           id: yipalno
///           manualPrivateLinkServiceConnections:
///             - groupIds:
///                 - hvejynjktikteipnioyeja
///               name: jqwntlzfsksl
///               requestMessage: bukgzpkvcvfbmcdmpcbiigbvugicqa
///           privateLinkServiceConnections:
///             - groupIds:
///                 - hvejynjktikteipnioyeja
///               name: jqwntlzfsksl
///               requestMessage: bukgzpkvcvfbmcdmpcbiigbvugicqa
///           privateLinkServiceProxies:
///             - groupConnectivityInformation:
///                 - customerVisibleFqdns:
///                     - vedcg
///                   groupId: per
///                   internalFqdn: maqavwhxwzzhbzjbryyquvitmup
///                   memberName: ybptuypgdqoxkuwqx
///                   privateLinkServiceArmRegion: rerkqqxinteevmlbrdkktaqhcch
///                   redirectMapId: pezncxcq
///               id: nzqxevuyqeedrqnkbnlcyrrrbzxvl
///               remotePrivateEndpointConnection:
///                 id: ocunsgawjsqohkrcyxiv
///               remotePrivateLinkServiceConnectionState:
///                 actionsRequired: afwbq
///                 description: y
///                 status: Approved
///       resourceGroupName: rgswagger_2024-09-01
///       vaultName: '4'
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
/// $ pulumi import azure-native:datareplication:PrivateEndpointConnectionProxy wrbeymbilwm /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationVaults/{vaultName}/privateEndpointConnectionProxies/{privateEndpointConnectionProxyName}
/// ```
class PrivateEndpointConnectionProxy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets ETag.
  late final pulumi.Output<String?> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<PrivateEndpointConnectionProxyPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnectionProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnectionProxy]. {@macro pulumi_datareplication_private_endpoint_connection_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnectionProxy(
    String name, {
    PrivateEndpointConnectionProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:PrivateEndpointConnectionProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<PrivateEndpointConnectionProxyPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
