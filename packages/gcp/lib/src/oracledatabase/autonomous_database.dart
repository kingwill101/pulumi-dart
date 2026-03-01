import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_args.dart';
import 'autonomous_database_properties.dart';
import 'autonomous_database_source_config.dart';

/// An AutonomousDatabase resource.
///
///
/// To get more information about AutonomousDatabase, see:
///
/// * [API documentation](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.autonomousDatabases)
/// * How-to Guides
/// * [Create Autonomous databases](https://cloud.google.com/oracle/database/docs/create-databases)
///
/// ## Example Usage
///
/// ### Oracledatabase Autonomous Database Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
///     name: "new",
///     project: "my-project",
/// });
/// const myADB = new gcp.oracledatabase.AutonomousDatabase("myADB", {
///     autonomousDatabaseId: "my-instance",
///     location: "us-east4",
///     project: "my-project",
///     database: "mydatabase",
///     adminPassword: "123Abpassword",
///     network: _default.then(_default => _default.id),
///     cidr: "10.5.0.0/24",
///     properties: {
///         computeCount: 2,
///         dataStorageSizeTb: 1,
///         dbVersion: "19c",
///         dbWorkload: "OLTP",
///         licenseType: "LICENSE_INCLUDED",
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="new",
///     project="my-project")
/// my_adb = gcp.oracledatabase.AutonomousDatabase("myADB",
///     autonomous_database_id="my-instance",
///     location="us-east4",
///     project="my-project",
///     database="mydatabase",
///     admin_password="123Abpassword",
///     network=default.id,
///     cidr="10.5.0.0/24",
///     properties={
///         "compute_count": 2,
///         "data_storage_size_tb": 1,
///         "db_version": "19c",
///         "db_workload": "OLTP",
///         "license_type": "LICENSE_INCLUDED",
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "new",
///         Project = "my-project",
///     });
///
///     var myADB = new Gcp.OracleDatabase.AutonomousDatabase("myADB", new()
///     {
///         AutonomousDatabaseId = "my-instance",
///         Location = "us-east4",
///         Project = "my-project",
///         Database = "mydatabase",
///         AdminPassword = "123Abpassword",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///         Cidr = "10.5.0.0/24",
///         Properties = new Gcp.OracleDatabase.Inputs.AutonomousDatabasePropertiesArgs
///         {
///             ComputeCount = 2,
///             DataStorageSizeTb = 1,
///             DbVersion = "19c",
///             DbWorkload = "OLTP",
///             LicenseType = "LICENSE_INCLUDED",
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name:    "new",
/// 			Project: pulumi.StringRef("my-project"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracledatabase.NewAutonomousDatabase(ctx, "myADB", &oracledatabase.AutonomousDatabaseArgs{
/// 			AutonomousDatabaseId: pulumi.String("my-instance"),
/// 			Location:             pulumi.String("us-east4"),
/// 			Project:              pulumi.String("my-project"),
/// 			Database:             pulumi.String("mydatabase"),
/// 			AdminPassword:        pulumi.String("123Abpassword"),
/// 			Network:              pulumi.String(_default.Id),
/// 			Cidr:                 pulumi.String("10.5.0.0/24"),
/// 			Properties: &oracledatabase.AutonomousDatabasePropertiesArgs{
/// 				ComputeCount:      pulumi.Float64(2),
/// 				DataStorageSizeTb: pulumi.Int(1),
/// 				DbVersion:         pulumi.String("19c"),
/// 				DbWorkload:        pulumi.String("OLTP"),
/// 				LicenseType:       pulumi.String("LICENSE_INCLUDED"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.oracledatabase.AutonomousDatabase;
/// import com.pulumi.gcp.oracledatabase.AutonomousDatabaseArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.AutonomousDatabasePropertiesArgs;
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
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("new")
///             .project("my-project")
///             .build());
///
///         var myADB = new AutonomousDatabase("myADB", AutonomousDatabaseArgs.builder()
///             .autonomousDatabaseId("my-instance")
///             .location("us-east4")
///             .project("my-project")
///             .database("mydatabase")
///             .adminPassword("123Abpassword")
///             .network(default_.id())
///             .cidr("10.5.0.0/24")
///             .properties(AutonomousDatabasePropertiesArgs.builder()
///                 .computeCount(2.0)
///                 .dataStorageSizeTb(1)
///                 .dbVersion("19c")
///                 .dbWorkload("OLTP")
///                 .licenseType("LICENSE_INCLUDED")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myADB:
///     type: gcp:oracledatabase:AutonomousDatabase
///     properties:
///       autonomousDatabaseId: my-instance
///       location: us-east4
///       project: my-project
///       database: mydatabase
///       adminPassword: 123Abpassword
///       network: ${default.id}
///       cidr: 10.5.0.0/24
///       properties:
///         computeCount: '2'
///         dataStorageSizeTb: '1'
///         dbVersion: 19c
///         dbWorkload: OLTP
///         licenseType: LICENSE_INCLUDED
///       deletionProtection: 'true'
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: new
///         project: my-project
/// ```
///
/// ### Oracledatabase Autonomous Database Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
///     name: "new",
///     project: "my-project",
/// });
/// const myADB = new gcp.oracledatabase.AutonomousDatabase("myADB", {
///     autonomousDatabaseId: "my-instance",
///     location: "us-east4",
///     project: "my-project",
///     displayName: "autonomousDatabase displayname",
///     database: "mydatabase",
///     adminPassword: "123Abpassword",
///     network: _default.then(_default => _default.id),
///     cidr: "10.5.0.0/24",
///     labels: {
///         "label-one": "value-one",
///     },
///     properties: {
///         computeCount: 2,
///         dataStorageSizeGb: 48,
///         dbVersion: "19c",
///         dbEdition: "STANDARD_EDITION",
///         dbWorkload: "OLTP",
///         isAutoScalingEnabled: true,
///         licenseType: "BRING_YOUR_OWN_LICENSE",
///         backupRetentionPeriodDays: 60,
///         characterSet: "AL32UTF8",
///         isStorageAutoScalingEnabled: false,
///         maintenanceScheduleType: "REGULAR",
///         mtlsConnectionRequired: false,
///         nCharacterSet: "AL16UTF16",
///         operationsInsightsState: "NOT_ENABLED",
///         customerContacts: [{
///             email: "xyz@example.com",
///         }],
///         privateEndpointIp: "10.5.0.11",
///         privateEndpointLabel: "myendpoint",
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="new",
///     project="my-project")
/// my_adb = gcp.oracledatabase.AutonomousDatabase("myADB",
///     autonomous_database_id="my-instance",
///     location="us-east4",
///     project="my-project",
///     display_name="autonomousDatabase displayname",
///     database="mydatabase",
///     admin_password="123Abpassword",
///     network=default.id,
///     cidr="10.5.0.0/24",
///     labels={
///         "label-one": "value-one",
///     },
///     properties={
///         "compute_count": 2,
///         "data_storage_size_gb": 48,
///         "db_version": "19c",
///         "db_edition": "STANDARD_EDITION",
///         "db_workload": "OLTP",
///         "is_auto_scaling_enabled": True,
///         "license_type": "BRING_YOUR_OWN_LICENSE",
///         "backup_retention_period_days": 60,
///         "character_set": "AL32UTF8",
///         "is_storage_auto_scaling_enabled": False,
///         "maintenance_schedule_type": "REGULAR",
///         "mtls_connection_required": False,
///         "n_character_set": "AL16UTF16",
///         "operations_insights_state": "NOT_ENABLED",
///         "customer_contacts": [{
///             "email": "xyz@example.com",
///         }],
///         "private_endpoint_ip": "10.5.0.11",
///         "private_endpoint_label": "myendpoint",
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "new",
///         Project = "my-project",
///     });
///
///     var myADB = new Gcp.OracleDatabase.AutonomousDatabase("myADB", new()
///     {
///         AutonomousDatabaseId = "my-instance",
///         Location = "us-east4",
///         Project = "my-project",
///         DisplayName = "autonomousDatabase displayname",
///         Database = "mydatabase",
///         AdminPassword = "123Abpassword",
///         Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
///         Cidr = "10.5.0.0/24",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Properties = new Gcp.OracleDatabase.Inputs.AutonomousDatabasePropertiesArgs
///         {
///             ComputeCount = 2,
///             DataStorageSizeGb = 48,
///             DbVersion = "19c",
///             DbEdition = "STANDARD_EDITION",
///             DbWorkload = "OLTP",
///             IsAutoScalingEnabled = true,
///             LicenseType = "BRING_YOUR_OWN_LICENSE",
///             BackupRetentionPeriodDays = 60,
///             CharacterSet = "AL32UTF8",
///             IsStorageAutoScalingEnabled = false,
///             MaintenanceScheduleType = "REGULAR",
///             MtlsConnectionRequired = false,
///             NCharacterSet = "AL16UTF16",
///             OperationsInsightsState = "NOT_ENABLED",
///             CustomerContacts = new[]
///             {
///                 new Gcp.OracleDatabase.Inputs.AutonomousDatabasePropertiesCustomerContactArgs
///                 {
///                     Email = "xyz@example.com",
///                 },
///             },
///             PrivateEndpointIp = "10.5.0.11",
///             PrivateEndpointLabel = "myendpoint",
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name:    "new",
/// 			Project: pulumi.StringRef("my-project"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oracledatabase.NewAutonomousDatabase(ctx, "myADB", &oracledatabase.AutonomousDatabaseArgs{
/// 			AutonomousDatabaseId: pulumi.String("my-instance"),
/// 			Location:             pulumi.String("us-east4"),
/// 			Project:              pulumi.String("my-project"),
/// 			DisplayName:          pulumi.String("autonomousDatabase displayname"),
/// 			Database:             pulumi.String("mydatabase"),
/// 			AdminPassword:        pulumi.String("123Abpassword"),
/// 			Network:              pulumi.String(_default.Id),
/// 			Cidr:                 pulumi.String("10.5.0.0/24"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Properties: &oracledatabase.AutonomousDatabasePropertiesArgs{
/// 				ComputeCount:                pulumi.Float64(2),
/// 				DataStorageSizeGb:           pulumi.Int(48),
/// 				DbVersion:                   pulumi.String("19c"),
/// 				DbEdition:                   pulumi.String("STANDARD_EDITION"),
/// 				DbWorkload:                  pulumi.String("OLTP"),
/// 				IsAutoScalingEnabled:        pulumi.Bool(true),
/// 				LicenseType:                 pulumi.String("BRING_YOUR_OWN_LICENSE"),
/// 				BackupRetentionPeriodDays:   pulumi.Int(60),
/// 				CharacterSet:                pulumi.String("AL32UTF8"),
/// 				IsStorageAutoScalingEnabled: pulumi.Bool(false),
/// 				MaintenanceScheduleType:     pulumi.String("REGULAR"),
/// 				MtlsConnectionRequired:      pulumi.Bool(false),
/// 				NCharacterSet:               pulumi.String("AL16UTF16"),
/// 				OperationsInsightsState:     pulumi.String("NOT_ENABLED"),
/// 				CustomerContacts: oracledatabase.AutonomousDatabasePropertiesCustomerContactArray{
/// 					&oracledatabase.AutonomousDatabasePropertiesCustomerContactArgs{
/// 						Email: pulumi.String("xyz@example.com"),
/// 					},
/// 				},
/// 				PrivateEndpointIp:    pulumi.String("10.5.0.11"),
/// 				PrivateEndpointLabel: pulumi.String("myendpoint"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.oracledatabase.AutonomousDatabase;
/// import com.pulumi.gcp.oracledatabase.AutonomousDatabaseArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.AutonomousDatabasePropertiesArgs;
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
///         final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("new")
///             .project("my-project")
///             .build());
///
///         var myADB = new AutonomousDatabase("myADB", AutonomousDatabaseArgs.builder()
///             .autonomousDatabaseId("my-instance")
///             .location("us-east4")
///             .project("my-project")
///             .displayName("autonomousDatabase displayname")
///             .database("mydatabase")
///             .adminPassword("123Abpassword")
///             .network(default_.id())
///             .cidr("10.5.0.0/24")
///             .labels(Map.of("label-one", "value-one"))
///             .properties(AutonomousDatabasePropertiesArgs.builder()
///                 .computeCount(2.0)
///                 .dataStorageSizeGb(48)
///                 .dbVersion("19c")
///                 .dbEdition("STANDARD_EDITION")
///                 .dbWorkload("OLTP")
///                 .isAutoScalingEnabled(true)
///                 .licenseType("BRING_YOUR_OWN_LICENSE")
///                 .backupRetentionPeriodDays(60)
///                 .characterSet("AL32UTF8")
///                 .isStorageAutoScalingEnabled(false)
///                 .maintenanceScheduleType("REGULAR")
///                 .mtlsConnectionRequired(false)
///                 .nCharacterSet("AL16UTF16")
///                 .operationsInsightsState("NOT_ENABLED")
///                 .customerContacts(AutonomousDatabasePropertiesCustomerContactArgs.builder()
///                     .email("xyz@example.com")
///                     .build())
///                 .privateEndpointIp("10.5.0.11")
///                 .privateEndpointLabel("myendpoint")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myADB:
///     type: gcp:oracledatabase:AutonomousDatabase
///     properties:
///       autonomousDatabaseId: my-instance
///       location: us-east4
///       project: my-project
///       displayName: autonomousDatabase displayname
///       database: mydatabase
///       adminPassword: 123Abpassword
///       network: ${default.id}
///       cidr: 10.5.0.0/24
///       labels:
///         label-one: value-one
///       properties:
///         computeCount: '2'
///         dataStorageSizeGb: '48'
///         dbVersion: 19c
///         dbEdition: STANDARD_EDITION
///         dbWorkload: OLTP
///         isAutoScalingEnabled: 'true'
///         licenseType: BRING_YOUR_OWN_LICENSE
///         backupRetentionPeriodDays: '60'
///         characterSet: AL32UTF8
///         isStorageAutoScalingEnabled: 'false'
///         maintenanceScheduleType: REGULAR
///         mtlsConnectionRequired: 'false'
///         nCharacterSet: AL16UTF16
///         operationsInsightsState: NOT_ENABLED
///         customerContacts:
///           - email: xyz@example.com
///         privateEndpointIp: 10.5.0.11
///         privateEndpointLabel: myendpoint
///       deletionProtection: 'true'
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: new
///         project: my-project
/// ```
///
/// ### Oracledatabase Autonomous Database Odbnetwork
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myADB = new gcp.oracledatabase.AutonomousDatabase("myADB", {
///     autonomousDatabaseId: "my-instance",
///     location: "europe-west2",
///     project: "my-project",
///     database: "mydatabase",
///     adminPassword: "123Abpassword",
///     odbNetwork: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     properties: {
///         computeCount: 2,
///         dataStorageSizeTb: 1,
///         dbVersion: "19c",
///         dbWorkload: "OLTP",
///         licenseType: "LICENSE_INCLUDED",
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_adb = gcp.oracledatabase.AutonomousDatabase("myADB",
///     autonomous_database_id="my-instance",
///     location="europe-west2",
///     project="my-project",
///     database="mydatabase",
///     admin_password="123Abpassword",
///     odb_network="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///     odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///     properties={
///         "compute_count": 2,
///         "data_storage_size_tb": 1,
///         "db_version": "19c",
///         "db_workload": "OLTP",
///         "license_type": "LICENSE_INCLUDED",
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myADB = new Gcp.OracleDatabase.AutonomousDatabase("myADB", new()
///     {
///         AutonomousDatabaseId = "my-instance",
///         Location = "europe-west2",
///         Project = "my-project",
///         Database = "mydatabase",
///         AdminPassword = "123Abpassword",
///         OdbNetwork = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
///         OdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
///         Properties = new Gcp.OracleDatabase.Inputs.AutonomousDatabasePropertiesArgs
///         {
///             ComputeCount = 2,
///             DataStorageSizeTb = 1,
///             DbVersion = "19c",
///             DbWorkload = "OLTP",
///             LicenseType = "LICENSE_INCLUDED",
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewAutonomousDatabase(ctx, "myADB", &oracledatabase.AutonomousDatabaseArgs{
/// 			AutonomousDatabaseId: pulumi.String("my-instance"),
/// 			Location:             pulumi.String("europe-west2"),
/// 			Project:              pulumi.String("my-project"),
/// 			Database:             pulumi.String("mydatabase"),
/// 			AdminPassword:        pulumi.String("123Abpassword"),
/// 			OdbNetwork:           pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork"),
/// 			OdbSubnet:            pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet"),
/// 			Properties: &oracledatabase.AutonomousDatabasePropertiesArgs{
/// 				ComputeCount:      pulumi.Float64(2),
/// 				DataStorageSizeTb: pulumi.Int(1),
/// 				DbVersion:         pulumi.String("19c"),
/// 				DbWorkload:        pulumi.String("OLTP"),
/// 				LicenseType:       pulumi.String("LICENSE_INCLUDED"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.AutonomousDatabase;
/// import com.pulumi.gcp.oracledatabase.AutonomousDatabaseArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.AutonomousDatabasePropertiesArgs;
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
///         var myADB = new AutonomousDatabase("myADB", AutonomousDatabaseArgs.builder()
///             .autonomousDatabaseId("my-instance")
///             .location("europe-west2")
///             .project("my-project")
///             .database("mydatabase")
///             .adminPassword("123Abpassword")
///             .odbNetwork("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork")
///             .odbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet")
///             .properties(AutonomousDatabasePropertiesArgs.builder()
///                 .computeCount(2.0)
///                 .dataStorageSizeTb(1)
///                 .dbVersion("19c")
///                 .dbWorkload("OLTP")
///                 .licenseType("LICENSE_INCLUDED")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myADB:
///     type: gcp:oracledatabase:AutonomousDatabase
///     properties:
///       autonomousDatabaseId: my-instance
///       location: europe-west2
///       project: my-project
///       database: mydatabase
///       adminPassword: 123Abpassword
///       odbNetwork: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork
///       odbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet
///       properties:
///         computeCount: '2'
///         dataStorageSizeTb: '1'
///         dbVersion: 19c
///         dbWorkload: OLTP
///         licenseType: LICENSE_INCLUDED
///       deletionProtection: 'true'
/// ```
///
/// ### Oracledatabase Autonomous Database Publicip
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myADB = new gcp.oracledatabase.AutonomousDatabase("myADB", {
///     autonomousDatabaseId: "my-instance",
///     location: "europe-west2",
///     project: "my-project",
///     database: "mydatabase",
///     adminPassword: "123Abpassword",
///     properties: {
///         computeCount: 2,
///         dataStorageSizeTb: 1,
///         dbVersion: "19c",
///         dbWorkload: "OLTP",
///         licenseType: "LICENSE_INCLUDED",
///         mtlsConnectionRequired: true,
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_adb = gcp.oracledatabase.AutonomousDatabase("myADB",
///     autonomous_database_id="my-instance",
///     location="europe-west2",
///     project="my-project",
///     database="mydatabase",
///     admin_password="123Abpassword",
///     properties={
///         "compute_count": 2,
///         "data_storage_size_tb": 1,
///         "db_version": "19c",
///         "db_workload": "OLTP",
///         "license_type": "LICENSE_INCLUDED",
///         "mtls_connection_required": True,
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myADB = new Gcp.OracleDatabase.AutonomousDatabase("myADB", new()
///     {
///         AutonomousDatabaseId = "my-instance",
///         Location = "europe-west2",
///         Project = "my-project",
///         Database = "mydatabase",
///         AdminPassword = "123Abpassword",
///         Properties = new Gcp.OracleDatabase.Inputs.AutonomousDatabasePropertiesArgs
///         {
///             ComputeCount = 2,
///             DataStorageSizeTb = 1,
///             DbVersion = "19c",
///             DbWorkload = "OLTP",
///             LicenseType = "LICENSE_INCLUDED",
///             MtlsConnectionRequired = true,
///         },
///         DeletionProtection = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oracledatabase.NewAutonomousDatabase(ctx, "myADB", &oracledatabase.AutonomousDatabaseArgs{
/// 			AutonomousDatabaseId: pulumi.String("my-instance"),
/// 			Location:             pulumi.String("europe-west2"),
/// 			Project:              pulumi.String("my-project"),
/// 			Database:             pulumi.String("mydatabase"),
/// 			AdminPassword:        pulumi.String("123Abpassword"),
/// 			Properties: &oracledatabase.AutonomousDatabasePropertiesArgs{
/// 				ComputeCount:           pulumi.Float64(2),
/// 				DataStorageSizeTb:      pulumi.Int(1),
/// 				DbVersion:              pulumi.String("19c"),
/// 				DbWorkload:             pulumi.String("OLTP"),
/// 				LicenseType:            pulumi.String("LICENSE_INCLUDED"),
/// 				MtlsConnectionRequired: pulumi.Bool(true),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.AutonomousDatabase;
/// import com.pulumi.gcp.oracledatabase.AutonomousDatabaseArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.AutonomousDatabasePropertiesArgs;
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
///         var myADB = new AutonomousDatabase("myADB", AutonomousDatabaseArgs.builder()
///             .autonomousDatabaseId("my-instance")
///             .location("europe-west2")
///             .project("my-project")
///             .database("mydatabase")
///             .adminPassword("123Abpassword")
///             .properties(AutonomousDatabasePropertiesArgs.builder()
///                 .computeCount(2.0)
///                 .dataStorageSizeTb(1)
///                 .dbVersion("19c")
///                 .dbWorkload("OLTP")
///                 .licenseType("LICENSE_INCLUDED")
///                 .mtlsConnectionRequired(true)
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myADB:
///     type: gcp:oracledatabase:AutonomousDatabase
///     properties:
///       autonomousDatabaseId: my-instance
///       location: europe-west2
///       project: my-project
///       database: mydatabase
///       adminPassword: 123Abpassword
///       properties:
///         computeCount: '2'
///         dataStorageSizeTb: '1'
///         dbVersion: 19c
///         dbWorkload: OLTP
///         licenseType: LICENSE_INCLUDED
///         mtlsConnectionRequired: 'true'
///       deletionProtection: 'true'
/// ```
///
/// ## Import
///
/// AutonomousDatabase can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/autonomousDatabases/{{autonomous_database_id}}`
///
/// * `{{project}}/{{location}}/{{autonomous_database_id}}`
///
/// * `{{location}}/{{autonomous_database_id}}`
///
/// When using the `pulumi import` command, AutonomousDatabase can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/autonomousDatabase:AutonomousDatabase default projects/{{project}}/locations/{{location}}/autonomousDatabases/{{autonomous_database_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/autonomousDatabase:AutonomousDatabase default {{project}}/{{location}}/{{autonomous_database_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/autonomousDatabase:AutonomousDatabase default {{location}}/{{autonomous_database_id}}
/// ```
class AutonomousDatabase extends pulumi.CustomResource {
  /// The password for the default ADMIN user.
  late final pulumi.Output<String?> adminPassword;

  /// The ID of the Autonomous Database to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final pulumi.Output<String> autonomousDatabaseId;

  /// The subnet CIDR range for the Autonmous Database.
  late final pulumi.Output<String?> cidr;

  /// The date and time that the Autonomous Database was created.
  late final pulumi.Output<String> createTime;

  /// The name of the Autonomous Database. The database name must be unique in
  /// the project. The name must begin with a letter and can
  /// contain a maximum of 30 alphanumeric characters.
  late final pulumi.Output<String> database;
  late final pulumi.Output<bool?> deletionProtection;

  /// List of supported GCP region to clone the Autonomous Database for disaster recovery.
  late final pulumi.Output<List<String>> disasterRecoverySupportedLocations;

  /// The display name for the Autonomous Database. The name does not have to
  /// be unique within your project.
  late final pulumi.Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The ID of the subscription entitlement associated with the Autonomous
  /// Database.
  late final pulumi.Output<String> entitlementId;

  /// The labels or tags associated with the Autonomous Database.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/AutonomousDatabaseBackup`.
  late final pulumi.Output<String> location;

  /// Identifier. The name of the Autonomous Database resource in the following format:
  /// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
  late final pulumi.Output<String> name;

  /// The name of the VPC network used by the Autonomous Database.
  /// Format: projects/{project}/global/networks/{network}
  late final pulumi.Output<String?> network;

  /// The name of the OdbNetwork associated with the Autonomous Database.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the odb_subnet and backup_odb_subnet.
  late final pulumi.Output<String> odbNetwork;

  /// The name of the OdbSubnet associated with the Autonomous Database for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final pulumi.Output<String> odbSubnet;

  /// The peer Autonomous Database names of the given Autonomous Database.
  late final pulumi.Output<List<String>> peerAutonomousDatabases;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The properties of an Autonomous Database.
  /// Structure is documented below.
  late final pulumi.Output<AutonomousDatabaseProperties> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The source Autonomous Database configuration for the standby Autonomous Database.
  /// Structure is documented below.
  late final pulumi.Output<AutonomousDatabaseSourceConfig?> sourceConfig;

  /// Creates a new [AutonomousDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutonomousDatabase]. {@macro pulumi_oracledatabase_autonomous_database_autonomous_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutonomousDatabase(
    String name, {
    AutonomousDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:oracledatabase/autonomousDatabase:AutonomousDatabase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.adminPassword = registerOutput<String?>('adminPassword');
    this.autonomousDatabaseId = registerOutput<String>('autonomousDatabaseId');
    this.cidr = registerOutput<String?>('cidr');
    this.createTime = registerOutput<String>('createTime');
    this.database = registerOutput<String>('database');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.disasterRecoverySupportedLocations = registerOutput<List<String>>(
      'disasterRecoverySupportedLocations',
    );
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.entitlementId = registerOutput<String>('entitlementId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.odbNetwork = registerOutput<String>('odbNetwork');
    this.odbSubnet = registerOutput<String>('odbSubnet');
    this.peerAutonomousDatabases = registerOutput<List<String>>(
      'peerAutonomousDatabases',
    );
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<AutonomousDatabaseProperties>(
      'properties',
    );
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.sourceConfig = registerOutput<AutonomousDatabaseSourceConfig?>(
      'sourceConfig',
    );
  }
}
