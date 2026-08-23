import 'package:pulumi/pulumi.dart' as pulumi;
import 'dnssettings_response.dart';
import 'firewall_args.dart';
import 'managed_identity_properties_response.dart';
import 'marketplace_details_response.dart';
import 'network_profile_response.dart';
import 'panorama_config_response.dart';
import 'plan_data_response.dart';
import 'rulestack_details_response.dart';
import 'strata_cloud_manager_config_response.dart';
import 'system_data_response.dart';

/// PaloAltoNetworks Firewall
///
/// Uses Azure REST API version 2025-05-23. In version 2.x of the Azure Native provider, it used API version 2023-09-01.
///
/// Other available API versions: 2023-09-01, 2023-10-10-preview, 2024-01-19-preview, 2024-02-07-preview, 2025-02-06-preview, 2025-07-07-preview, 2025-10-08, 2026-01-26-preview, 2026-05-11-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudngfw [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Firewalls_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewall = new AzureNative.Cloudngfw.Firewall("firewall", new()
///     {
///         AssociatedRulestack = new AzureNative.Cloudngfw.Inputs.RulestackDetailsArgs
///         {
///             Location = "eastus",
///             ResourceId = "lrs1",
///             RulestackId = "PANRSID",
///         },
///         DnsSettings = new AzureNative.Cloudngfw.Inputs.DNSSettingsArgs
///         {
///             DnsServers = new[]
///             {
///                 new AzureNative.Cloudngfw.Inputs.IPAddressArgs
///                 {
///                     Address = "20.22.92.111",
///                     ResourceId = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1",
///                 },
///             },
///             EnableDnsProxy = AzureNative.Cloudngfw.DNSProxy.DISABLED,
///             EnabledDnsType = AzureNative.Cloudngfw.EnabledDNSType.CUSTOM,
///         },
///         FirewallName = "firewall1",
///         FrontEndSettings = new[]
///         {
///             new AzureNative.Cloudngfw.Inputs.FrontendSettingArgs
///             {
///                 BackendConfiguration = new AzureNative.Cloudngfw.Inputs.EndpointConfigurationArgs
///                 {
///                     Address = new AzureNative.Cloudngfw.Inputs.IPAddressArgs
///                     {
///                         Address = "20.22.32.136",
///                         ResourceId = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp2",
///                     },
///                     Port = "80",
///                 },
///                 FrontendConfiguration = new AzureNative.Cloudngfw.Inputs.EndpointConfigurationArgs
///                 {
///                     Address = new AzureNative.Cloudngfw.Inputs.IPAddressArgs
///                     {
///                         Address = "20.22.91.251",
///                         ResourceId = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp1",
///                     },
///                     Port = "80",
///                 },
///                 Name = "frontendsetting11",
///                 Protocol = AzureNative.Cloudngfw.ProtocolType.TCP,
///             },
///         },
///         Identity = new AzureNative.Cloudngfw.Inputs.AzureResourceManagerManagedIdentityPropertiesArgs
///         {
///             Type = AzureNative.Cloudngfw.ManagedIdentityType.None,
///             UserAssignedIdentities =
///             {
///                 { "key16", new AzureNative.Cloudngfw.Inputs.AzureResourceManagerUserAssignedIdentityArgs
///                 {
///                     ClientId = "aaaa",
///                     PrincipalId = "aaaaaaaaaaaaaaa",
///                 } },
///             },
///         },
///         IsPanoramaManaged = AzureNative.Cloudngfw.BooleanEnum.TRUE,
///         Location = "eastus",
///         MarketplaceDetails = new AzureNative.Cloudngfw.Inputs.MarketplaceDetailsArgs
///         {
///             MarketplaceSubscriptionStatus = AzureNative.Cloudngfw.MarketplaceSubscriptionStatus.PendingFulfillmentStart,
///             OfferId = "liftr-pan-ame-test",
///             PublisherId = "isvtestuklegacy",
///         },
///         NetworkProfile = new AzureNative.Cloudngfw.Inputs.NetworkProfileArgs
///         {
///             EgressNatIp = new[]
///             {
///                 new AzureNative.Cloudngfw.Inputs.IPAddressArgs
///                 {
///                     Address = "20.22.92.111",
///                     ResourceId = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1",
///                 },
///             },
///             EnableEgressNat = AzureNative.Cloudngfw.EgressNat.ENABLED,
///             NetworkType = AzureNative.Cloudngfw.NetworkType.VNET,
///             PrivateSourceNatRulesDestination = new[]
///             {
///                 "20.22.92.11",
///             },
///             PublicIps = new[]
///             {
///                 new AzureNative.Cloudngfw.Inputs.IPAddressArgs
///                 {
///                     Address = "20.22.92.11",
///                     ResourceId = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1",
///                 },
///             },
///             TrustedRanges = new[]
///             {
///                 "20.22.92.11",
///             },
///             VnetConfiguration = new AzureNative.Cloudngfw.Inputs.VnetConfigurationArgs
///             {
///                 IpOfTrustSubnetForUdr = new AzureNative.Cloudngfw.Inputs.IPAddressArgs
///                 {
///                     Address = "10.1.1.0/24",
///                     ResourceId = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///                 },
///                 TrustSubnet = new AzureNative.Cloudngfw.Inputs.IPAddressSpaceArgs
///                 {
///                     AddressSpace = "10.1.1.0/24",
///                     ResourceId = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet",
///                 },
///                 UnTrustSubnet = new AzureNative.Cloudngfw.Inputs.IPAddressSpaceArgs
///                 {
///                     AddressSpace = "10.1.1.0/24",
///                     ResourceId = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///                 },
///                 Vnet = new AzureNative.Cloudngfw.Inputs.IPAddressSpaceArgs
///                 {
///                     AddressSpace = "10.1.0.0/16",
///                     ResourceId = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet",
///                 },
///             },
///             VwanConfiguration = new AzureNative.Cloudngfw.Inputs.VwanConfigurationArgs
///             {
///                 IpOfTrustSubnetForUdr = new AzureNative.Cloudngfw.Inputs.IPAddressArgs
///                 {
///                     Address = "10.1.1.0/24",
///                     ResourceId = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///                 },
///                 NetworkVirtualApplianceId = "2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///                 TrustSubnet = new AzureNative.Cloudngfw.Inputs.IPAddressSpaceArgs
///                 {
///                     AddressSpace = "10.1.1.0/24",
///                     ResourceId = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet",
///                 },
///                 UnTrustSubnet = new AzureNative.Cloudngfw.Inputs.IPAddressSpaceArgs
///                 {
///                     AddressSpace = "10.1.1.0/24",
///                     ResourceId = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///                 },
///                 VHub = new AzureNative.Cloudngfw.Inputs.IPAddressSpaceArgs
///                 {
///                     AddressSpace = "10.1.1.0/24",
///                     ResourceId = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///                 },
///             },
///         },
///         PanEtag = "2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///         PanoramaConfig = new AzureNative.Cloudngfw.Inputs.PanoramaConfigArgs
///         {
///             ConfigString = "bas64EncodedString",
///         },
///         PlanData = new AzureNative.Cloudngfw.Inputs.PlanDataArgs
///         {
///             BillingCycle = AzureNative.Cloudngfw.BillingCycle.MONTHLY,
///             PlanId = "liftrpantestplan",
///             UsageType = AzureNative.Cloudngfw.UsageType.PAYG,
///         },
///         ResourceGroupName = "firewall-rg",
///         Tags =
///         {
///             { "tagName", "value" },
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
/// 	cloudngfw "github.com/pulumi/pulumi-azure-native-sdk/cloudngfw/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudngfw.NewFirewall(ctx, "firewall", &cloudngfw.FirewallArgs{
/// 			AssociatedRulestack: &cloudngfw.RulestackDetailsArgs{
/// 				Location:    pulumi.String("eastus"),
/// 				ResourceId:  pulumi.String("lrs1"),
/// 				RulestackId: pulumi.String("PANRSID"),
/// 			},
/// 			DnsSettings: &cloudngfw.DNSSettingsArgs{
/// 				DnsServers: cloudngfw.IPAddressArray{
/// 					&cloudngfw.IPAddressArgs{
/// 						Address:    pulumi.String("20.22.92.111"),
/// 						ResourceId: pulumi.String("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1"),
/// 					},
/// 				},
/// 				EnableDnsProxy: pulumi.String(cloudngfw.DNSProxyDISABLED),
/// 				EnabledDnsType: pulumi.String(cloudngfw.EnabledDNSTypeCUSTOM),
/// 			},
/// 			FirewallName: pulumi.String("firewall1"),
/// 			FrontEndSettings: cloudngfw.FrontendSettingArray{
/// 				&cloudngfw.FrontendSettingArgs{
/// 					BackendConfiguration: &cloudngfw.EndpointConfigurationArgs{
/// 						Address: &cloudngfw.IPAddressArgs{
/// 							Address:    pulumi.String("20.22.32.136"),
/// 							ResourceId: pulumi.String("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp2"),
/// 						},
/// 						Port: pulumi.String("80"),
/// 					},
/// 					FrontendConfiguration: &cloudngfw.EndpointConfigurationArgs{
/// 						Address: &cloudngfw.IPAddressArgs{
/// 							Address:    pulumi.String("20.22.91.251"),
/// 							ResourceId: pulumi.String("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp1"),
/// 						},
/// 						Port: pulumi.String("80"),
/// 					},
/// 					Name:     pulumi.String("frontendsetting11"),
/// 					Protocol: pulumi.String(cloudngfw.ProtocolTypeTCP),
/// 				},
/// 			},
/// 			Identity: &cloudngfw.AzureResourceManagerManagedIdentityPropertiesArgs{
/// 				Type: pulumi.String(cloudngfw.ManagedIdentityTypeNone),
/// 				UserAssignedIdentities: cloudngfw.AzureResourceManagerUserAssignedIdentityMap{
/// 					"key16": &cloudngfw.AzureResourceManagerUserAssignedIdentityArgs{
/// 						ClientId:    pulumi.String("aaaa"),
/// 						PrincipalId: pulumi.String("aaaaaaaaaaaaaaa"),
/// 					},
/// 				},
/// 			},
/// 			IsPanoramaManaged: pulumi.String(cloudngfw.BooleanEnumTRUE),
/// 			Location:          pulumi.String("eastus"),
/// 			MarketplaceDetails: &cloudngfw.MarketplaceDetailsArgs{
/// 				MarketplaceSubscriptionStatus: pulumi.String(cloudngfw.MarketplaceSubscriptionStatusPendingFulfillmentStart),
/// 				OfferId:                       pulumi.String("liftr-pan-ame-test"),
/// 				PublisherId:                   pulumi.String("isvtestuklegacy"),
/// 			},
/// 			NetworkProfile: &cloudngfw.NetworkProfileArgs{
/// 				EgressNatIp: cloudngfw.IPAddressArray{
/// 					&cloudngfw.IPAddressArgs{
/// 						Address:    pulumi.String("20.22.92.111"),
/// 						ResourceId: pulumi.String("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1"),
/// 					},
/// 				},
/// 				EnableEgressNat: pulumi.String(cloudngfw.EgressNatENABLED),
/// 				NetworkType:     pulumi.String(cloudngfw.NetworkTypeVNET),
/// 				PrivateSourceNatRulesDestination: pulumi.StringArray{
/// 					pulumi.String("20.22.92.11"),
/// 				},
/// 				PublicIps: cloudngfw.IPAddressArray{
/// 					&cloudngfw.IPAddressArgs{
/// 						Address:    pulumi.String("20.22.92.11"),
/// 						ResourceId: pulumi.String("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1"),
/// 					},
/// 				},
/// 				TrustedRanges: pulumi.StringArray{
/// 					pulumi.String("20.22.92.11"),
/// 				},
/// 				VnetConfiguration: &cloudngfw.VnetConfigurationArgs{
/// 					IpOfTrustSubnetForUdr: &cloudngfw.IPAddressArgs{
/// 						Address:    pulumi.String("10.1.1.0/24"),
/// 						ResourceId: pulumi.String("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"),
/// 					},
/// 					TrustSubnet: &cloudngfw.IPAddressSpaceArgs{
/// 						AddressSpace: pulumi.String("10.1.1.0/24"),
/// 						ResourceId:   pulumi.String("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet"),
/// 					},
/// 					UnTrustSubnet: &cloudngfw.IPAddressSpaceArgs{
/// 						AddressSpace: pulumi.String("10.1.1.0/24"),
/// 						ResourceId:   pulumi.String("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"),
/// 					},
/// 					Vnet: &cloudngfw.IPAddressSpaceArgs{
/// 						AddressSpace: pulumi.String("10.1.0.0/16"),
/// 						ResourceId:   pulumi.String("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet"),
/// 					},
/// 				},
/// 				VwanConfiguration: &cloudngfw.VwanConfigurationArgs{
/// 					IpOfTrustSubnetForUdr: &cloudngfw.IPAddressArgs{
/// 						Address:    pulumi.String("10.1.1.0/24"),
/// 						ResourceId: pulumi.String("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"),
/// 					},
/// 					NetworkVirtualApplianceId: pulumi.String("2bf4a339-294d-4c25-b0b2-ef649e9f5c12"),
/// 					TrustSubnet: &cloudngfw.IPAddressSpaceArgs{
/// 						AddressSpace: pulumi.String("10.1.1.0/24"),
/// 						ResourceId:   pulumi.String("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet"),
/// 					},
/// 					UnTrustSubnet: &cloudngfw.IPAddressSpaceArgs{
/// 						AddressSpace: pulumi.String("10.1.1.0/24"),
/// 						ResourceId:   pulumi.String("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"),
/// 					},
/// 					VHub: &cloudngfw.IPAddressSpaceArgs{
/// 						AddressSpace: pulumi.String("10.1.1.0/24"),
/// 						ResourceId:   pulumi.String("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"),
/// 					},
/// 				},
/// 			},
/// 			PanEtag: pulumi.String("2bf4a339-294d-4c25-b0b2-ef649e9f5c12"),
/// 			PanoramaConfig: &cloudngfw.PanoramaConfigArgs{
/// 				ConfigString: pulumi.String("bas64EncodedString"),
/// 			},
/// 			PlanData: &cloudngfw.PlanDataArgs{
/// 				BillingCycle: pulumi.String(cloudngfw.BillingCycleMONTHLY),
/// 				PlanId:       pulumi.String("liftrpantestplan"),
/// 				UsageType:    pulumi.String(cloudngfw.UsageTypePAYG),
/// 			},
/// 			ResourceGroupName: pulumi.String("firewall-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName": pulumi.String("value"),
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
/// resource "azure-native_cloudngfw_firewall" "firewall" {
///   associated_rulestack = {
///     location     = "eastus"
///     resource_id  = "lrs1"
///     rulestack_id = "PANRSID"
///   }
///   dns_settings = {
///     dns_servers = [{
///       "address"    = "20.22.92.111"
///       "resourceId" = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1"
///     }]
///     enable_dns_proxy = "DISABLED"
///     enabled_dns_type = "CUSTOM"
///   }
///   firewall_name = "firewall1"
///   front_end_settings {
///     backend_configuration = {
///       address = {
///         address     = "20.22.32.136"
///         resource_id = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp2"
///       }
///       port = "80"
///     }
///     frontend_configuration = {
///       address = {
///         address     = "20.22.91.251"
///         resource_id = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp1"
///       }
///       port = "80"
///     }
///     name     = "frontendsetting11"
///     protocol = "TCP"
///   }
///   identity = {
///     type = "None"
///     user_assigned_identities = {
///       "key16" = {
///         client_id    = "aaaa"
///         principal_id = "aaaaaaaaaaaaaaa"
///       }
///     }
///   }
///   is_panorama_managed = "TRUE"
///   location            = "eastus"
///   marketplace_details = {
///     marketplace_subscription_status = "PendingFulfillmentStart"
///     offer_id                        = "liftr-pan-ame-test"
///     publisher_id                    = "isvtestuklegacy"
///   }
///   network_profile = {
///     egress_nat_ip = [{
///       "address"    = "20.22.92.111"
///       "resourceId" = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1"
///     }]
///     enable_egress_nat                    = "ENABLED"
///     network_type                         = "VNET"
///     private_source_nat_rules_destination = ["20.22.92.11"]
///     public_ips = [{
///       "address"    = "20.22.92.11"
///       "resourceId" = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1"
///     }]
///     trusted_ranges = ["20.22.92.11"]
///     vnet_configuration = {
///       ip_of_trust_subnet_for_udr = {
///         address     = "10.1.1.0/24"
///         resource_id = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"
///       }
///       trust_subnet = {
///         address_space = "10.1.1.0/24"
///         resource_id   = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet"
///       }
///       un_trust_subnet = {
///         address_space = "10.1.1.0/24"
///         resource_id   = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"
///       }
///       vnet = {
///         address_space = "10.1.0.0/16"
///         resource_id   = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet"
///       }
///     }
///     vwan_configuration = {
///       ip_of_trust_subnet_for_udr = {
///         address     = "10.1.1.0/24"
///         resource_id = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"
///       }
///       network_virtual_appliance_id = "2bf4a339-294d-4c25-b0b2-ef649e9f5c12"
///       trust_subnet = {
///         address_space = "10.1.1.0/24"
///         resource_id   = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet"
///       }
///       un_trust_subnet = {
///         address_space = "10.1.1.0/24"
///         resource_id   = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"
///       }
///       v_hub = {
///         address_space = "10.1.1.0/24"
///         resource_id   = "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet"
///       }
///     }
///   }
///   pan_etag = "2bf4a339-294d-4c25-b0b2-ef649e9f5c12"
///   panorama_config = {
///     config_string = "bas64EncodedString"
///   }
///   plan_data = {
///     billing_cycle = "MONTHLY"
///     plan_id       = "liftrpantestplan"
///     usage_type    = "PAYG"
///   }
///   resource_group_name = "firewall-rg"
///   tags = {
///     "tagName" = "value"
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
/// import com.pulumi.azurenative.cloudngfw.Firewall;
/// import com.pulumi.azurenative.cloudngfw.FirewallArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.RulestackDetailsArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.DNSSettingsArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.FrontendSettingArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.EndpointConfigurationArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.IPAddressArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.AzureResourceManagerManagedIdentityPropertiesArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.MarketplaceDetailsArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.VnetConfigurationArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.IPAddressSpaceArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.VwanConfigurationArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.PanoramaConfigArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.PlanDataArgs;
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
///         var firewall = new Firewall("firewall", FirewallArgs.builder()
///             .associatedRulestack(RulestackDetailsArgs.builder()
///                 .location("eastus")
///                 .resourceId("lrs1")
///                 .rulestackId("PANRSID")
///                 .build())
///             .dnsSettings(DNSSettingsArgs.builder()
///                 .dnsServers(IPAddressArgs.builder()
///                     .address("20.22.92.111")
///                     .resourceId("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1")
///                     .build())
///                 .enableDnsProxy("DISABLED")
///                 .enabledDnsType("CUSTOM")
///                 .build())
///             .firewallName("firewall1")
///             .frontEndSettings(FrontendSettingArgs.builder()
///                 .backendConfiguration(EndpointConfigurationArgs.builder()
///                     .address(IPAddressArgs.builder()
///                         .address("20.22.32.136")
///                         .resourceId("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp2")
///                         .build())
///                     .port("80")
///                     .build())
///                 .frontendConfiguration(EndpointConfigurationArgs.builder()
///                     .address(IPAddressArgs.builder()
///                         .address("20.22.91.251")
///                         .resourceId("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp1")
///                         .build())
///                     .port("80")
///                     .build())
///                 .name("frontendsetting11")
///                 .protocol("TCP")
///                 .build())
///             .identity(AzureResourceManagerManagedIdentityPropertiesArgs.builder()
///                 .type("None")
///                 .userAssignedIdentities(Map.of("key16", AzureResourceManagerUserAssignedIdentityArgs.builder()
///                     .clientId("aaaa")
///                     .principalId("aaaaaaaaaaaaaaa")
///                     .build()))
///                 .build())
///             .isPanoramaManaged("TRUE")
///             .location("eastus")
///             .marketplaceDetails(MarketplaceDetailsArgs.builder()
///                 .marketplaceSubscriptionStatus("PendingFulfillmentStart")
///                 .offerId("liftr-pan-ame-test")
///                 .publisherId("isvtestuklegacy")
///                 .build())
///             .networkProfile(NetworkProfileArgs.builder()
///                 .egressNatIp(IPAddressArgs.builder()
///                     .address("20.22.92.111")
///                     .resourceId("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1")
///                     .build())
///                 .enableEgressNat("ENABLED")
///                 .networkType("VNET")
///                 .privateSourceNatRulesDestination("20.22.92.11")
///                 .publicIps(IPAddressArgs.builder()
///                     .address("20.22.92.11")
///                     .resourceId("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1")
///                     .build())
///                 .trustedRanges("20.22.92.11")
///                 .vnetConfiguration(VnetConfigurationArgs.builder()
///                     .ipOfTrustSubnetForUdr(IPAddressArgs.builder()
///                         .address("10.1.1.0/24")
///                         .resourceId("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet")
///                         .build())
///                     .trustSubnet(IPAddressSpaceArgs.builder()
///                         .addressSpace("10.1.1.0/24")
///                         .resourceId("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet")
///                         .build())
///                     .unTrustSubnet(IPAddressSpaceArgs.builder()
///                         .addressSpace("10.1.1.0/24")
///                         .resourceId("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet")
///                         .build())
///                     .vnet(IPAddressSpaceArgs.builder()
///                         .addressSpace("10.1.0.0/16")
///                         .resourceId("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet")
///                         .build())
///                     .build())
///                 .vwanConfiguration(VwanConfigurationArgs.builder()
///                     .ipOfTrustSubnetForUdr(IPAddressArgs.builder()
///                         .address("10.1.1.0/24")
///                         .resourceId("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet")
///                         .build())
///                     .networkVirtualApplianceId("2bf4a339-294d-4c25-b0b2-ef649e9f5c12")
///                     .trustSubnet(IPAddressSpaceArgs.builder()
///                         .addressSpace("10.1.1.0/24")
///                         .resourceId("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet")
///                         .build())
///                     .unTrustSubnet(IPAddressSpaceArgs.builder()
///                         .addressSpace("10.1.1.0/24")
///                         .resourceId("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet")
///                         .build())
///                     .vHub(IPAddressSpaceArgs.builder()
///                         .addressSpace("10.1.1.0/24")
///                         .resourceId("/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet")
///                         .build())
///                     .build())
///                 .build())
///             .panEtag("2bf4a339-294d-4c25-b0b2-ef649e9f5c12")
///             .panoramaConfig(PanoramaConfigArgs.builder()
///                 .configString("bas64EncodedString")
///                 .build())
///             .planData(PlanDataArgs.builder()
///                 .billingCycle("MONTHLY")
///                 .planId("liftrpantestplan")
///                 .usageType("PAYG")
///                 .build())
///             .resourceGroupName("firewall-rg")
///             .tags(Map.of("tagName", "value"))
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
/// const firewall = new azure_native.cloudngfw.Firewall("firewall", {
///     associatedRulestack: {
///         location: "eastus",
///         resourceId: "lrs1",
///         rulestackId: "PANRSID",
///     },
///     dnsSettings: {
///         dnsServers: [{
///             address: "20.22.92.111",
///             resourceId: "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1",
///         }],
///         enableDnsProxy: azure_native.cloudngfw.DNSProxy.DISABLED,
///         enabledDnsType: azure_native.cloudngfw.EnabledDNSType.CUSTOM,
///     },
///     firewallName: "firewall1",
///     frontEndSettings: [{
///         backendConfiguration: {
///             address: {
///                 address: "20.22.32.136",
///                 resourceId: "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp2",
///             },
///             port: "80",
///         },
///         frontendConfiguration: {
///             address: {
///                 address: "20.22.91.251",
///                 resourceId: "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp1",
///             },
///             port: "80",
///         },
///         name: "frontendsetting11",
///         protocol: azure_native.cloudngfw.ProtocolType.TCP,
///     }],
///     identity: {
///         type: azure_native.cloudngfw.ManagedIdentityType.None,
///         userAssignedIdentities: {
///             key16: {
///                 clientId: "aaaa",
///                 principalId: "aaaaaaaaaaaaaaa",
///             },
///         },
///     },
///     isPanoramaManaged: azure_native.cloudngfw.BooleanEnum.TRUE,
///     location: "eastus",
///     marketplaceDetails: {
///         marketplaceSubscriptionStatus: azure_native.cloudngfw.MarketplaceSubscriptionStatus.PendingFulfillmentStart,
///         offerId: "liftr-pan-ame-test",
///         publisherId: "isvtestuklegacy",
///     },
///     networkProfile: {
///         egressNatIp: [{
///             address: "20.22.92.111",
///             resourceId: "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1",
///         }],
///         enableEgressNat: azure_native.cloudngfw.EgressNat.ENABLED,
///         networkType: azure_native.cloudngfw.NetworkType.VNET,
///         privateSourceNatRulesDestination: ["20.22.92.11"],
///         publicIps: [{
///             address: "20.22.92.11",
///             resourceId: "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1",
///         }],
///         trustedRanges: ["20.22.92.11"],
///         vnetConfiguration: {
///             ipOfTrustSubnetForUdr: {
///                 address: "10.1.1.0/24",
///                 resourceId: "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///             trustSubnet: {
///                 addressSpace: "10.1.1.0/24",
///                 resourceId: "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet",
///             },
///             unTrustSubnet: {
///                 addressSpace: "10.1.1.0/24",
///                 resourceId: "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///             vnet: {
///                 addressSpace: "10.1.0.0/16",
///                 resourceId: "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet",
///             },
///         },
///         vwanConfiguration: {
///             ipOfTrustSubnetForUdr: {
///                 address: "10.1.1.0/24",
///                 resourceId: "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///             networkVirtualApplianceId: "2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///             trustSubnet: {
///                 addressSpace: "10.1.1.0/24",
///                 resourceId: "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet",
///             },
///             unTrustSubnet: {
///                 addressSpace: "10.1.1.0/24",
///                 resourceId: "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///             vHub: {
///                 addressSpace: "10.1.1.0/24",
///                 resourceId: "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///         },
///     },
///     panEtag: "2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///     panoramaConfig: {
///         configString: "bas64EncodedString",
///     },
///     planData: {
///         billingCycle: azure_native.cloudngfw.BillingCycle.MONTHLY,
///         planId: "liftrpantestplan",
///         usageType: azure_native.cloudngfw.UsageType.PAYG,
///     },
///     resourceGroupName: "firewall-rg",
///     tags: {
///         tagName: "value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall = azure_native.cloudngfw.Firewall("firewall",
///     associated_rulestack={
///         "location": "eastus",
///         "resource_id": "lrs1",
///         "rulestack_id": "PANRSID",
///     },
///     dns_settings={
///         "dns_servers": [{
///             "address": "20.22.92.111",
///             "resource_id": "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1",
///         }],
///         "enable_dns_proxy": azure_native.cloudngfw.DNSProxy.DISABLED,
///         "enabled_dns_type": azure_native.cloudngfw.EnabledDNSType.CUSTOM,
///     },
///     firewall_name="firewall1",
///     front_end_settings=[{
///         "backend_configuration": {
///             "address": {
///                 "address": "20.22.32.136",
///                 "resource_id": "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp2",
///             },
///             "port": "80",
///         },
///         "frontend_configuration": {
///             "address": {
///                 "address": "20.22.91.251",
///                 "resource_id": "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp1",
///             },
///             "port": "80",
///         },
///         "name": "frontendsetting11",
///         "protocol": azure_native.cloudngfw.ProtocolType.TCP,
///     }],
///     identity={
///         "type": azure_native.cloudngfw.ManagedIdentityType.NONE,
///         "user_assigned_identities": {
///             "key16": {
///                 "client_id": "aaaa",
///                 "principal_id": "aaaaaaaaaaaaaaa",
///             },
///         },
///     },
///     is_panorama_managed=azure_native.cloudngfw.BooleanEnum.TRUE,
///     location="eastus",
///     marketplace_details={
///         "marketplace_subscription_status": azure_native.cloudngfw.MarketplaceSubscriptionStatus.PENDING_FULFILLMENT_START,
///         "offer_id": "liftr-pan-ame-test",
///         "publisher_id": "isvtestuklegacy",
///     },
///     network_profile={
///         "egress_nat_ip": [{
///             "address": "20.22.92.111",
///             "resource_id": "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1",
///         }],
///         "enable_egress_nat": azure_native.cloudngfw.EgressNat.ENABLED,
///         "network_type": azure_native.cloudngfw.NetworkType.VNET,
///         "private_source_nat_rules_destination": ["20.22.92.11"],
///         "public_ips": [{
///             "address": "20.22.92.11",
///             "resource_id": "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1",
///         }],
///         "trusted_ranges": ["20.22.92.11"],
///         "vnet_configuration": {
///             "ip_of_trust_subnet_for_udr": {
///                 "address": "10.1.1.0/24",
///                 "resource_id": "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///             "trust_subnet": {
///                 "address_space": "10.1.1.0/24",
///                 "resource_id": "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet",
///             },
///             "un_trust_subnet": {
///                 "address_space": "10.1.1.0/24",
///                 "resource_id": "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///             "vnet": {
///                 "address_space": "10.1.0.0/16",
///                 "resource_id": "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet",
///             },
///         },
///         "vwan_configuration": {
///             "ip_of_trust_subnet_for_udr": {
///                 "address": "10.1.1.0/24",
///                 "resource_id": "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///             "network_virtual_appliance_id": "2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///             "trust_subnet": {
///                 "address_space": "10.1.1.0/24",
///                 "resource_id": "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet",
///             },
///             "un_trust_subnet": {
///                 "address_space": "10.1.1.0/24",
///                 "resource_id": "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///             "v_hub": {
///                 "address_space": "10.1.1.0/24",
///                 "resource_id": "/subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet",
///             },
///         },
///     },
///     pan_etag="2bf4a339-294d-4c25-b0b2-ef649e9f5c12",
///     panorama_config={
///         "config_string": "bas64EncodedString",
///     },
///     plan_data={
///         "billing_cycle": azure_native.cloudngfw.BillingCycle.MONTHLY,
///         "plan_id": "liftrpantestplan",
///         "usage_type": azure_native.cloudngfw.UsageType.PAYG,
///     },
///     resource_group_name="firewall-rg",
///     tags={
///         "tagName": "value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   firewall:
///     type: azure-native:cloudngfw:Firewall
///     properties:
///       associatedRulestack:
///         location: eastus
///         resourceId: lrs1
///         rulestackId: PANRSID
///       dnsSettings:
///         dnsServers:
///           - address: 20.22.92.111
///             resourceId: /subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1
///         enableDnsProxy: DISABLED
///         enabledDnsType: CUSTOM
///       firewallName: firewall1
///       frontEndSettings:
///         - backendConfiguration:
///             address:
///               address: 20.22.32.136
///               resourceId: /subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp2
///             port: '80'
///           frontendConfiguration:
///             address:
///               address: 20.22.91.251
///               resourceId: /subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-frontendSettingIp1
///             port: '80'
///           name: frontendsetting11
///           protocol: TCP
///       identity:
///         type: None
///         userAssignedIdentities:
///           key16:
///             clientId: aaaa
///             principalId: aaaaaaaaaaaaaaa
///       isPanoramaManaged: TRUE
///       location: eastus
///       marketplaceDetails:
///         marketplaceSubscriptionStatus: PendingFulfillmentStart
///         offerId: liftr-pan-ame-test
///         publisherId: isvtestuklegacy
///       networkProfile:
///         egressNatIp:
///           - address: 20.22.92.111
///             resourceId: /subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-egressNatIp1
///         enableEgressNat: ENABLED
///         networkType: VNET
///         privateSourceNatRulesDestination:
///           - 20.22.92.11
///         publicIps:
///           - address: 20.22.92.11
///             resourceId: /subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1
///         trustedRanges:
///           - 20.22.92.11
///         vnetConfiguration:
///           ipOfTrustSubnetForUdr:
///             address: 10.1.1.0/24
///             resourceId: /subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet
///           trustSubnet:
///             addressSpace: 10.1.1.0/24
///             resourceId: /subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet
///           unTrustSubnet:
///             addressSpace: 10.1.1.0/24
///             resourceId: /subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet
///           vnet:
///             addressSpace: 10.1.0.0/16
///             resourceId: /subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet
///         vwanConfiguration:
///           ipOfTrustSubnetForUdr:
///             address: 10.1.1.0/24
///             resourceId: /subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet
///           networkVirtualApplianceId: 2bf4a339-294d-4c25-b0b2-ef649e9f5c12
///           trustSubnet:
///             addressSpace: 10.1.1.0/24
///             resourceId: /subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-trust-subnet
///           unTrustSubnet:
///             addressSpace: 10.1.1.0/24
///             resourceId: /subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet
///           vHub:
///             addressSpace: 10.1.1.0/24
///             resourceId: /subscriptions/2bf4a339-294d-4c25-b0b2-ef649e9f5c27/resourceGroups/os-liftr-integration/providers/Microsoft.Network/virtualNetworks/os-liftr-integration-vnet/subnets/os-liftr-integration-untrust-subnet
///       panEtag: 2bf4a339-294d-4c25-b0b2-ef649e9f5c12
///       panoramaConfig:
///         configString: bas64EncodedString
///       planData:
///         billingCycle: MONTHLY
///         planId: liftrpantestplan
///         usageType: PAYG
///       resourceGroupName: firewall-rg
///       tags:
///         tagName: value
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Firewalls_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewall = new AzureNative.Cloudngfw.Firewall("firewall", new()
///     {
///         DnsSettings = null,
///         FirewallName = "firewall1",
///         Location = "eastus",
///         MarketplaceDetails = new AzureNative.Cloudngfw.Inputs.MarketplaceDetailsArgs
///         {
///             OfferId = "liftr-pan-ame-test",
///             PublisherId = "isvtestuklegacy",
///         },
///         NetworkProfile = new AzureNative.Cloudngfw.Inputs.NetworkProfileArgs
///         {
///             EnableEgressNat = AzureNative.Cloudngfw.EgressNat.ENABLED,
///             NetworkType = AzureNative.Cloudngfw.NetworkType.VNET,
///             PublicIps = new[]
///             {
///                 new AzureNative.Cloudngfw.Inputs.IPAddressArgs
///                 {
///                     Address = "20.22.92.11",
///                     ResourceId = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1",
///                 },
///             },
///         },
///         PlanData = new AzureNative.Cloudngfw.Inputs.PlanDataArgs
///         {
///             BillingCycle = AzureNative.Cloudngfw.BillingCycle.MONTHLY,
///             PlanId = "liftrpantestplan",
///         },
///         ResourceGroupName = "firewall-rg",
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
/// 	cloudngfw "github.com/pulumi/pulumi-azure-native-sdk/cloudngfw/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudngfw.NewFirewall(ctx, "firewall", &cloudngfw.FirewallArgs{
/// 			DnsSettings:  &cloudngfw.DNSSettingsArgs{},
/// 			FirewallName: pulumi.String("firewall1"),
/// 			Location:     pulumi.String("eastus"),
/// 			MarketplaceDetails: &cloudngfw.MarketplaceDetailsArgs{
/// 				OfferId:     pulumi.String("liftr-pan-ame-test"),
/// 				PublisherId: pulumi.String("isvtestuklegacy"),
/// 			},
/// 			NetworkProfile: &cloudngfw.NetworkProfileArgs{
/// 				EnableEgressNat: pulumi.String(cloudngfw.EgressNatENABLED),
/// 				NetworkType:     pulumi.String(cloudngfw.NetworkTypeVNET),
/// 				PublicIps: cloudngfw.IPAddressArray{
/// 					&cloudngfw.IPAddressArgs{
/// 						Address:    pulumi.String("20.22.92.11"),
/// 						ResourceId: pulumi.String("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1"),
/// 					},
/// 				},
/// 			},
/// 			PlanData: &cloudngfw.PlanDataArgs{
/// 				BillingCycle: pulumi.String(cloudngfw.BillingCycleMONTHLY),
/// 				PlanId:       pulumi.String("liftrpantestplan"),
/// 			},
/// 			ResourceGroupName: pulumi.String("firewall-rg"),
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
/// resource "azure-native_cloudngfw_firewall" "firewall" {
///   dns_settings  = {}
///   firewall_name = "firewall1"
///   location      = "eastus"
///   marketplace_details = {
///     offer_id     = "liftr-pan-ame-test"
///     publisher_id = "isvtestuklegacy"
///   }
///   network_profile = {
///     enable_egress_nat = "ENABLED"
///     network_type      = "VNET"
///     public_ips = [{
///       "address"    = "20.22.92.11"
///       "resourceId" = "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1"
///     }]
///   }
///   plan_data = {
///     billing_cycle = "MONTHLY"
///     plan_id       = "liftrpantestplan"
///   }
///   resource_group_name = "firewall-rg"
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
/// import com.pulumi.azurenative.cloudngfw.Firewall;
/// import com.pulumi.azurenative.cloudngfw.FirewallArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.DNSSettingsArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.MarketplaceDetailsArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.cloudngfw.inputs.PlanDataArgs;
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
///         var firewall = new Firewall("firewall", FirewallArgs.builder()
///             .dnsSettings(DNSSettingsArgs.builder()
///                 .build())
///             .firewallName("firewall1")
///             .location("eastus")
///             .marketplaceDetails(MarketplaceDetailsArgs.builder()
///                 .offerId("liftr-pan-ame-test")
///                 .publisherId("isvtestuklegacy")
///                 .build())
///             .networkProfile(NetworkProfileArgs.builder()
///                 .enableEgressNat("ENABLED")
///                 .networkType("VNET")
///                 .publicIps(IPAddressArgs.builder()
///                     .address("20.22.92.11")
///                     .resourceId("/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1")
///                     .build())
///                 .build())
///             .planData(PlanDataArgs.builder()
///                 .billingCycle("MONTHLY")
///                 .planId("liftrpantestplan")
///                 .build())
///             .resourceGroupName("firewall-rg")
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
/// const firewall = new azure_native.cloudngfw.Firewall("firewall", {
///     dnsSettings: {},
///     firewallName: "firewall1",
///     location: "eastus",
///     marketplaceDetails: {
///         offerId: "liftr-pan-ame-test",
///         publisherId: "isvtestuklegacy",
///     },
///     networkProfile: {
///         enableEgressNat: azure_native.cloudngfw.EgressNat.ENABLED,
///         networkType: azure_native.cloudngfw.NetworkType.VNET,
///         publicIps: [{
///             address: "20.22.92.11",
///             resourceId: "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1",
///         }],
///     },
///     planData: {
///         billingCycle: azure_native.cloudngfw.BillingCycle.MONTHLY,
///         planId: "liftrpantestplan",
///     },
///     resourceGroupName: "firewall-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall = azure_native.cloudngfw.Firewall("firewall",
///     dns_settings={},
///     firewall_name="firewall1",
///     location="eastus",
///     marketplace_details={
///         "offer_id": "liftr-pan-ame-test",
///         "publisher_id": "isvtestuklegacy",
///     },
///     network_profile={
///         "enable_egress_nat": azure_native.cloudngfw.EgressNat.ENABLED,
///         "network_type": azure_native.cloudngfw.NetworkType.VNET,
///         "public_ips": [{
///             "address": "20.22.92.11",
///             "resource_id": "/subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1",
///         }],
///     },
///     plan_data={
///         "billing_cycle": azure_native.cloudngfw.BillingCycle.MONTHLY,
///         "plan_id": "liftrpantestplan",
///     },
///     resource_group_name="firewall-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   firewall:
///     type: azure-native:cloudngfw:Firewall
///     properties:
///       dnsSettings: {}
///       firewallName: firewall1
///       location: eastus
///       marketplaceDetails:
///         offerId: liftr-pan-ame-test
///         publisherId: isvtestuklegacy
///       networkProfile:
///         enableEgressNat: ENABLED
///         networkType: VNET
///         publicIps:
///           - address: 20.22.92.11
///             resourceId: /subscriptions/01c7d41f-afaf-464e-8a8b-5c6f9f98cee8/resourceGroups/mj-liftr-integration/providers/Microsoft.Network/publicIPAddresses/mj-liftr-integration-PublicIp1
///       planData:
///         billingCycle: MONTHLY
///         planId: liftrpantestplan
///       resourceGroupName: firewall-rg
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
/// $ pulumi import azure-native:cloudngfw:Firewall armid1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/PaloAltoNetworks.Cloudngfw/firewalls/{firewallName}
/// ```
class Firewall extends pulumi.CustomResource {
  /// Associated Rulestack
  late final pulumi.Output<RulestackDetailsResponse?> associatedRulestack;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// DNS settings for Firewall
  late final pulumi.Output<DNSSettingsResponse> dnsSettings;
  /// Frontend settings for Firewall
  late final pulumi.Output<List<Map<String, dynamic>>?> frontEndSettings;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedIdentityPropertiesResponse?> identity;
  /// Panorama Managed: Default is False. Default will be CloudSec managed
  late final pulumi.Output<String?> isPanoramaManaged;
  /// Strata Cloud Managed: Default is False. Default will be CloudSec managed
  late final pulumi.Output<String?> isStrataCloudManaged;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Marketplace details
  late final pulumi.Output<MarketplaceDetailsResponse> marketplaceDetails;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network settings
  late final pulumi.Output<NetworkProfileResponse> networkProfile;
  /// panEtag info
  late final pulumi.Output<String?> panEtag;
  /// Panorama Configuration
  late final pulumi.Output<PanoramaConfigResponse?> panoramaConfig;
  /// Billing plan information.
  late final pulumi.Output<PlanDataResponse> planData;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Strata Cloud Manager Configuration, only applicable if Strata Cloud Manager is selected.
  late final pulumi.Output<StrataCloudManagerConfigResponse?> strataCloudManagerConfig;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Firewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firewall]. {@macro pulumi_cloudngfw_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firewall(
    String name, {
    FirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cloudngfw:Firewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedRulestack = registerOutput<RulestackDetailsResponse?>('associatedRulestack', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RulestackDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dnsSettings = registerOutput<DNSSettingsResponse>('dnsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DNSSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    frontEndSettings = registerOutput<List<Map<String, dynamic>>?>('frontEndSettings');
    identity = registerOutput<ManagedIdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedIdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isPanoramaManaged = registerOutput<String?>('isPanoramaManaged');
    isStrataCloudManaged = registerOutput<String?>('isStrataCloudManaged');
    location = registerOutput<String>('location');
    marketplaceDetails = registerOutput<MarketplaceDetailsResponse>('marketplaceDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MarketplaceDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NetworkProfileResponse>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    panEtag = registerOutput<String?>('panEtag');
    panoramaConfig = registerOutput<PanoramaConfigResponse?>('panoramaConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PanoramaConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    planData = registerOutput<PlanDataResponse>('planData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    strataCloudManagerConfig = registerOutput<StrataCloudManagerConfigResponse?>('strataCloudManagerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StrataCloudManagerConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
