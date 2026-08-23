import 'package:pulumi/pulumi.dart' as pulumi;
import 'cname_record_response.dart';
import 'record_set_args.dart';
import 'soa_record_response.dart';
import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Describes a DNS record set (a collection of DNS records with the same name and type).
///
/// Uses Azure REST API version 2023-07-01-preview.
///
/// Other available API versions: 2015-05-04-preview, 2016-04-01, 2017-09-01, 2017-10-01, 2018-03-01-preview, 2018-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dns [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create A recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         ARecords = new[]
///         {
///             new AzureNative.Dns.Inputs.ARecordArgs
///             {
///                 Ipv4Address = "127.0.0.1",
///             },
///         },
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "A",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			ARecords: dns.ARecordArray{
/// 				&dns.ARecordArgs{
/// 					Ipv4Address: pulumi.String("127.0.0.1"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("A"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   a_records {
///     ipv4_address = "127.0.0.1"
///   }
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "A"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.ARecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .aRecords(ARecordArgs.builder()
///                 .ipv4Address("127.0.0.1")
///                 .build())
///             .metadata(Map.of("key1", "value1"))
///             .recordType("A")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     aRecords: [{
///         ipv4Address: "127.0.0.1",
///     }],
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "A",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     a_records=[{
///         "ipv4_address": "127.0.0.1",
///     }],
///     metadata={
///         "key1": "value1",
///     },
///     record_type="A",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       aRecords:
///         - ipv4Address: 127.0.0.1
///       metadata:
///         key1: value1
///       recordType: A
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create A recordset with alias target resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "A",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         TargetResource = new AzureNative.Dns.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2",
///         },
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("A"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			TargetResource: &dns.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2"),
/// 			},
/// 			Ttl:      pulumi.Float64(3600),
/// 			ZoneName: pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "A"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   target_resource = {
///     id = "/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2"
///   }
///   ttl       = 3600
///   zone_name = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.SubResourceArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .recordType("A")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .targetResource(SubResourceArgs.builder()
///                 .id("/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2")
///                 .build())
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "A",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     targetResource: {
///         id: "/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2",
///     },
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     record_type="A",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     target_resource={
///         "id": "/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2",
///     },
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       recordType: A
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       targetResource:
///         id: /subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create A recordset with traffic management profile
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "A",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         TrafficManagementProfile = new AzureNative.Dns.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2",
///         },
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("A"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			TrafficManagementProfile: &dns.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2"),
/// 			},
/// 			Ttl:      pulumi.Float64(3600),
/// 			ZoneName: pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "A"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   traffic_management_profile = {
///     id = "/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2"
///   }
///   ttl       = 3600
///   zone_name = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.SubResourceArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .recordType("A")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .trafficManagementProfile(SubResourceArgs.builder()
///                 .id("/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2")
///                 .build())
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "A",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     trafficManagementProfile: {
///         id: "/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2",
///     },
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     record_type="A",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     traffic_management_profile={
///         "id": "/subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2",
///     },
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       recordType: A
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       trafficManagementProfile:
///         id: /subscriptions/726f8cd6-6459-4db4-8e6d-2cd2716904e2/resourceGroups/test/providers/Microsoft.Network/trafficManagerProfiles/testpp2
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create AAAA recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         AaaaRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.AaaaRecordArgs
///             {
///                 Ipv6Address = "::1",
///             },
///         },
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "AAAA",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			AaaaRecords: dns.AaaaRecordArray{
/// 				&dns.AaaaRecordArgs{
/// 					Ipv6Address: pulumi.String("::1"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("AAAA"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   aaaa_records {
///     ipv6_address = "::1"
///   }
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "AAAA"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.AaaaRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .aaaaRecords(AaaaRecordArgs.builder()
///                 .ipv6Address("::1")
///                 .build())
///             .metadata(Map.of("key1", "value1"))
///             .recordType("AAAA")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     aaaaRecords: [{
///         ipv6Address: "::1",
///     }],
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "AAAA",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     aaaa_records=[{
///         "ipv6_address": "::1",
///     }],
///     metadata={
///         "key1": "value1",
///     },
///     record_type="AAAA",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       aaaaRecords:
///         - ipv6Address: ::1
///       metadata:
///         key1: value1
///       recordType: AAAA
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create CAA recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         CaaRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.CaaRecordArgs
///             {
///                 Flags = 0,
///                 Tag = "issue",
///                 Value = "ca.contoso.com",
///             },
///         },
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "CAA",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			CaaRecords: dns.CaaRecordArray{
/// 				&dns.CaaRecordArgs{
/// 					Flags: pulumi.Int(0),
/// 					Tag:   pulumi.String("issue"),
/// 					Value: pulumi.String("ca.contoso.com"),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("CAA"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   caa_records {
///     flags = 0
///     tag   = "issue"
///     value = "ca.contoso.com"
///   }
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "CAA"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.CaaRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .caaRecords(CaaRecordArgs.builder()
///                 .flags(0)
///                 .tag("issue")
///                 .value("ca.contoso.com")
///                 .build())
///             .metadata(Map.of("key1", "value1"))
///             .recordType("CAA")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     caaRecords: [{
///         flags: 0,
///         tag: "issue",
///         value: "ca.contoso.com",
///     }],
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "CAA",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     caa_records=[{
///         "flags": 0,
///         "tag": "issue",
///         "value": "ca.contoso.com",
///     }],
///     metadata={
///         "key1": "value1",
///     },
///     record_type="CAA",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       caaRecords:
///         - flags: 0
///           tag: issue
///           value: ca.contoso.com
///       metadata:
///         key1: value1
///       recordType: CAA
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create CNAME recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         CnameRecord = new AzureNative.Dns.Inputs.CnameRecordArgs
///         {
///             Cname = "contoso.com",
///         },
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "CNAME",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			CnameRecord: &dns.CnameRecordArgs{
/// 				Cname: pulumi.String("contoso.com"),
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("CNAME"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   cname_record = {
///     cname = "contoso.com"
///   }
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "CNAME"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.CnameRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .cnameRecord(CnameRecordArgs.builder()
///                 .cname("contoso.com")
///                 .build())
///             .metadata(Map.of("key1", "value1"))
///             .recordType("CNAME")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     cnameRecord: {
///         cname: "contoso.com",
///     },
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "CNAME",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     cname_record={
///         "cname": "contoso.com",
///     },
///     metadata={
///         "key1": "value1",
///     },
///     record_type="CNAME",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       cnameRecord:
///         cname: contoso.com
///       metadata:
///         key1: value1
///       recordType: CNAME
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create DS recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         DsRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.DsRecordArgs
///             {
///                 Algorithm = 5,
///                 Digest = new AzureNative.Dns.Inputs.DigestArgs
///                 {
///                     AlgorithmType = 1,
///                     Value = "2BB183AF5F22588179A53B0A98631FAD1A292118",
///                 },
///                 KeyTag = 60485,
///             },
///         },
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "DS",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			DsRecords: dns.DsRecordArray{
/// 				&dns.DsRecordArgs{
/// 					Algorithm: pulumi.Int(5),
/// 					Digest: &dns.DigestArgs{
/// 						AlgorithmType: pulumi.Int(1),
/// 						Value:         pulumi.String("2BB183AF5F22588179A53B0A98631FAD1A292118"),
/// 					},
/// 					KeyTag: pulumi.Int(60485),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("DS"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   ds_records {
///     algorithm = 5
///     digest = {
///       algorithm_type = 1
///       value          = "2BB183AF5F22588179A53B0A98631FAD1A292118"
///     }
///     key_tag = 60485
///   }
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "DS"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.DsRecordArgs;
/// import com.pulumi.azurenative.dns.inputs.DigestArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .dsRecords(DsRecordArgs.builder()
///                 .algorithm(5)
///                 .digest(DigestArgs.builder()
///                     .algorithmType(1)
///                     .value("2BB183AF5F22588179A53B0A98631FAD1A292118")
///                     .build())
///                 .keyTag(60485)
///                 .build())
///             .metadata(Map.of("key1", "value1"))
///             .recordType("DS")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     dsRecords: [{
///         algorithm: 5,
///         digest: {
///             algorithmType: 1,
///             value: "2BB183AF5F22588179A53B0A98631FAD1A292118",
///         },
///         keyTag: 60485,
///     }],
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "DS",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     ds_records=[{
///         "algorithm": 5,
///         "digest": {
///             "algorithm_type": 1,
///             "value": "2BB183AF5F22588179A53B0A98631FAD1A292118",
///         },
///         "key_tag": 60485,
///     }],
///     metadata={
///         "key1": "value1",
///     },
///     record_type="DS",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       dsRecords:
///         - algorithm: 5
///           digest:
///             algorithmType: 1
///             value: 2BB183AF5F22588179A53B0A98631FAD1A292118
///           keyTag: 60485
///       metadata:
///         key1: value1
///       recordType: DS
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create MX recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         MxRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.MxRecordArgs
///             {
///                 Exchange = "mail.contoso.com",
///                 Preference = 0,
///             },
///         },
///         RecordType = "MX",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			MxRecords: dns.MxRecordArray{
/// 				&dns.MxRecordArgs{
/// 					Exchange:   pulumi.String("mail.contoso.com"),
/// 					Preference: pulumi.Int(0),
/// 				},
/// 			},
/// 			RecordType:            pulumi.String("MX"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   mx_records {
///     exchange   = "mail.contoso.com"
///     preference = 0
///   }
///   record_type              = "MX"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.MxRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .mxRecords(MxRecordArgs.builder()
///                 .exchange("mail.contoso.com")
///                 .preference(0)
///                 .build())
///             .recordType("MX")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     mxRecords: [{
///         exchange: "mail.contoso.com",
///         preference: 0,
///     }],
///     recordType: "MX",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     mx_records=[{
///         "exchange": "mail.contoso.com",
///         "preference": 0,
///     }],
///     record_type="MX",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       mxRecords:
///         - exchange: mail.contoso.com
///           preference: 0
///       recordType: MX
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create NAPTR recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         NaptrRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.NaptrRecordArgs
///             {
///                 Flags = "U",
///                 Order = 100,
///                 Preference = 10,
///                 Regexp = "!^.*$!sip:user@example.com!",
///                 Replacement = "",
///                 Services = "E2U+sip",
///             },
///         },
///         RecordType = "NAPTR",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			NaptrRecords: dns.NaptrRecordArray{
/// 				&dns.NaptrRecordArgs{
/// 					Flags:       pulumi.String("U"),
/// 					Order:       pulumi.Int(100),
/// 					Preference:  pulumi.Int(10),
/// 					Regexp:      pulumi.String("!^.*$!sip:user@example.com!"),
/// 					Replacement: pulumi.String(""),
/// 					Services:    pulumi.String("E2U+sip"),
/// 				},
/// 			},
/// 			RecordType:            pulumi.String("NAPTR"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   naptr_records {
///     flags       = "U"
///     order       = 100
///     preference  = 10
///     regexp      = "!^.*$!sip:user@example.com!"
///     replacement = ""
///     services    = "E2U+sip"
///   }
///   record_type              = "NAPTR"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.NaptrRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .naptrRecords(NaptrRecordArgs.builder()
///                 .flags("U")
///                 .order(100)
///                 .preference(10)
///                 .regexp("!^.*$!sip:user@example.com!")
///                 .replacement("")
///                 .services("E2U+sip")
///                 .build())
///             .recordType("NAPTR")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     naptrRecords: [{
///         flags: "U",
///         order: 100,
///         preference: 10,
///         regexp: "!^.*$!sip:user@example.com!",
///         replacement: "",
///         services: "E2U+sip",
///     }],
///     recordType: "NAPTR",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     naptr_records=[{
///         "flags": "U",
///         "order": 100,
///         "preference": 10,
///         "regexp": "!^.*$!sip:user@example.com!",
///         "replacement": "",
///         "services": "E2U+sip",
///     }],
///     record_type="NAPTR",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       naptrRecords:
///         - flags: U
///           order: 100
///           preference: 10
///           regexp: '!^.*$!sip:user@example.com!'
///           replacement: ""
///           services: E2U+sip
///       recordType: NAPTR
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create NS recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         NsRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.NsRecordArgs
///             {
///                 Nsdname = "ns1.contoso.com",
///             },
///         },
///         RecordType = "NS",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			NsRecords: dns.NsRecordArray{
/// 				&dns.NsRecordArgs{
/// 					Nsdname: pulumi.String("ns1.contoso.com"),
/// 				},
/// 			},
/// 			RecordType:            pulumi.String("NS"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   ns_records {
///     nsdname = "ns1.contoso.com"
///   }
///   record_type              = "NS"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.NsRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .nsRecords(NsRecordArgs.builder()
///                 .nsdname("ns1.contoso.com")
///                 .build())
///             .recordType("NS")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     nsRecords: [{
///         nsdname: "ns1.contoso.com",
///     }],
///     recordType: "NS",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     ns_records=[{
///         "nsdname": "ns1.contoso.com",
///     }],
///     record_type="NS",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       nsRecords:
///         - nsdname: ns1.contoso.com
///       recordType: NS
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create PTR recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         PtrRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.PtrRecordArgs
///             {
///                 Ptrdname = "localhost",
///             },
///         },
///         RecordType = "PTR",
///         RelativeRecordSetName = "1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         ZoneName = "0.0.127.in-addr.arpa",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			PtrRecords: dns.PtrRecordArray{
/// 				&dns.PtrRecordArgs{
/// 					Ptrdname: pulumi.String("localhost"),
/// 				},
/// 			},
/// 			RecordType:            pulumi.String("PTR"),
/// 			RelativeRecordSetName: pulumi.String("1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			ZoneName:              pulumi.String("0.0.127.in-addr.arpa"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   ptr_records {
///     ptrdname = "localhost"
///   }
///   record_type              = "PTR"
///   relative_record_set_name = "1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   zone_name                = "0.0.127.in-addr.arpa"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.PtrRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .ptrRecords(PtrRecordArgs.builder()
///                 .ptrdname("localhost")
///                 .build())
///             .recordType("PTR")
///             .relativeRecordSetName("1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .zoneName("0.0.127.in-addr.arpa")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     ptrRecords: [{
///         ptrdname: "localhost",
///     }],
///     recordType: "PTR",
///     relativeRecordSetName: "1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     zoneName: "0.0.127.in-addr.arpa",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     ptr_records=[{
///         "ptrdname": "localhost",
///     }],
///     record_type="PTR",
///     relative_record_set_name="1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     zone_name="0.0.127.in-addr.arpa")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       ptrRecords:
///         - ptrdname: localhost
///       recordType: PTR
///       relativeRecordSetName: '1'
///       resourceGroupName: rg1
///       ttl: 3600
///       zoneName: 0.0.127.in-addr.arpa
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create SOA recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "SOA",
///         RelativeRecordSetName = "@",
///         ResourceGroupName = "rg1",
///         SoaRecord = new AzureNative.Dns.Inputs.SoaRecordArgs
///         {
///             Email = "hostmaster.contoso.com",
///             ExpireTime = 2419200,
///             Host = "ns1.contoso.com",
///             MinimumTtl = 300,
///             RefreshTime = 3600,
///             RetryTime = 300,
///             SerialNumber = 1,
///         },
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("SOA"),
/// 			RelativeRecordSetName: pulumi.String("@"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			SoaRecord: &dns.SoaRecordArgs{
/// 				Email:        pulumi.String("hostmaster.contoso.com"),
/// 				ExpireTime:   pulumi.Float64(2419200),
/// 				Host:         pulumi.String("ns1.contoso.com"),
/// 				MinimumTtl:   pulumi.Float64(300),
/// 				RefreshTime:  pulumi.Float64(3600),
/// 				RetryTime:    pulumi.Float64(300),
/// 				SerialNumber: pulumi.Float64(1),
/// 			},
/// 			Ttl:      pulumi.Float64(3600),
/// 			ZoneName: pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "SOA"
///   relative_record_set_name = "@"
///   resource_group_name      = "rg1"
///   soa_record = {
///     email         = "hostmaster.contoso.com"
///     expire_time   = 2419200
///     host          = "ns1.contoso.com"
///     minimum_ttl   = 300
///     refresh_time  = 3600
///     retry_time    = 300
///     serial_number = 1
///   }
///   ttl       = 3600
///   zone_name = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.SoaRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .recordType("SOA")
///             .relativeRecordSetName("@")
///             .resourceGroupName("rg1")
///             .soaRecord(SoaRecordArgs.builder()
///                 .email("hostmaster.contoso.com")
///                 .expireTime(2419200.0)
///                 .host("ns1.contoso.com")
///                 .minimumTtl(300.0)
///                 .refreshTime(3600.0)
///                 .retryTime(300.0)
///                 .serialNumber(1.0)
///                 .build())
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "SOA",
///     relativeRecordSetName: "@",
///     resourceGroupName: "rg1",
///     soaRecord: {
///         email: "hostmaster.contoso.com",
///         expireTime: 2419200,
///         host: "ns1.contoso.com",
///         minimumTtl: 300,
///         refreshTime: 3600,
///         retryTime: 300,
///         serialNumber: 1,
///     },
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     record_type="SOA",
///     relative_record_set_name="@",
///     resource_group_name="rg1",
///     soa_record={
///         "email": "hostmaster.contoso.com",
///         "expire_time": float(2419200),
///         "host": "ns1.contoso.com",
///         "minimum_ttl": float(300),
///         "refresh_time": float(3600),
///         "retry_time": float(300),
///         "serial_number": float(1),
///     },
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       recordType: SOA
///       relativeRecordSetName: '@'
///       resourceGroupName: rg1
///       soaRecord:
///         email: hostmaster.contoso.com
///         expireTime: 2.4192e+06
///         host: ns1.contoso.com
///         minimumTtl: 300
///         refreshTime: 3600
///         retryTime: 300
///         serialNumber: 1
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create SRV recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "SRV",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         SrvRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.SrvRecordArgs
///             {
///                 Port = 80,
///                 Priority = 0,
///                 Target = "contoso.com",
///                 Weight = 10,
///             },
///         },
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("SRV"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			SrvRecords: dns.SrvRecordArray{
/// 				&dns.SrvRecordArgs{
/// 					Port:     pulumi.Int(80),
/// 					Priority: pulumi.Int(0),
/// 					Target:   pulumi.String("contoso.com"),
/// 					Weight:   pulumi.Int(10),
/// 				},
/// 			},
/// 			Ttl:      pulumi.Float64(3600),
/// 			ZoneName: pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "SRV"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   srv_records {
///     port     = 80
///     priority = 0
///     target   = "contoso.com"
///     weight   = 10
///   }
///   ttl       = 3600
///   zone_name = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.SrvRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .recordType("SRV")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .srvRecords(SrvRecordArgs.builder()
///                 .port(80)
///                 .priority(0)
///                 .target("contoso.com")
///                 .weight(10)
///                 .build())
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "SRV",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     srvRecords: [{
///         port: 80,
///         priority: 0,
///         target: "contoso.com",
///         weight: 10,
///     }],
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     record_type="SRV",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     srv_records=[{
///         "port": 80,
///         "priority": 0,
///         "target": "contoso.com",
///         "weight": 10,
///     }],
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       recordType: SRV
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       srvRecords:
///         - port: 80
///           priority: 0
///           target: contoso.com
///           weight: 10
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create TLSA recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "TLSA",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         TlsaRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.TlsaRecordArgs
///             {
///                 CertAssociationData = "6EC8A4B7F511454D84DCC055213B8D195E8ADA751FE14300AFE32D54B162438B",
///                 MatchingType = 1,
///                 Selector = 1,
///                 Usage = 3,
///             },
///         },
///         Ttl = 3600,
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("TLSA"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			TlsaRecords: dns.TlsaRecordArray{
/// 				&dns.TlsaRecordArgs{
/// 					CertAssociationData: pulumi.String("6EC8A4B7F511454D84DCC055213B8D195E8ADA751FE14300AFE32D54B162438B"),
/// 					MatchingType:        pulumi.Int(1),
/// 					Selector:            pulumi.Int(1),
/// 					Usage:               pulumi.Int(3),
/// 				},
/// 			},
/// 			Ttl:      pulumi.Float64(3600),
/// 			ZoneName: pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "TLSA"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   tlsa_records {
///     cert_association_data = "6EC8A4B7F511454D84DCC055213B8D195E8ADA751FE14300AFE32D54B162438B"
///     matching_type         = 1
///     selector              = 1
///     usage                 = 3
///   }
///   ttl       = 3600
///   zone_name = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.TlsaRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .recordType("TLSA")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .tlsaRecords(TlsaRecordArgs.builder()
///                 .certAssociationData("6EC8A4B7F511454D84DCC055213B8D195E8ADA751FE14300AFE32D54B162438B")
///                 .matchingType(1)
///                 .selector(1)
///                 .usage(3)
///                 .build())
///             .ttl(3600.0)
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "TLSA",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     tlsaRecords: [{
///         certAssociationData: "6EC8A4B7F511454D84DCC055213B8D195E8ADA751FE14300AFE32D54B162438B",
///         matchingType: 1,
///         selector: 1,
///         usage: 3,
///     }],
///     ttl: 3600,
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     record_type="TLSA",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     tlsa_records=[{
///         "cert_association_data": "6EC8A4B7F511454D84DCC055213B8D195E8ADA751FE14300AFE32D54B162438B",
///         "matching_type": 1,
///         "selector": 1,
///         "usage": 3,
///     }],
///     ttl=float(3600),
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       recordType: TLSA
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       tlsaRecords:
///         - certAssociationData: 6EC8A4B7F511454D84DCC055213B8D195E8ADA751FE14300AFE32D54B162438B
///           matchingType: 1
///           selector: 1
///           usage: 3
///       ttl: 3600
///       zoneName: zone1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create TXT recordset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var recordSet = new AzureNative.Dns.RecordSet("recordSet", new()
///     {
///         Metadata =
///         {
///             { "key1", "value1" },
///         },
///         RecordType = "TXT",
///         RelativeRecordSetName = "record1",
///         ResourceGroupName = "rg1",
///         Ttl = 3600,
///         TxtRecords = new[]
///         {
///             new AzureNative.Dns.Inputs.TxtRecordArgs
///             {
///                 Value = new[]
///                 {
///                     "string1",
///                     "string2",
///                 },
///             },
///         },
///         ZoneName = "zone1",
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
/// 	dns "github.com/pulumi/pulumi-azure-native-sdk/dns/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewRecordSet(ctx, "recordSet", &dns.RecordSetArgs{
/// 			Metadata: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			RecordType:            pulumi.String("TXT"),
/// 			RelativeRecordSetName: pulumi.String("record1"),
/// 			ResourceGroupName:     pulumi.String("rg1"),
/// 			Ttl:                   pulumi.Float64(3600),
/// 			TxtRecords: dns.TxtRecordArray{
/// 				&dns.TxtRecordArgs{
/// 					Value: pulumi.StringArray{
/// 						pulumi.String("string1"),
/// 						pulumi.String("string2"),
/// 					},
/// 				},
/// 			},
/// 			ZoneName: pulumi.String("zone1"),
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
/// resource "azure-native_dns_recordset" "recordSet" {
///   metadata = {
///     "key1" = "value1"
///   }
///   record_type              = "TXT"
///   relative_record_set_name = "record1"
///   resource_group_name      = "rg1"
///   ttl                      = 3600
///   txt_records {
///     value = ["string1", "string2"]
///   }
///   zone_name = "zone1"
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
/// import com.pulumi.azurenative.dns.RecordSet;
/// import com.pulumi.azurenative.dns.RecordSetArgs;
/// import com.pulumi.azurenative.dns.inputs.TxtRecordArgs;
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
///         var recordSet = new RecordSet("recordSet", RecordSetArgs.builder()
///             .metadata(Map.of("key1", "value1"))
///             .recordType("TXT")
///             .relativeRecordSetName("record1")
///             .resourceGroupName("rg1")
///             .ttl(3600.0)
///             .txtRecords(TxtRecordArgs.builder()
///                 .value(
///                     "string1",
///                     "string2")
///                 .build())
///             .zoneName("zone1")
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
/// const recordSet = new azure_native.dns.RecordSet("recordSet", {
///     metadata: {
///         key1: "value1",
///     },
///     recordType: "TXT",
///     relativeRecordSetName: "record1",
///     resourceGroupName: "rg1",
///     ttl: 3600,
///     txtRecords: [{
///         value: [
///             "string1",
///             "string2",
///         ],
///     }],
///     zoneName: "zone1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// record_set = azure_native.dns.RecordSet("recordSet",
///     metadata={
///         "key1": "value1",
///     },
///     record_type="TXT",
///     relative_record_set_name="record1",
///     resource_group_name="rg1",
///     ttl=float(3600),
///     txt_records=[{
///         "value": [
///             "string1",
///             "string2",
///         ],
///     }],
///     zone_name="zone1")
///
/// ```
///
/// ```yaml
/// resources:
///   recordSet:
///     type: azure-native:dns:RecordSet
///     properties:
///       metadata:
///         key1: value1
///       recordType: TXT
///       relativeRecordSetName: record1
///       resourceGroupName: rg1
///       ttl: 3600
///       txtRecords:
///         - value:
///             - string1
///             - string2
///       zoneName: zone1
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
/// $ pulumi import azure-native:dns:RecordSet record1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/dnsZones/{zoneName}/{recordType}/{relativeRecordSetName}
/// ```
class RecordSet extends pulumi.CustomResource {
  /// The list of A records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> aRecords;
  /// The list of AAAA records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> aaaaRecords;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The list of CAA records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> caaRecords;
  /// The CNAME record in the  record set.
  late final pulumi.Output<CnameRecordResponse?> cnameRecord;
  /// The list of DS records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> dsRecords;
  /// The etag of the record set.
  late final pulumi.Output<String?> etag;
  /// Fully qualified domain name of the record set.
  late final pulumi.Output<String> fqdn;
  /// The metadata attached to the record set.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The list of MX records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> mxRecords;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of NAPTR records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> naptrRecords;
  /// The list of NS records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> nsRecords;
  /// provisioning State of the record set.
  late final pulumi.Output<String> provisioningState;
  /// The list of PTR records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> ptrRecords;
  /// The SOA record in the record set.
  late final pulumi.Output<SoaRecordResponse?> soaRecord;
  /// The list of SRV records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> srvRecords;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// A reference to an azure resource from where the dns resource value is taken.
  late final pulumi.Output<SubResourceResponse?> targetResource;
  /// The list of TLSA records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> tlsaRecords;
  /// A reference to an azure traffic manager profile resource from where the dns resource value is taken.
  late final pulumi.Output<SubResourceResponse?> trafficManagementProfile;
  /// The TTL (time-to-live) of the records in the record set.
  late final pulumi.Output<double?> ttl;
  /// The list of TXT records in the record set.
  late final pulumi.Output<List<Map<String, dynamic>>?> txtRecords;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RecordSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RecordSet]. {@macro pulumi_dns_record_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RecordSet(
    String name, {
    RecordSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dns:RecordSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aRecords = registerOutput<List<Map<String, dynamic>>?>('aRecords');
    aaaaRecords = registerOutput<List<Map<String, dynamic>>?>('aaaaRecords');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    caaRecords = registerOutput<List<Map<String, dynamic>>?>('caaRecords');
    cnameRecord = registerOutput<CnameRecordResponse?>('cnameRecord', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CnameRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dsRecords = registerOutput<List<Map<String, dynamic>>?>('dsRecords');
    etag = registerOutput<String?>('etag');
    fqdn = registerOutput<String>('fqdn');
    metadata = registerOutput<Map<String, String>?>('metadata');
    mxRecords = registerOutput<List<Map<String, dynamic>>?>('mxRecords');
    this.name = registerOutput<String>('name');
    naptrRecords = registerOutput<List<Map<String, dynamic>>?>('naptrRecords');
    nsRecords = registerOutput<List<Map<String, dynamic>>?>('nsRecords');
    provisioningState = registerOutput<String>('provisioningState');
    ptrRecords = registerOutput<List<Map<String, dynamic>>?>('ptrRecords');
    soaRecord = registerOutput<SoaRecordResponse?>('soaRecord', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SoaRecordResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    srvRecords = registerOutput<List<Map<String, dynamic>>?>('srvRecords');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResource = registerOutput<SubResourceResponse?>('targetResource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsaRecords = registerOutput<List<Map<String, dynamic>>?>('tlsaRecords');
    trafficManagementProfile = registerOutput<SubResourceResponse?>('trafficManagementProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ttl = registerOutput<double?>('ttl');
    txtRecords = registerOutput<List<Map<String, dynamic>>?>('txtRecords');
    type = registerOutput<String>('type');
  }
}
