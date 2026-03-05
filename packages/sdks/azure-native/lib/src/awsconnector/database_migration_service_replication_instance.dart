import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_service_replication_instance_args.dart';
import 'database_migration_service_replication_instance_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DatabaseMigrationServiceReplicationInstances_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseMigrationServiceReplicationInstance = new AzureNative.AwsConnector.DatabaseMigrationServiceReplicationInstance("databaseMigrationServiceReplicationInstance", new()
///     {
///         Location = "pkvlgucpnkkigflvahztr",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.DatabaseMigrationServiceReplicationInstancePropertiesArgs
///         {
///             Arn = "hgieneplknqcgzbvoj",
///             AwsAccountId = "zkpbtrjskcsejrxvaulidr",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsDatabaseMigrationServiceReplicationInstancePropertiesArgs
///             {
///                 AllocatedStorage = 15,
///                 AutoMinorVersionUpgrade = true,
///                 AvailabilityZone = "ufwkddqfhigljgpouncfjtwjhcm",
///                 DnsNameServers = "gjlforgdkkjubyetzafznct",
///                 EngineVersion = "ugfhxgag",
///                 FreeUntil = "2024-10-08T03:53:04.775Z",
///                 InstanceCreateTime = "2024-10-08T03:53:04.776Z",
///                 KmsKeyId = "kxrelekeobexuugdjmttnolzsntu",
///                 MultiAZ = true,
///                 NetworkType = "ognalkhwgr",
///                 PendingModifiedValues = new AzureNative.AwsConnector.Inputs.ReplicationPendingModifiedValuesArgs
///                 {
///                     AllocatedStorage = 24,
///                     EngineVersion = "ljjlnnkamqo",
///                     MultiAZ = true,
///                     NetworkType = "xgynwurnwuqfirccmedvhphptwx",
///                     ReplicationInstanceClass = "nah",
///                 },
///                 PreferredMaintenanceWindow = "cjhj",
///                 PubliclyAccessible = true,
///                 ReplicationInstanceArn = "kkuagugx",
///                 ReplicationInstanceClass = "nrejgjvmp",
///                 ReplicationInstanceIdentifier = "kmkhuvkgshmfnqrkh",
///                 ReplicationInstanceIpv6Addresses = new[]
///                 {
///                     "chankbhtkfgmmql",
///                 },
///                 ReplicationInstancePrivateIpAddress = "kzpeupvtv",
///                 ReplicationInstancePrivateIpAddresses = new[]
///                 {
///                     "wpvurjepdvyqsut",
///                 },
///                 ReplicationInstancePublicIpAddress = "cgolgdimqmrtbs",
///                 ReplicationInstancePublicIpAddresses = new[]
///                 {
///                     "laguuyhnutmqr",
///                 },
///                 ReplicationInstanceStatus = "prkwehbwglimljckrujss",
///                 ReplicationSubnetGroup = new AzureNative.AwsConnector.Inputs.ReplicationSubnetGroupArgs
///                 {
///                     ReplicationSubnetGroupDescription = "octprj",
///                     ReplicationSubnetGroupIdentifier = "lp",
///                     SubnetGroupStatus = "u",
///                     Subnets = new[]
///                     {
///                         new AzureNative.AwsConnector.Inputs.SubnetArgs
///                         {
///                             SubnetAvailabilityZone = new AzureNative.AwsConnector.Inputs.AvailabilityZoneArgs
///                             {
///                                 Name = "zkqyndrxrxjgvbcwycfd",
///                             },
///                             SubnetIdentifier = "bbjyuchlt",
///                             SubnetStatus = "pzsp",
///                         },
///                     },
///                     SupportedNetworkTypes = new[]
///                     {
///                         "flrojgbtzlv",
///                     },
///                     VpcId = "zsg",
///                 },
///                 SecondaryAvailabilityZone = "gfricycigffhmqcwzxxzwevrwf",
///                 VpcSecurityGroups = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.VpcSecurityGroupMembershipArgs
///                     {
///                         Status = "tioerjd",
///                         VpcSecurityGroupId = "szupfofnwyrfpcpwi",
///                     },
///                 },
///             },
///             AwsRegion = "xflnvjqertqoawntyvmyorzemmx",
///             AwsSourceSchema = "aj",
///             AwsTags =
///             {
///                 { "key1826", "hcitjgulaiuhknjncqdri" },
///             },
///             PublicCloudConnectorsResourceId = "oafkmlxerdytgq",
///             PublicCloudResourceName = "ajrdejnsykvcfzomaktse",
///         },
///         ResourceGroupName = "rgdatabaseMigrationServiceReplicationInstance",
///         Tags =
///         {
///             { "key2694", "vgcrgktfjprhiqwtucfsqt" },
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
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewDatabaseMigrationServiceReplicationInstance(ctx, "databaseMigrationServiceReplicationInstance", &awsconnector.DatabaseMigrationServiceReplicationInstanceArgs{
/// 			Location: pulumi.String("pkvlgucpnkkigflvahztr"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.DatabaseMigrationServiceReplicationInstancePropertiesArgs{
/// 				Arn:          pulumi.String("hgieneplknqcgzbvoj"),
/// 				AwsAccountId: pulumi.String("zkpbtrjskcsejrxvaulidr"),
/// 				AwsProperties: &awsconnector.AwsDatabaseMigrationServiceReplicationInstancePropertiesArgs{
/// 					AllocatedStorage:        pulumi.Int(15),
/// 					AutoMinorVersionUpgrade: pulumi.Bool(true),
/// 					AvailabilityZone:        pulumi.String("ufwkddqfhigljgpouncfjtwjhcm"),
/// 					DnsNameServers:          pulumi.String("gjlforgdkkjubyetzafznct"),
/// 					EngineVersion:           pulumi.String("ugfhxgag"),
/// 					FreeUntil:               pulumi.String("2024-10-08T03:53:04.775Z"),
/// 					InstanceCreateTime:      pulumi.String("2024-10-08T03:53:04.776Z"),
/// 					KmsKeyId:                pulumi.String("kxrelekeobexuugdjmttnolzsntu"),
/// 					MultiAZ:                 pulumi.Bool(true),
/// 					NetworkType:             pulumi.String("ognalkhwgr"),
/// 					PendingModifiedValues: &awsconnector.ReplicationPendingModifiedValuesArgs{
/// 						AllocatedStorage:         pulumi.Int(24),
/// 						EngineVersion:            pulumi.String("ljjlnnkamqo"),
/// 						MultiAZ:                  pulumi.Bool(true),
/// 						NetworkType:              pulumi.String("xgynwurnwuqfirccmedvhphptwx"),
/// 						ReplicationInstanceClass: pulumi.String("nah"),
/// 					},
/// 					PreferredMaintenanceWindow:    pulumi.String("cjhj"),
/// 					PubliclyAccessible:            pulumi.Bool(true),
/// 					ReplicationInstanceArn:        pulumi.String("kkuagugx"),
/// 					ReplicationInstanceClass:      pulumi.String("nrejgjvmp"),
/// 					ReplicationInstanceIdentifier: pulumi.String("kmkhuvkgshmfnqrkh"),
/// 					ReplicationInstanceIpv6Addresses: pulumi.StringArray{
/// 						pulumi.String("chankbhtkfgmmql"),
/// 					},
/// 					ReplicationInstancePrivateIpAddress: pulumi.String("kzpeupvtv"),
/// 					ReplicationInstancePrivateIpAddresses: pulumi.StringArray{
/// 						pulumi.String("wpvurjepdvyqsut"),
/// 					},
/// 					ReplicationInstancePublicIpAddress: pulumi.String("cgolgdimqmrtbs"),
/// 					ReplicationInstancePublicIpAddresses: pulumi.StringArray{
/// 						pulumi.String("laguuyhnutmqr"),
/// 					},
/// 					ReplicationInstanceStatus: pulumi.String("prkwehbwglimljckrujss"),
/// 					ReplicationSubnetGroup: &awsconnector.ReplicationSubnetGroupArgs{
/// 						ReplicationSubnetGroupDescription: pulumi.String("octprj"),
/// 						ReplicationSubnetGroupIdentifier:  pulumi.String("lp"),
/// 						SubnetGroupStatus:                 pulumi.String("u"),
/// 						Subnets: awsconnector.SubnetArray{
/// 							&awsconnector.SubnetArgs{
/// 								SubnetAvailabilityZone: &awsconnector.AvailabilityZoneArgs{
/// 									Name: pulumi.String("zkqyndrxrxjgvbcwycfd"),
/// 								},
/// 								SubnetIdentifier: pulumi.String("bbjyuchlt"),
/// 								SubnetStatus:     pulumi.String("pzsp"),
/// 							},
/// 						},
/// 						SupportedNetworkTypes: pulumi.StringArray{
/// 							pulumi.String("flrojgbtzlv"),
/// 						},
/// 						VpcId: pulumi.String("zsg"),
/// 					},
/// 					SecondaryAvailabilityZone: pulumi.String("gfricycigffhmqcwzxxzwevrwf"),
/// 					VpcSecurityGroups: awsconnector.VpcSecurityGroupMembershipArray{
/// 						&awsconnector.VpcSecurityGroupMembershipArgs{
/// 							Status:             pulumi.String("tioerjd"),
/// 							VpcSecurityGroupId: pulumi.String("szupfofnwyrfpcpwi"),
/// 						},
/// 					},
/// 				},
/// 				AwsRegion:       pulumi.String("xflnvjqertqoawntyvmyorzemmx"),
/// 				AwsSourceSchema: pulumi.String("aj"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key1826": pulumi.String("hcitjgulaiuhknjncqdri"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("oafkmlxerdytgq"),
/// 				PublicCloudResourceName:         pulumi.String("ajrdejnsykvcfzomaktse"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdatabaseMigrationServiceReplicationInstance"),
/// 			Tags: pulumi.StringMap{
/// 				"key2694": pulumi.String("vgcrgktfjprhiqwtucfsqt"),
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
/// import com.pulumi.azurenative.awsconnector.DatabaseMigrationServiceReplicationInstance;
/// import com.pulumi.azurenative.awsconnector.DatabaseMigrationServiceReplicationInstanceArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.DatabaseMigrationServiceReplicationInstancePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsDatabaseMigrationServiceReplicationInstancePropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ReplicationPendingModifiedValuesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.ReplicationSubnetGroupArgs;
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
///         var databaseMigrationServiceReplicationInstance = new DatabaseMigrationServiceReplicationInstance("databaseMigrationServiceReplicationInstance", DatabaseMigrationServiceReplicationInstanceArgs.builder()
///             .location("pkvlgucpnkkigflvahztr")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(DatabaseMigrationServiceReplicationInstancePropertiesArgs.builder()
///                 .arn("hgieneplknqcgzbvoj")
///                 .awsAccountId("zkpbtrjskcsejrxvaulidr")
///                 .awsProperties(AwsDatabaseMigrationServiceReplicationInstancePropertiesArgs.builder()
///                     .allocatedStorage(15)
///                     .autoMinorVersionUpgrade(true)
///                     .availabilityZone("ufwkddqfhigljgpouncfjtwjhcm")
///                     .dnsNameServers("gjlforgdkkjubyetzafznct")
///                     .engineVersion("ugfhxgag")
///                     .freeUntil("2024-10-08T03:53:04.775Z")
///                     .instanceCreateTime("2024-10-08T03:53:04.776Z")
///                     .kmsKeyId("kxrelekeobexuugdjmttnolzsntu")
///                     .multiAZ(true)
///                     .networkType("ognalkhwgr")
///                     .pendingModifiedValues(ReplicationPendingModifiedValuesArgs.builder()
///                         .allocatedStorage(24)
///                         .engineVersion("ljjlnnkamqo")
///                         .multiAZ(true)
///                         .networkType("xgynwurnwuqfirccmedvhphptwx")
///                         .replicationInstanceClass("nah")
///                         .build())
///                     .preferredMaintenanceWindow("cjhj")
///                     .publiclyAccessible(true)
///                     .replicationInstanceArn("kkuagugx")
///                     .replicationInstanceClass("nrejgjvmp")
///                     .replicationInstanceIdentifier("kmkhuvkgshmfnqrkh")
///                     .replicationInstanceIpv6Addresses("chankbhtkfgmmql")
///                     .replicationInstancePrivateIpAddress("kzpeupvtv")
///                     .replicationInstancePrivateIpAddresses("wpvurjepdvyqsut")
///                     .replicationInstancePublicIpAddress("cgolgdimqmrtbs")
///                     .replicationInstancePublicIpAddresses("laguuyhnutmqr")
///                     .replicationInstanceStatus("prkwehbwglimljckrujss")
///                     .replicationSubnetGroup(ReplicationSubnetGroupArgs.builder()
///                         .replicationSubnetGroupDescription("octprj")
///                         .replicationSubnetGroupIdentifier("lp")
///                         .subnetGroupStatus("u")
///                         .subnets(SubnetArgs.builder()
///                             .subnetAvailabilityZone(AvailabilityZoneArgs.builder()
///                                 .name("zkqyndrxrxjgvbcwycfd")
///                                 .build())
///                             .subnetIdentifier("bbjyuchlt")
///                             .subnetStatus("pzsp")
///                             .build())
///                         .supportedNetworkTypes("flrojgbtzlv")
///                         .vpcId("zsg")
///                         .build())
///                     .secondaryAvailabilityZone("gfricycigffhmqcwzxxzwevrwf")
///                     .vpcSecurityGroups(VpcSecurityGroupMembershipArgs.builder()
///                         .status("tioerjd")
///                         .vpcSecurityGroupId("szupfofnwyrfpcpwi")
///                         .build())
///                     .build())
///                 .awsRegion("xflnvjqertqoawntyvmyorzemmx")
///                 .awsSourceSchema("aj")
///                 .awsTags(Map.of("key1826", "hcitjgulaiuhknjncqdri"))
///                 .publicCloudConnectorsResourceId("oafkmlxerdytgq")
///                 .publicCloudResourceName("ajrdejnsykvcfzomaktse")
///                 .build())
///             .resourceGroupName("rgdatabaseMigrationServiceReplicationInstance")
///             .tags(Map.of("key2694", "vgcrgktfjprhiqwtucfsqt"))
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
/// const databaseMigrationServiceReplicationInstance = new azure_native.awsconnector.DatabaseMigrationServiceReplicationInstance("databaseMigrationServiceReplicationInstance", {
///     location: "pkvlgucpnkkigflvahztr",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "hgieneplknqcgzbvoj",
///         awsAccountId: "zkpbtrjskcsejrxvaulidr",
///         awsProperties: {
///             allocatedStorage: 15,
///             autoMinorVersionUpgrade: true,
///             availabilityZone: "ufwkddqfhigljgpouncfjtwjhcm",
///             dnsNameServers: "gjlforgdkkjubyetzafznct",
///             engineVersion: "ugfhxgag",
///             freeUntil: "2024-10-08T03:53:04.775Z",
///             instanceCreateTime: "2024-10-08T03:53:04.776Z",
///             kmsKeyId: "kxrelekeobexuugdjmttnolzsntu",
///             multiAZ: true,
///             networkType: "ognalkhwgr",
///             pendingModifiedValues: {
///                 allocatedStorage: 24,
///                 engineVersion: "ljjlnnkamqo",
///                 multiAZ: true,
///                 networkType: "xgynwurnwuqfirccmedvhphptwx",
///                 replicationInstanceClass: "nah",
///             },
///             preferredMaintenanceWindow: "cjhj",
///             publiclyAccessible: true,
///             replicationInstanceArn: "kkuagugx",
///             replicationInstanceClass: "nrejgjvmp",
///             replicationInstanceIdentifier: "kmkhuvkgshmfnqrkh",
///             replicationInstanceIpv6Addresses: ["chankbhtkfgmmql"],
///             replicationInstancePrivateIpAddress: "kzpeupvtv",
///             replicationInstancePrivateIpAddresses: ["wpvurjepdvyqsut"],
///             replicationInstancePublicIpAddress: "cgolgdimqmrtbs",
///             replicationInstancePublicIpAddresses: ["laguuyhnutmqr"],
///             replicationInstanceStatus: "prkwehbwglimljckrujss",
///             replicationSubnetGroup: {
///                 replicationSubnetGroupDescription: "octprj",
///                 replicationSubnetGroupIdentifier: "lp",
///                 subnetGroupStatus: "u",
///                 subnets: [{
///                     subnetAvailabilityZone: {
///                         name: "zkqyndrxrxjgvbcwycfd",
///                     },
///                     subnetIdentifier: "bbjyuchlt",
///                     subnetStatus: "pzsp",
///                 }],
///                 supportedNetworkTypes: ["flrojgbtzlv"],
///                 vpcId: "zsg",
///             },
///             secondaryAvailabilityZone: "gfricycigffhmqcwzxxzwevrwf",
///             vpcSecurityGroups: [{
///                 status: "tioerjd",
///                 vpcSecurityGroupId: "szupfofnwyrfpcpwi",
///             }],
///         },
///         awsRegion: "xflnvjqertqoawntyvmyorzemmx",
///         awsSourceSchema: "aj",
///         awsTags: {
///             key1826: "hcitjgulaiuhknjncqdri",
///         },
///         publicCloudConnectorsResourceId: "oafkmlxerdytgq",
///         publicCloudResourceName: "ajrdejnsykvcfzomaktse",
///     },
///     resourceGroupName: "rgdatabaseMigrationServiceReplicationInstance",
///     tags: {
///         key2694: "vgcrgktfjprhiqwtucfsqt",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_migration_service_replication_instance = azure_native.awsconnector.DatabaseMigrationServiceReplicationInstance("databaseMigrationServiceReplicationInstance",
///     location="pkvlgucpnkkigflvahztr",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "hgieneplknqcgzbvoj",
///         "aws_account_id": "zkpbtrjskcsejrxvaulidr",
///         "aws_properties": {
///             "allocated_storage": 15,
///             "auto_minor_version_upgrade": True,
///             "availability_zone": "ufwkddqfhigljgpouncfjtwjhcm",
///             "dns_name_servers": "gjlforgdkkjubyetzafznct",
///             "engine_version": "ugfhxgag",
///             "free_until": "2024-10-08T03:53:04.775Z",
///             "instance_create_time": "2024-10-08T03:53:04.776Z",
///             "kms_key_id": "kxrelekeobexuugdjmttnolzsntu",
///             "multi_az": True,
///             "network_type": "ognalkhwgr",
///             "pending_modified_values": {
///                 "allocated_storage": 24,
///                 "engine_version": "ljjlnnkamqo",
///                 "multi_az": True,
///                 "network_type": "xgynwurnwuqfirccmedvhphptwx",
///                 "replication_instance_class": "nah",
///             },
///             "preferred_maintenance_window": "cjhj",
///             "publicly_accessible": True,
///             "replication_instance_arn": "kkuagugx",
///             "replication_instance_class": "nrejgjvmp",
///             "replication_instance_identifier": "kmkhuvkgshmfnqrkh",
///             "replication_instance_ipv6_addresses": ["chankbhtkfgmmql"],
///             "replication_instance_private_ip_address": "kzpeupvtv",
///             "replication_instance_private_ip_addresses": ["wpvurjepdvyqsut"],
///             "replication_instance_public_ip_address": "cgolgdimqmrtbs",
///             "replication_instance_public_ip_addresses": ["laguuyhnutmqr"],
///             "replication_instance_status": "prkwehbwglimljckrujss",
///             "replication_subnet_group": {
///                 "replication_subnet_group_description": "octprj",
///                 "replication_subnet_group_identifier": "lp",
///                 "subnet_group_status": "u",
///                 "subnets": [{
///                     "subnet_availability_zone": {
///                         "name": "zkqyndrxrxjgvbcwycfd",
///                     },
///                     "subnet_identifier": "bbjyuchlt",
///                     "subnet_status": "pzsp",
///                 }],
///                 "supported_network_types": ["flrojgbtzlv"],
///                 "vpc_id": "zsg",
///             },
///             "secondary_availability_zone": "gfricycigffhmqcwzxxzwevrwf",
///             "vpc_security_groups": [{
///                 "status": "tioerjd",
///                 "vpc_security_group_id": "szupfofnwyrfpcpwi",
///             }],
///         },
///         "aws_region": "xflnvjqertqoawntyvmyorzemmx",
///         "aws_source_schema": "aj",
///         "aws_tags": {
///             "key1826": "hcitjgulaiuhknjncqdri",
///         },
///         "public_cloud_connectors_resource_id": "oafkmlxerdytgq",
///         "public_cloud_resource_name": "ajrdejnsykvcfzomaktse",
///     },
///     resource_group_name="rgdatabaseMigrationServiceReplicationInstance",
///     tags={
///         "key2694": "vgcrgktfjprhiqwtucfsqt",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   databaseMigrationServiceReplicationInstance:
///     type: azure-native:awsconnector:DatabaseMigrationServiceReplicationInstance
///     properties:
///       location: pkvlgucpnkkigflvahztr
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: hgieneplknqcgzbvoj
///         awsAccountId: zkpbtrjskcsejrxvaulidr
///         awsProperties:
///           allocatedStorage: 15
///           autoMinorVersionUpgrade: true
///           availabilityZone: ufwkddqfhigljgpouncfjtwjhcm
///           dnsNameServers: gjlforgdkkjubyetzafznct
///           engineVersion: ugfhxgag
///           freeUntil: 2024-10-08T03:53:04.775Z
///           instanceCreateTime: 2024-10-08T03:53:04.776Z
///           kmsKeyId: kxrelekeobexuugdjmttnolzsntu
///           multiAZ: true
///           networkType: ognalkhwgr
///           pendingModifiedValues:
///             allocatedStorage: 24
///             engineVersion: ljjlnnkamqo
///             multiAZ: true
///             networkType: xgynwurnwuqfirccmedvhphptwx
///             replicationInstanceClass: nah
///           preferredMaintenanceWindow: cjhj
///           publiclyAccessible: true
///           replicationInstanceArn: kkuagugx
///           replicationInstanceClass: nrejgjvmp
///           replicationInstanceIdentifier: kmkhuvkgshmfnqrkh
///           replicationInstanceIpv6Addresses:
///             - chankbhtkfgmmql
///           replicationInstancePrivateIpAddress: kzpeupvtv
///           replicationInstancePrivateIpAddresses:
///             - wpvurjepdvyqsut
///           replicationInstancePublicIpAddress: cgolgdimqmrtbs
///           replicationInstancePublicIpAddresses:
///             - laguuyhnutmqr
///           replicationInstanceStatus: prkwehbwglimljckrujss
///           replicationSubnetGroup:
///             replicationSubnetGroupDescription: octprj
///             replicationSubnetGroupIdentifier: lp
///             subnetGroupStatus: u
///             subnets:
///               - subnetAvailabilityZone:
///                   name: zkqyndrxrxjgvbcwycfd
///                 subnetIdentifier: bbjyuchlt
///                 subnetStatus: pzsp
///             supportedNetworkTypes:
///               - flrojgbtzlv
///             vpcId: zsg
///           secondaryAvailabilityZone: gfricycigffhmqcwzxxzwevrwf
///           vpcSecurityGroups:
///             - status: tioerjd
///               vpcSecurityGroupId: szupfofnwyrfpcpwi
///         awsRegion: xflnvjqertqoawntyvmyorzemmx
///         awsSourceSchema: aj
///         awsTags:
///           key1826: hcitjgulaiuhknjncqdri
///         publicCloudConnectorsResourceId: oafkmlxerdytgq
///         publicCloudResourceName: ajrdejnsykvcfzomaktse
///       resourceGroupName: rgdatabaseMigrationServiceReplicationInstance
///       tags:
///         key2694: vgcrgktfjprhiqwtucfsqt
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
/// $ pulumi import azure-native:awsconnector:DatabaseMigrationServiceReplicationInstance jiexnixxixjsyxn /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/databaseMigrationServiceReplicationInstances/{name}
/// ```
class DatabaseMigrationServiceReplicationInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<DatabaseMigrationServiceReplicationInstancePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DatabaseMigrationServiceReplicationInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseMigrationServiceReplicationInstance]. {@macro pulumi_awsconnector_database_migration_service_replication_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseMigrationServiceReplicationInstance(
    String name, {
    DatabaseMigrationServiceReplicationInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:awsconnector:DatabaseMigrationServiceReplicationInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DatabaseMigrationServiceReplicationInstancePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseMigrationServiceReplicationInstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
