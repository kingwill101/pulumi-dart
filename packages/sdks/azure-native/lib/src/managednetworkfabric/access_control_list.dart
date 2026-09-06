import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_list_args.dart';
import 'access_control_list_match_configuration_response.dart';
import 'common_dynamic_match_configuration_response.dart';
import 'system_data_response.dart';

/// The Access Control List resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview, 2025-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AccessControlLists_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var accessControlList = new AzureNative.ManagedNetworkFabric.AccessControlList("accessControlList", new()
///     {
///         AccessControlListName = "example-acl",
///         AclsUrl = "https://ACL-Storage-URL",
///         Annotation = "annotation",
///         ConfigurationType = AzureNative.ManagedNetworkFabric.ConfigurationType.File,
///         DefaultAction = AzureNative.ManagedNetworkFabric.CommunityActionTypes.Permit,
///         DynamicMatchConfigurations = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.CommonDynamicMatchConfigurationArgs
///             {
///                 IpGroups = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.IpGroupPropertiesArgs
///                     {
///                         IpAddressType = AzureNative.ManagedNetworkFabric.IPAddressType.IPv4,
///                         IpPrefixes = new[]
///                         {
///                             "10.20.3.1/20",
///                         },
///                         Name = "example-ipGroup",
///                     },
///                 },
///                 PortGroups = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.PortGroupPropertiesArgs
///                     {
///                         Name = "example-portGroup",
///                         Ports = new[]
///                         {
///                             "100-200",
///                         },
///                     },
///                 },
///                 VlanGroups = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.VlanGroupPropertiesArgs
///                     {
///                         Name = "example-vlanGroup",
///                         Vlans = new[]
///                         {
///                             "20-30",
///                         },
///                     },
///                 },
///             },
///         },
///         Location = "eastUs",
///         MatchConfigurations = new[]
///         {
///             new AzureNative.ManagedNetworkFabric.Inputs.AccessControlListMatchConfigurationArgs
///             {
///                 Actions = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.AccessControlListActionArgs
///                     {
///                         CounterName = "example-counter",
///                         Type = AzureNative.ManagedNetworkFabric.AclActionType.Count,
///                     },
///                 },
///                 IpAddressType = AzureNative.ManagedNetworkFabric.IPAddressType.IPv4,
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.ManagedNetworkFabric.Inputs.AccessControlListMatchConditionArgs
///                     {
///                         DscpMarkings = new[]
///                         {
///                             "32",
///                         },
///                         EtherTypes = new[]
///                         {
///                             "0x1",
///                         },
///                         Fragments = new[]
///                         {
///                             "0xff00-0xffff",
///                         },
///                         IpCondition = new AzureNative.ManagedNetworkFabric.Inputs.IpMatchConditionArgs
///                         {
///                             IpGroupNames = new[]
///                             {
///                                 "example-ipGroup",
///                             },
///                             IpPrefixValues = new[]
///                             {
///                                 "10.20.20.20/12",
///                             },
///                             PrefixType = AzureNative.ManagedNetworkFabric.PrefixType.Prefix,
///                             Type = AzureNative.ManagedNetworkFabric.SourceDestinationType.SourceIP,
///                         },
///                         IpLengths = new[]
///                         {
///                             "4094-9214",
///                         },
///                         PortCondition = new AzureNative.ManagedNetworkFabric.Inputs.AccessControlListPortConditionArgs
///                         {
///                             Flags = new[]
///                             {
///                                 "established",
///                             },
///                             Layer4Protocol = AzureNative.ManagedNetworkFabric.Layer4Protocol.TCP,
///                             PortGroupNames = new[]
///                             {
///                                 "example-portGroup",
///                             },
///                             PortType = AzureNative.ManagedNetworkFabric.PortType.SourcePort,
///                             Ports = new[]
///                             {
///                                 "1-20",
///                             },
///                         },
///                         ProtocolTypes = new[]
///                         {
///                             "TCP",
///                         },
///                         TtlValues = new[]
///                         {
///                             "23",
///                         },
///                         VlanMatchCondition = new AzureNative.ManagedNetworkFabric.Inputs.VlanMatchConditionArgs
///                         {
///                             InnerVlans = new[]
///                             {
///                                 "30",
///                             },
///                             VlanGroupNames = new[]
///                             {
///                                 "example-vlanGroup",
///                             },
///                             Vlans = new[]
///                             {
///                                 "20-30",
///                             },
///                         },
///                     },
///                 },
///                 MatchConfigurationName = "example-match",
///                 SequenceNumber = 123,
///             },
///         },
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "keyID", "KeyValue" },
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewAccessControlList(ctx, "accessControlList", &managednetworkfabric.AccessControlListArgs{
/// 			AccessControlListName: pulumi.String("example-acl"),
/// 			AclsUrl:               pulumi.String("https://ACL-Storage-URL"),
/// 			Annotation:            pulumi.String("annotation"),
/// 			ConfigurationType:     pulumi.String(managednetworkfabric.ConfigurationTypeFile),
/// 			DefaultAction:         pulumi.String(managednetworkfabric.CommunityActionTypesPermit),
/// 			DynamicMatchConfigurations: managednetworkfabric.CommonDynamicMatchConfigurationArray{
/// 				&managednetworkfabric.CommonDynamicMatchConfigurationArgs{
/// 					IpGroups: managednetworkfabric.IpGroupPropertiesArray{
/// 						&managednetworkfabric.IpGroupPropertiesArgs{
/// 							IpAddressType: pulumi.String(managednetworkfabric.IPAddressTypeIPv4),
/// 							IpPrefixes: pulumi.StringArray{
/// 								pulumi.String("10.20.3.1/20"),
/// 							},
/// 							Name: pulumi.String("example-ipGroup"),
/// 						},
/// 					},
/// 					PortGroups: managednetworkfabric.PortGroupPropertiesArray{
/// 						&managednetworkfabric.PortGroupPropertiesArgs{
/// 							Name: pulumi.String("example-portGroup"),
/// 							Ports: pulumi.StringArray{
/// 								pulumi.String("100-200"),
/// 							},
/// 						},
/// 					},
/// 					VlanGroups: managednetworkfabric.VlanGroupPropertiesArray{
/// 						&managednetworkfabric.VlanGroupPropertiesArgs{
/// 							Name: pulumi.String("example-vlanGroup"),
/// 							Vlans: pulumi.StringArray{
/// 								pulumi.String("20-30"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("eastUs"),
/// 			MatchConfigurations: managednetworkfabric.AccessControlListMatchConfigurationArray{
/// 				&managednetworkfabric.AccessControlListMatchConfigurationArgs{
/// 					Actions: managednetworkfabric.AccessControlListActionArray{
/// 						&managednetworkfabric.AccessControlListActionArgs{
/// 							CounterName: pulumi.String("example-counter"),
/// 							Type:        pulumi.String(managednetworkfabric.AclActionTypeCount),
/// 						},
/// 					},
/// 					IpAddressType: pulumi.String(managednetworkfabric.IPAddressTypeIPv4),
/// 					MatchConditions: managednetworkfabric.AccessControlListMatchConditionArray{
/// 						&managednetworkfabric.AccessControlListMatchConditionArgs{
/// 							DscpMarkings: pulumi.StringArray{
/// 								pulumi.String("32"),
/// 							},
/// 							EtherTypes: pulumi.StringArray{
/// 								pulumi.String("0x1"),
/// 							},
/// 							Fragments: pulumi.StringArray{
/// 								pulumi.String("0xff00-0xffff"),
/// 							},
/// 							IpCondition: &managednetworkfabric.IpMatchConditionArgs{
/// 								IpGroupNames: pulumi.StringArray{
/// 									pulumi.String("example-ipGroup"),
/// 								},
/// 								IpPrefixValues: pulumi.StringArray{
/// 									pulumi.String("10.20.20.20/12"),
/// 								},
/// 								PrefixType: pulumi.String(managednetworkfabric.PrefixTypePrefix),
/// 								Type:       pulumi.String(managednetworkfabric.SourceDestinationTypeSourceIP),
/// 							},
/// 							IpLengths: pulumi.StringArray{
/// 								pulumi.String("4094-9214"),
/// 							},
/// 							PortCondition: &managednetworkfabric.AccessControlListPortConditionArgs{
/// 								Flags: pulumi.StringArray{
/// 									pulumi.String("established"),
/// 								},
/// 								Layer4Protocol: pulumi.String(managednetworkfabric.Layer4ProtocolTCP),
/// 								PortGroupNames: pulumi.StringArray{
/// 									pulumi.String("example-portGroup"),
/// 								},
/// 								PortType: pulumi.String(managednetworkfabric.PortTypeSourcePort),
/// 								Ports: pulumi.StringArray{
/// 									pulumi.String("1-20"),
/// 								},
/// 							},
/// 							ProtocolTypes: pulumi.StringArray{
/// 								pulumi.String("TCP"),
/// 							},
/// 							TtlValues: pulumi.StringArray{
/// 								pulumi.String("23"),
/// 							},
/// 							VlanMatchCondition: &managednetworkfabric.VlanMatchConditionArgs{
/// 								InnerVlans: pulumi.StringArray{
/// 									pulumi.String("30"),
/// 								},
/// 								VlanGroupNames: pulumi.StringArray{
/// 									pulumi.String("example-vlanGroup"),
/// 								},
/// 								Vlans: pulumi.StringArray{
/// 									pulumi.String("20-30"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					MatchConfigurationName: pulumi.String("example-match"),
/// 					SequenceNumber:         pulumi.Float64(123),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("KeyValue"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_managednetworkfabric_accesscontrollist" "accessControlList" {
///   access_control_list_name = "example-acl"
///   acls_url                 = "https://ACL-Storage-URL"
///   annotation               = "annotation"
///   configuration_type       = "File"
///   default_action           = "Permit"
///   dynamic_match_configurations {
///     ip_groups {
///       ip_address_type = "IPv4"
///       ip_prefixes     = ["10.20.3.1/20"]
///       name            = "example-ipGroup"
///     }
///     port_groups {
///       name  = "example-portGroup"
///       ports = ["100-200"]
///     }
///     vlan_groups {
///       name  = "example-vlanGroup"
///       vlans = ["20-30"]
///     }
///   }
///   location = "eastUs"
///   match_configurations {
///     actions {
///       counter_name = "example-counter"
///       type         = "Count"
///     }
///     ip_address_type = "IPv4"
///     match_conditions {
///       dscp_markings = ["32"]
///       ether_types   = ["0x1"]
///       fragments     = ["0xff00-0xffff"]
///       ip_condition = {
///         ip_group_names   = ["example-ipGroup"]
///         ip_prefix_values = ["10.20.20.20/12"]
///         prefix_type      = "Prefix"
///         type             = "SourceIP"
///       }
///       ip_lengths = ["4094-9214"]
///       port_condition = {
///         flags            = ["established"]
///         layer4_protocol  = "TCP"
///         port_group_names = ["example-portGroup"]
///         port_type        = "SourcePort"
///         ports            = ["1-20"]
///       }
///       protocol_types = ["TCP"]
///       ttl_values     = ["23"]
///       vlan_match_condition = {
///         inner_vlans      = ["30"]
///         vlan_group_names = ["example-vlanGroup"]
///         vlans            = ["20-30"]
///       }
///     }
///     match_configuration_name = "example-match"
///     sequence_number          = 123
///   }
///   resource_group_name = "example-rg"
///   tags = {
///     "keyID" = "KeyValue"
///   }
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
/// import com.pulumi.azurenative.managednetworkfabric.AccessControlList;
/// import com.pulumi.azurenative.managednetworkfabric.AccessControlListArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.CommonDynamicMatchConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.AccessControlListMatchConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var accessControlList = new AccessControlList("accessControlList", AccessControlListArgs.builder()
///             .accessControlListName("example-acl")
///             .aclsUrl("https://ACL-Storage-URL")
///             .annotation("annotation")
///             .configurationType("File")
///             .defaultAction("Permit")
///             .dynamicMatchConfigurations(CommonDynamicMatchConfigurationArgs.builder()
///                 .ipGroups(IpGroupPropertiesArgs.builder()
///                     .ipAddressType("IPv4")
///                     .ipPrefixes("10.20.3.1/20")
///                     .name("example-ipGroup")
///                     .build())
///                 .portGroups(PortGroupPropertiesArgs.builder()
///                     .name("example-portGroup")
///                     .ports("100-200")
///                     .build())
///                 .vlanGroups(VlanGroupPropertiesArgs.builder()
///                     .name("example-vlanGroup")
///                     .vlans("20-30")
///                     .build())
///                 .build())
///             .location("eastUs")
///             .matchConfigurations(AccessControlListMatchConfigurationArgs.builder()
///                 .actions(AccessControlListActionArgs.builder()
///                     .counterName("example-counter")
///                     .type("Count")
///                     .build())
///                 .ipAddressType("IPv4")
///                 .matchConditions(AccessControlListMatchConditionArgs.builder()
///                     .dscpMarkings("32")
///                     .etherTypes("0x1")
///                     .fragments("0xff00-0xffff")
///                     .ipCondition(IpMatchConditionArgs.builder()
///                         .ipGroupNames("example-ipGroup")
///                         .ipPrefixValues("10.20.20.20/12")
///                         .prefixType("Prefix")
///                         .type("SourceIP")
///                         .build())
///                     .ipLengths("4094-9214")
///                     .portCondition(AccessControlListPortConditionArgs.builder()
///                         .flags("established")
///                         .layer4Protocol("TCP")
///                         .portGroupNames("example-portGroup")
///                         .portType("SourcePort")
///                         .ports("1-20")
///                         .build())
///                     .protocolTypes("TCP")
///                     .ttlValues("23")
///                     .vlanMatchCondition(VlanMatchConditionArgs.builder()
///                         .innerVlans("30")
///                         .vlanGroupNames("example-vlanGroup")
///                         .vlans("20-30")
///                         .build())
///                     .build())
///                 .matchConfigurationName("example-match")
///                 .sequenceNumber(123.0)
///                 .build())
///             .resourceGroupName("example-rg")
///             .tags(Map.of("keyID", "KeyValue"))
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
/// const accessControlList = new azure_native.managednetworkfabric.AccessControlList("accessControlList", {
///     accessControlListName: "example-acl",
///     aclsUrl: "https://ACL-Storage-URL",
///     annotation: "annotation",
///     configurationType: azure_native.managednetworkfabric.ConfigurationType.File,
///     defaultAction: azure_native.managednetworkfabric.CommunityActionTypes.Permit,
///     dynamicMatchConfigurations: [{
///         ipGroups: [{
///             ipAddressType: azure_native.managednetworkfabric.IPAddressType.IPv4,
///             ipPrefixes: ["10.20.3.1/20"],
///             name: "example-ipGroup",
///         }],
///         portGroups: [{
///             name: "example-portGroup",
///             ports: ["100-200"],
///         }],
///         vlanGroups: [{
///             name: "example-vlanGroup",
///             vlans: ["20-30"],
///         }],
///     }],
///     location: "eastUs",
///     matchConfigurations: [{
///         actions: [{
///             counterName: "example-counter",
///             type: azure_native.managednetworkfabric.AclActionType.Count,
///         }],
///         ipAddressType: azure_native.managednetworkfabric.IPAddressType.IPv4,
///         matchConditions: [{
///             dscpMarkings: ["32"],
///             etherTypes: ["0x1"],
///             fragments: ["0xff00-0xffff"],
///             ipCondition: {
///                 ipGroupNames: ["example-ipGroup"],
///                 ipPrefixValues: ["10.20.20.20/12"],
///                 prefixType: azure_native.managednetworkfabric.PrefixType.Prefix,
///                 type: azure_native.managednetworkfabric.SourceDestinationType.SourceIP,
///             },
///             ipLengths: ["4094-9214"],
///             portCondition: {
///                 flags: ["established"],
///                 layer4Protocol: azure_native.managednetworkfabric.Layer4Protocol.TCP,
///                 portGroupNames: ["example-portGroup"],
///                 portType: azure_native.managednetworkfabric.PortType.SourcePort,
///                 ports: ["1-20"],
///             },
///             protocolTypes: ["TCP"],
///             ttlValues: ["23"],
///             vlanMatchCondition: {
///                 innerVlans: ["30"],
///                 vlanGroupNames: ["example-vlanGroup"],
///                 vlans: ["20-30"],
///             },
///         }],
///         matchConfigurationName: "example-match",
///         sequenceNumber: 123,
///     }],
///     resourceGroupName: "example-rg",
///     tags: {
///         keyID: "KeyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// access_control_list = azure_native.managednetworkfabric.AccessControlList("accessControlList",
///     access_control_list_name="example-acl",
///     acls_url="https://ACL-Storage-URL",
///     annotation="annotation",
///     configuration_type=azure_native.managednetworkfabric.ConfigurationType.FILE,
///     default_action=azure_native.managednetworkfabric.CommunityActionTypes.PERMIT,
///     dynamic_match_configurations=[{
///         "ip_groups": [{
///             "ip_address_type": azure_native.managednetworkfabric.IPAddressType.I_PV4,
///             "ip_prefixes": ["10.20.3.1/20"],
///             "name": "example-ipGroup",
///         }],
///         "port_groups": [{
///             "name": "example-portGroup",
///             "ports": ["100-200"],
///         }],
///         "vlan_groups": [{
///             "name": "example-vlanGroup",
///             "vlans": ["20-30"],
///         }],
///     }],
///     location="eastUs",
///     match_configurations=[{
///         "actions": [{
///             "counter_name": "example-counter",
///             "type": azure_native.managednetworkfabric.AclActionType.COUNT,
///         }],
///         "ip_address_type": azure_native.managednetworkfabric.IPAddressType.I_PV4,
///         "match_conditions": [{
///             "dscp_markings": ["32"],
///             "ether_types": ["0x1"],
///             "fragments": ["0xff00-0xffff"],
///             "ip_condition": {
///                 "ip_group_names": ["example-ipGroup"],
///                 "ip_prefix_values": ["10.20.20.20/12"],
///                 "prefix_type": azure_native.managednetworkfabric.PrefixType.PREFIX,
///                 "type": azure_native.managednetworkfabric.SourceDestinationType.SOURCE_IP,
///             },
///             "ip_lengths": ["4094-9214"],
///             "port_condition": {
///                 "flags": ["established"],
///                 "layer4_protocol": azure_native.managednetworkfabric.Layer4Protocol.TCP,
///                 "port_group_names": ["example-portGroup"],
///                 "port_type": azure_native.managednetworkfabric.PortType.SOURCE_PORT,
///                 "ports": ["1-20"],
///             },
///             "protocol_types": ["TCP"],
///             "ttl_values": ["23"],
///             "vlan_match_condition": {
///                 "inner_vlans": ["30"],
///                 "vlan_group_names": ["example-vlanGroup"],
///                 "vlans": ["20-30"],
///             },
///         }],
///         "match_configuration_name": "example-match",
///         "sequence_number": float(123),
///     }],
///     resource_group_name="example-rg",
///     tags={
///         "keyID": "KeyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   accessControlList:
///     type: azure-native:managednetworkfabric:AccessControlList
///     properties:
///       accessControlListName: example-acl
///       aclsUrl: https://ACL-Storage-URL
///       annotation: annotation
///       configurationType: File
///       defaultAction: Permit
///       dynamicMatchConfigurations:
///         - ipGroups:
///             - ipAddressType: IPv4
///               ipPrefixes:
///                 - 10.20.3.1/20
///               name: example-ipGroup
///           portGroups:
///             - name: example-portGroup
///               ports:
///                 - 100-200
///           vlanGroups:
///             - name: example-vlanGroup
///               vlans:
///                 - 20-30
///       location: eastUs
///       matchConfigurations:
///         - actions:
///             - counterName: example-counter
///               type: Count
///           ipAddressType: IPv4
///           matchConditions:
///             - dscpMarkings:
///                 - '32'
///               etherTypes:
///                 - 0x1
///               fragments:
///                 - 0xff00-0xffff
///               ipCondition:
///                 ipGroupNames:
///                   - example-ipGroup
///                 ipPrefixValues:
///                   - 10.20.20.20/12
///                 prefixType: Prefix
///                 type: SourceIP
///               ipLengths:
///                 - 4094-9214
///               portCondition:
///                 flags:
///                   - established
///                 layer4Protocol: TCP
///                 portGroupNames:
///                   - example-portGroup
///                 portType: SourcePort
///                 ports:
///                   - 1-20
///               protocolTypes:
///                 - TCP
///               ttlValues:
///                 - '23'
///               vlanMatchCondition:
///                 innerVlans:
///                   - '30'
///                 vlanGroupNames:
///                   - example-vlanGroup
///                 vlans:
///                   - 20-30
///           matchConfigurationName: example-match
///           sequenceNumber: 123
///       resourceGroupName: example-rg
///       tags:
///         keyID: KeyValue
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
/// $ pulumi import azure-native:managednetworkfabric:AccessControlList example-acl /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/accessControlLists/{accessControlListName}
/// ```
class AccessControlList extends pulumi.CustomResource {
  /// Access Control List file URL.
  late final pulumi.Output<String?> aclsUrl;
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;
  /// Input method to configure Access Control List.
  late final pulumi.Output<String> configurationType;
  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  late final pulumi.Output<String?> defaultAction;
  /// List of dynamic match configurations.
  late final pulumi.Output<List<CommonDynamicMatchConfigurationResponse>?> dynamicMatchConfigurations;
  /// The last synced timestamp.
  late final pulumi.Output<String> lastSyncedTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// List of match configurations.
  late final pulumi.Output<List<AccessControlListMatchConfigurationResponse>?> matchConfigurations;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AccessControlList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessControlList]. {@macro pulumi_managednetworkfabric_access_control_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessControlList(
    String name, {
    AccessControlListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:AccessControlList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclsUrl = registerOutput<String?>('aclsUrl');
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    configurationType = registerOutput<String>('configurationType');
    defaultAction = registerOutput<String?>('defaultAction');
    dynamicMatchConfigurations = registerOutput<List<CommonDynamicMatchConfigurationResponse>?>('dynamicMatchConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CommonDynamicMatchConfigurationResponse>(guardedValue, (value) => CommonDynamicMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    lastSyncedTime = registerOutput<String>('lastSyncedTime');
    location = registerOutput<String>('location');
    matchConfigurations = registerOutput<List<AccessControlListMatchConfigurationResponse>?>('matchConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessControlListMatchConfigurationResponse>(guardedValue, (value) => AccessControlListMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AccessControlList] resource.
  AccessControlList.reference(String urn)
    : super(
        'azure-native:managednetworkfabric:AccessControlList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aclsUrl = registerOutput<String?>('aclsUrl');
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    configurationType = registerOutput<String>('configurationType');
    defaultAction = registerOutput<String?>('defaultAction');
    dynamicMatchConfigurations = registerOutput<List<CommonDynamicMatchConfigurationResponse>?>('dynamicMatchConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CommonDynamicMatchConfigurationResponse>(guardedValue, (value) => CommonDynamicMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    lastSyncedTime = registerOutput<String>('lastSyncedTime');
    location = registerOutput<String>('location');
    matchConfigurations = registerOutput<List<AccessControlListMatchConfigurationResponse>?>('matchConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessControlListMatchConfigurationResponse>(guardedValue, (value) => AccessControlListMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
