import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_args.dart';
import 'volume_group_meta_data_response.dart';

/// Volume group resource for create
///
/// Uses Azure REST API version 2024-09-01. In version 2.x of the Azure Native provider, it used API version 2022-11-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VolumeGroups_Create_Oracle
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volumeGroup = new AzureNative.NetApp.VolumeGroup("volumeGroup", new()
///     {
///         AccountName = "account1",
///         GroupMetaData = new AzureNative.NetApp.Inputs.VolumeGroupMetaDataArgs
///         {
///             ApplicationIdentifier = "OR2",
///             ApplicationType = AzureNative.NetApp.ApplicationType.ORACLE,
///             GroupDescription = "Volume group",
///         },
///         Location = "westus",
///         ResourceGroupName = "myRG",
///         VolumeGroupName = "group1",
///         Volumes = new[]
///         {
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-data1",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-data1",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-data1",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-data2",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-data2",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-data2",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-data3",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-data3",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-data3",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-data4",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-data4",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-data4",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-data5",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-data5",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-data5",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-data6",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-data6",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-data6",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-data7",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-data7",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-data7",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-data8",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-data8",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-data8",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-log",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-log",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-log",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-log-mirror",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-log-mirror",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-log-mirror",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-binary",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-binary",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-binary",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-ora-backup",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-ora-backup",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "ora-backup",
///                 Zones = new[]
///                 {
///                     "1",
///                 },
///             },
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewVolumeGroup(ctx, "volumeGroup", &netapp.VolumeGroupArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			GroupMetaData: &netapp.VolumeGroupMetaDataArgs{
/// 				ApplicationIdentifier: pulumi.String("OR2"),
/// 				ApplicationType:       pulumi.String(netapp.ApplicationTypeORACLE),
/// 				GroupDescription:      pulumi.String("Volume group"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			VolumeGroupName:   pulumi.String("group1"),
/// 			Volumes: netapp.VolumeGroupVolumePropertiesArray{
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-data1"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-data1"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-data1"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-data2"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-data2"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-data2"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-data3"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-data3"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-data3"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-data4"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-data4"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-data4"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-data5"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-data5"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-data5"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-data6"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-data6"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-data6"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-data7"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-data7"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-data7"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-data8"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-data8"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-data8"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-log"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-log"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-log"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-log-mirror"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-log-mirror"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-log-mirror"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-binary"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-binary"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-binary"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-ora-backup"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-ora-backup"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ServiceLevel:    pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:        pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps: pulumi.Float64(10),
/// 					UsageThreshold:  pulumi.Float64(107374182400),
/// 					VolumeSpecName:  pulumi.String("ora-backup"),
/// 					Zones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.netapp.VolumeGroup;
/// import com.pulumi.azurenative.netapp.VolumeGroupArgs;
/// import com.pulumi.azurenative.netapp.inputs.VolumeGroupMetaDataArgs;
/// import com.pulumi.azurenative.netapp.inputs.VolumeGroupVolumePropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.VolumePropertiesExportPolicyArgs;
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
///         var volumeGroup = new VolumeGroup("volumeGroup", VolumeGroupArgs.builder()
///             .accountName("account1")
///             .groupMetaData(VolumeGroupMetaDataArgs.builder()
///                 .applicationIdentifier("OR2")
///                 .applicationType("ORACLE")
///                 .groupDescription("Volume group")
///                 .build())
///             .location("westus")
///             .resourceGroupName("myRG")
///             .volumeGroupName("group1")
///             .volumes(
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-data1")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-data1")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-data1")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-data2")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-data2")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-data2")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-data3")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-data3")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-data3")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-data4")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-data4")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-data4")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-data5")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-data5")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-data5")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-data6")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-data6")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-data6")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-data7")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-data7")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-data7")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-data8")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-data8")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-data8")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-log")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-log")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-log")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-log-mirror")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-log-mirror")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-log-mirror")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-binary")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-binary")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-binary")
///                     .zones("1")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-ora-backup")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-ora-backup")
///                     .protocolTypes("NFSv4.1")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("ora-backup")
///                     .zones("1")
///                     .build())
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
/// const volumeGroup = new azure_native.netapp.VolumeGroup("volumeGroup", {
///     accountName: "account1",
///     groupMetaData: {
///         applicationIdentifier: "OR2",
///         applicationType: azure_native.netapp.ApplicationType.ORACLE,
///         groupDescription: "Volume group",
///     },
///     location: "westus",
///     resourceGroupName: "myRG",
///     volumeGroupName: "group1",
///     volumes: [
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-data1",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-data1",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-data1",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-data2",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-data2",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-data2",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-data3",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-data3",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-data3",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-data4",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-data4",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-data4",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-data5",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-data5",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-data5",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-data6",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-data6",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-data6",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-data7",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-data7",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-data7",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-data8",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-data8",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-data8",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-log",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-log",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-log",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-log-mirror",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-log-mirror",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-log-mirror",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-binary",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-binary",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-binary",
///             zones: ["1"],
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-ora-backup",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-ora-backup",
///             protocolTypes: ["NFSv4.1"],
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "ora-backup",
///             zones: ["1"],
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume_group = azure_native.netapp.VolumeGroup("volumeGroup",
///     account_name="account1",
///     group_meta_data={
///         "application_identifier": "OR2",
///         "application_type": azure_native.netapp.ApplicationType.ORACLE,
///         "group_description": "Volume group",
///     },
///     location="westus",
///     resource_group_name="myRG",
///     volume_group_name="group1",
///     volumes=[
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-data1",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-data1",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-data1",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-data2",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-data2",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-data2",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-data3",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-data3",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-data3",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-data4",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-data4",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-data4",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-data5",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-data5",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-data5",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-data6",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-data6",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-data6",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-data7",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-data7",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-data7",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-data8",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-data8",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-data8",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-log",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-log",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-log",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-log-mirror",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-log-mirror",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-log-mirror",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-binary",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-binary",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-binary",
///             "zones": ["1"],
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-ora-backup",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-ora-backup",
///             "protocol_types": ["NFSv4.1"],
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "ora-backup",
///             "zones": ["1"],
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   volumeGroup:
///     type: azure-native:netapp:VolumeGroup
///     properties:
///       accountName: account1
///       groupMetaData:
///         applicationIdentifier: OR2
///         applicationType: ORACLE
///         groupDescription: Volume group
///       location: westus
///       resourceGroupName: myRG
///       volumeGroupName: group1
///       volumes:
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-data1
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-data1
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-data1
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-data2
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-data2
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-data2
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-data3
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-data3
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-data3
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-data4
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-data4
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-data4
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-data5
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-data5
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-data5
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-data6
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-data6
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-data6
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-data7
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-data7
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-data7
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-data8
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-data8
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-data8
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-log
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-log
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-log
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-log-mirror
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-log-mirror
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-log-mirror
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-binary
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-binary
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-binary
///           zones:
///             - '1'
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-ora-backup
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-ora-backup
///           protocolTypes:
///             - NFSv4.1
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: ora-backup
///           zones:
///             - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### VolumeGroups_Create_SapHana
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volumeGroup = new AzureNative.NetApp.VolumeGroup("volumeGroup", new()
///     {
///         AccountName = "account1",
///         GroupMetaData = new AzureNative.NetApp.Inputs.VolumeGroupMetaDataArgs
///         {
///             ApplicationIdentifier = "SH9",
///             ApplicationType = AzureNative.NetApp.ApplicationType.SAP_HANA,
///             GroupDescription = "Volume group",
///         },
///         Location = "westus",
///         ResourceGroupName = "myRG",
///         VolumeGroupName = "group1",
///         Volumes = new[]
///         {
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-data-mnt00001",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-data-mnt00001",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ProximityPlacementGroup = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "data",
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-log-mnt00001",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-log-mnt00001",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ProximityPlacementGroup = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "log",
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-shared",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-shared",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ProximityPlacementGroup = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "shared",
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-data-backup",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-data-backup",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ProximityPlacementGroup = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "data-backup",
///             },
///             new AzureNative.NetApp.Inputs.VolumeGroupVolumePropertiesArgs
///             {
///                 CapacityPoolResourceId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///                 CreationToken = "test-log-backup",
///                 ExportPolicy = new AzureNative.NetApp.Inputs.VolumePropertiesExportPolicyArgs
///                 {
///                     Rules = new[]
///                     {
///                         new AzureNative.NetApp.Inputs.ExportPolicyRuleArgs
///                         {
///                             AllowedClients = "0.0.0.0/0",
///                             Cifs = false,
///                             HasRootAccess = true,
///                             Kerberos5ReadOnly = false,
///                             Kerberos5ReadWrite = false,
///                             Kerberos5iReadOnly = false,
///                             Kerberos5iReadWrite = false,
///                             Kerberos5pReadOnly = false,
///                             Kerberos5pReadWrite = false,
///                             Nfsv3 = false,
///                             Nfsv41 = true,
///                             RuleIndex = 1,
///                             UnixReadOnly = true,
///                             UnixReadWrite = true,
///                         },
///                     },
///                 },
///                 Name = "test-log-backup",
///                 ProtocolTypes = new[]
///                 {
///                     "NFSv4.1",
///                 },
///                 ProximityPlacementGroup = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///                 ServiceLevel = AzureNative.NetApp.ServiceLevel.Premium,
///                 SubnetId = "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///                 ThroughputMibps = 10,
///                 UsageThreshold = 107374182400,
///                 VolumeSpecName = "log-backup",
///             },
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewVolumeGroup(ctx, "volumeGroup", &netapp.VolumeGroupArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			GroupMetaData: &netapp.VolumeGroupMetaDataArgs{
/// 				ApplicationIdentifier: pulumi.String("SH9"),
/// 				ApplicationType:       pulumi.String(netapp.ApplicationType_SAP_HANA),
/// 				GroupDescription:      pulumi.String("Volume group"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			VolumeGroupName:   pulumi.String("group1"),
/// 			Volumes: netapp.VolumeGroupVolumePropertiesArray{
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-data-mnt00001"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-data-mnt00001"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ProximityPlacementGroup: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg"),
/// 					ServiceLevel:            pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:                pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps:         pulumi.Float64(10),
/// 					UsageThreshold:          pulumi.Float64(107374182400),
/// 					VolumeSpecName:          pulumi.String("data"),
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-log-mnt00001"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-log-mnt00001"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ProximityPlacementGroup: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg"),
/// 					ServiceLevel:            pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:                pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps:         pulumi.Float64(10),
/// 					UsageThreshold:          pulumi.Float64(107374182400),
/// 					VolumeSpecName:          pulumi.String("log"),
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-shared"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-shared"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ProximityPlacementGroup: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg"),
/// 					ServiceLevel:            pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:                pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps:         pulumi.Float64(10),
/// 					UsageThreshold:          pulumi.Float64(107374182400),
/// 					VolumeSpecName:          pulumi.String("shared"),
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-data-backup"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-data-backup"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ProximityPlacementGroup: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg"),
/// 					ServiceLevel:            pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:                pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps:         pulumi.Float64(10),
/// 					UsageThreshold:          pulumi.Float64(107374182400),
/// 					VolumeSpecName:          pulumi.String("data-backup"),
/// 				},
/// 				&netapp.VolumeGroupVolumePropertiesArgs{
/// 					CapacityPoolResourceId: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1"),
/// 					CreationToken:          pulumi.String("test-log-backup"),
/// 					ExportPolicy: &netapp.VolumePropertiesExportPolicyArgs{
/// 						Rules: netapp.ExportPolicyRuleArray{
/// 							&netapp.ExportPolicyRuleArgs{
/// 								AllowedClients:      pulumi.String("0.0.0.0/0"),
/// 								Cifs:                pulumi.Bool(false),
/// 								HasRootAccess:       pulumi.Bool(true),
/// 								Kerberos5ReadOnly:   pulumi.Bool(false),
/// 								Kerberos5ReadWrite:  pulumi.Bool(false),
/// 								Kerberos5iReadOnly:  pulumi.Bool(false),
/// 								Kerberos5iReadWrite: pulumi.Bool(false),
/// 								Kerberos5pReadOnly:  pulumi.Bool(false),
/// 								Kerberos5pReadWrite: pulumi.Bool(false),
/// 								Nfsv3:               pulumi.Bool(false),
/// 								Nfsv41:              pulumi.Bool(true),
/// 								RuleIndex:           pulumi.Int(1),
/// 								UnixReadOnly:        pulumi.Bool(true),
/// 								UnixReadWrite:       pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("test-log-backup"),
/// 					ProtocolTypes: pulumi.StringArray{
/// 						pulumi.String("NFSv4.1"),
/// 					},
/// 					ProximityPlacementGroup: pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg"),
/// 					ServiceLevel:            pulumi.String(netapp.ServiceLevelPremium),
/// 					SubnetId:                pulumi.String("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3"),
/// 					ThroughputMibps:         pulumi.Float64(10),
/// 					UsageThreshold:          pulumi.Float64(107374182400),
/// 					VolumeSpecName:          pulumi.String("log-backup"),
/// 				},
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
/// import com.pulumi.azurenative.netapp.VolumeGroup;
/// import com.pulumi.azurenative.netapp.VolumeGroupArgs;
/// import com.pulumi.azurenative.netapp.inputs.VolumeGroupMetaDataArgs;
/// import com.pulumi.azurenative.netapp.inputs.VolumeGroupVolumePropertiesArgs;
/// import com.pulumi.azurenative.netapp.inputs.VolumePropertiesExportPolicyArgs;
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
///         var volumeGroup = new VolumeGroup("volumeGroup", VolumeGroupArgs.builder()
///             .accountName("account1")
///             .groupMetaData(VolumeGroupMetaDataArgs.builder()
///                 .applicationIdentifier("SH9")
///                 .applicationType("SAP-HANA")
///                 .groupDescription("Volume group")
///                 .build())
///             .location("westus")
///             .resourceGroupName("myRG")
///             .volumeGroupName("group1")
///             .volumes(
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-data-mnt00001")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-data-mnt00001")
///                     .protocolTypes("NFSv4.1")
///                     .proximityPlacementGroup("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("data")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-log-mnt00001")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-log-mnt00001")
///                     .protocolTypes("NFSv4.1")
///                     .proximityPlacementGroup("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("log")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-shared")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-shared")
///                     .protocolTypes("NFSv4.1")
///                     .proximityPlacementGroup("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("shared")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-data-backup")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-data-backup")
///                     .protocolTypes("NFSv4.1")
///                     .proximityPlacementGroup("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("data-backup")
///                     .build(),
///                 VolumeGroupVolumePropertiesArgs.builder()
///                     .capacityPoolResourceId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1")
///                     .creationToken("test-log-backup")
///                     .exportPolicy(VolumePropertiesExportPolicyArgs.builder()
///                         .rules(ExportPolicyRuleArgs.builder()
///                             .allowedClients("0.0.0.0/0")
///                             .cifs(false)
///                             .hasRootAccess(true)
///                             .kerberos5ReadOnly(false)
///                             .kerberos5ReadWrite(false)
///                             .kerberos5iReadOnly(false)
///                             .kerberos5iReadWrite(false)
///                             .kerberos5pReadOnly(false)
///                             .kerberos5pReadWrite(false)
///                             .nfsv3(false)
///                             .nfsv41(true)
///                             .ruleIndex(1)
///                             .unixReadOnly(true)
///                             .unixReadWrite(true)
///                             .build())
///                         .build())
///                     .name("test-log-backup")
///                     .protocolTypes("NFSv4.1")
///                     .proximityPlacementGroup("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg")
///                     .serviceLevel("Premium")
///                     .subnetId("/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3")
///                     .throughputMibps(10.0)
///                     .usageThreshold(107374182400.0)
///                     .volumeSpecName("log-backup")
///                     .build())
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
/// const volumeGroup = new azure_native.netapp.VolumeGroup("volumeGroup", {
///     accountName: "account1",
///     groupMetaData: {
///         applicationIdentifier: "SH9",
///         applicationType: azure_native.netapp.ApplicationType.SAP_HANA,
///         groupDescription: "Volume group",
///     },
///     location: "westus",
///     resourceGroupName: "myRG",
///     volumeGroupName: "group1",
///     volumes: [
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-data-mnt00001",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-data-mnt00001",
///             protocolTypes: ["NFSv4.1"],
///             proximityPlacementGroup: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "data",
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-log-mnt00001",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-log-mnt00001",
///             protocolTypes: ["NFSv4.1"],
///             proximityPlacementGroup: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "log",
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-shared",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-shared",
///             protocolTypes: ["NFSv4.1"],
///             proximityPlacementGroup: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "shared",
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-data-backup",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-data-backup",
///             protocolTypes: ["NFSv4.1"],
///             proximityPlacementGroup: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "data-backup",
///         },
///         {
///             capacityPoolResourceId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             creationToken: "test-log-backup",
///             exportPolicy: {
///                 rules: [{
///                     allowedClients: "0.0.0.0/0",
///                     cifs: false,
///                     hasRootAccess: true,
///                     kerberos5ReadOnly: false,
///                     kerberos5ReadWrite: false,
///                     kerberos5iReadOnly: false,
///                     kerberos5iReadWrite: false,
///                     kerberos5pReadOnly: false,
///                     kerberos5pReadWrite: false,
///                     nfsv3: false,
///                     nfsv41: true,
///                     ruleIndex: 1,
///                     unixReadOnly: true,
///                     unixReadWrite: true,
///                 }],
///             },
///             name: "test-log-backup",
///             protocolTypes: ["NFSv4.1"],
///             proximityPlacementGroup: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             serviceLevel: azure_native.netapp.ServiceLevel.Premium,
///             subnetId: "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             throughputMibps: 10,
///             usageThreshold: 107374182400,
///             volumeSpecName: "log-backup",
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume_group = azure_native.netapp.VolumeGroup("volumeGroup",
///     account_name="account1",
///     group_meta_data={
///         "application_identifier": "SH9",
///         "application_type": azure_native.netapp.ApplicationType.SA_P_HANA,
///         "group_description": "Volume group",
///     },
///     location="westus",
///     resource_group_name="myRG",
///     volume_group_name="group1",
///     volumes=[
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-data-mnt00001",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-data-mnt00001",
///             "protocol_types": ["NFSv4.1"],
///             "proximity_placement_group": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "data",
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-log-mnt00001",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-log-mnt00001",
///             "protocol_types": ["NFSv4.1"],
///             "proximity_placement_group": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "log",
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-shared",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-shared",
///             "protocol_types": ["NFSv4.1"],
///             "proximity_placement_group": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "shared",
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-data-backup",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-data-backup",
///             "protocol_types": ["NFSv4.1"],
///             "proximity_placement_group": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "data-backup",
///         },
///         {
///             "capacity_pool_resource_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1",
///             "creation_token": "test-log-backup",
///             "export_policy": {
///                 "rules": [{
///                     "allowed_clients": "0.0.0.0/0",
///                     "cifs": False,
///                     "has_root_access": True,
///                     "kerberos5_read_only": False,
///                     "kerberos5_read_write": False,
///                     "kerberos5i_read_only": False,
///                     "kerberos5i_read_write": False,
///                     "kerberos5p_read_only": False,
///                     "kerberos5p_read_write": False,
///                     "nfsv3": False,
///                     "nfsv41": True,
///                     "rule_index": 1,
///                     "unix_read_only": True,
///                     "unix_read_write": True,
///                 }],
///             },
///             "name": "test-log-backup",
///             "protocol_types": ["NFSv4.1"],
///             "proximity_placement_group": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg",
///             "service_level": azure_native.netapp.ServiceLevel.PREMIUM,
///             "subnet_id": "/subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3",
///             "throughput_mibps": 10,
///             "usage_threshold": 107374182400,
///             "volume_spec_name": "log-backup",
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   volumeGroup:
///     type: azure-native:netapp:VolumeGroup
///     properties:
///       accountName: account1
///       groupMetaData:
///         applicationIdentifier: SH9
///         applicationType: SAP-HANA
///         groupDescription: Volume group
///       location: westus
///       resourceGroupName: myRG
///       volumeGroupName: group1
///       volumes:
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-data-mnt00001
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-data-mnt00001
///           protocolTypes:
///             - NFSv4.1
///           proximityPlacementGroup: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: data
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-log-mnt00001
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-log-mnt00001
///           protocolTypes:
///             - NFSv4.1
///           proximityPlacementGroup: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: log
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-shared
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-shared
///           protocolTypes:
///             - NFSv4.1
///           proximityPlacementGroup: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: shared
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-data-backup
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-data-backup
///           protocolTypes:
///             - NFSv4.1
///           proximityPlacementGroup: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: data-backup
///         - capacityPoolResourceId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRG/providers/Microsoft.NetApp/netAppAccounts/account1/capacityPools/pool1
///           creationToken: test-log-backup
///           exportPolicy:
///             rules:
///               - allowedClients: 0.0.0.0/0
///                 cifs: false
///                 hasRootAccess: true
///                 kerberos5ReadOnly: false
///                 kerberos5ReadWrite: false
///                 kerberos5iReadOnly: false
///                 kerberos5iReadWrite: false
///                 kerberos5pReadOnly: false
///                 kerberos5pReadWrite: false
///                 nfsv3: false
///                 nfsv41: true
///                 ruleIndex: 1
///                 unixReadOnly: true
///                 unixReadWrite: true
///           name: test-log-backup
///           protocolTypes:
///             - NFSv4.1
///           proximityPlacementGroup: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/cys_sjain_fcp_rg/providers/Microsoft.Compute/proximityPlacementGroups/svlqa_sjain_multivolume_ppg
///           serviceLevel: Premium
///           subnetId: /subscriptions/d633cc2e-722b-4ae1-b636-bbd9e4c60ed9/resourceGroups/myRP/providers/Microsoft.Network/virtualNetworks/testvnet3/subnets/testsubnet3
///           throughputMibps: 10
///           usageThreshold: 1.073741824e+11
///           volumeSpecName: log-backup
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
/// $ pulumi import azure-native:netapp:VolumeGroup group1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/volumeGroups/{volumeGroupName}
/// ```
class VolumeGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Volume group details
  late final pulumi.Output<VolumeGroupMetaDataResponse?> groupMetaData;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Azure lifecycle management
  late final pulumi.Output<String> provisioningState;
  /// Resource type
  late final pulumi.Output<String> type;
  /// List of volumes from group
  late final pulumi.Output<List<Map<String, dynamic>>?> volumes;

  /// Creates a new [VolumeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeGroup]. {@macro pulumi_netapp_volume_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeGroup(
    String name, {
    VolumeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:VolumeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    groupMetaData = registerOutput<VolumeGroupMetaDataResponse?>('groupMetaData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VolumeGroupMetaDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
    volumes = registerOutput<List<Map<String, dynamic>>?>('volumes');
  }
}
