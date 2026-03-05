import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_args.dart';
import 'get_accounts_result.dart';
import 'get_audit_policies_args.dart';
import 'get_audit_policies_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_serverless_instances_args.dart';
import 'get_serverless_instances_result.dart';
import 'get_sharding_network_private_addresses_args.dart';
import 'get_sharding_network_private_addresses_result.dart';
import 'get_sharding_network_public_addresses_args.dart';
import 'get_sharding_network_public_addresses_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Mongodb Accounts of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.148.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.mongodb.getAccounts({
///     instanceId: "example_value",
///     accountName: "root",
/// });
/// export const mongodbAccountId1 = example.then(example => example.accounts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.mongodb.get_accounts(instance_id="example_value",
///     account_name="root")
/// pulumi.export("mongodbAccountId1", example.accounts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.MongoDB.GetAccounts.Invoke(new()
///     {
///         InstanceId = "example_value",
///         AccountName = "root",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mongodbAccountId1"] = example.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mongodb.GetAccounts(ctx, &mongodb.GetAccountsArgs{
/// 			InstanceId:  "example_value",
/// 			AccountName: pulumi.StringRef("root"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mongodbAccountId1", example.Accounts[0].Id)
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetAccountsArgs;
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
///         final var example = MongodbFunctions.getAccounts(GetAccountsArgs.builder()
///             .instanceId("example_value")
///             .accountName("root")
///             .build());
///
///         ctx.export("mongodbAccountId1", example.accounts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:mongodb:getAccounts
///       arguments:
///         instanceId: example_value
///         accountName: root
/// outputs:
///   mongodbAccountId1: ${example.accounts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mongodb_get_accounts_get_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountsResult> getAccounts(
  GetAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mongodb/getAccounts:getAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountsResult.fromMap(result);
}

/// This data source provides the Mongodb Audit Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.148.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.mongodb.getAuditPolicies({
///     dbInstanceId: "example_value",
/// });
/// export const mongodbAuditPolicyId1 = example.then(example => example.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.mongodb.get_audit_policies(db_instance_id="example_value")
/// pulumi.export("mongodbAuditPolicyId1", example.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.MongoDB.GetAuditPolicies.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mongodbAuditPolicyId1"] = example.Apply(getAuditPoliciesResult => getAuditPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mongodb.GetAuditPolicies(ctx, &mongodb.GetAuditPoliciesArgs{
/// 			DbInstanceId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mongodbAuditPolicyId1", example.Policies[0].Id)
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetAuditPoliciesArgs;
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
///         final var example = MongodbFunctions.getAuditPolicies(GetAuditPoliciesArgs.builder()
///             .dbInstanceId("example_value")
///             .build());
///
///         ctx.export("mongodbAuditPolicyId1", example.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:mongodb:getAuditPolicies
///       arguments:
///         dbInstanceId: example_value
/// outputs:
///   mongodbAuditPolicyId1: ${example.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mongodb_get_audit_policies_get_audit_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuditPoliciesResult> getAuditPolicies(
  GetAuditPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mongodb/getAuditPolicies:getAuditPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuditPoliciesResult.fromMap(result);
}

/// This data source provides the MongoDB Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.13.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.mongodb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.zones?.[0]?.id,
/// }));
/// const defaultGetSecurityGroups = defaultGetNetworks.then(defaultGetNetworks => alicloud.ecs.getSecurityGroups({
///     vpcId: defaultGetNetworks.ids?.[0],
/// }));
/// const defaultInstance = new alicloud.mongodb.Instance("default", {
///     engineVersion: "4.4",
///     dbInstanceClass: "mdb.shard.2x.xlarge.d",
///     dbInstanceStorage: 20,
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     name: name,
///     tags: {
///         Created: "TF",
///         For: "Instance",
///     },
/// });
/// const ids = alicloud.mongodb.getInstancesOutput({
///     ids: [defaultInstance.id],
/// });
/// export const mongodbInstancesId0 = ids.apply(ids => ids.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.mongodb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[0].id)
/// default_get_security_groups = alicloud.ecs.get_security_groups(vpc_id=default_get_networks.ids[0])
/// default_instance = alicloud.mongodb.Instance("default",
///     engine_version="4.4",
///     db_instance_class="mdb.shard.2x.xlarge.d",
///     db_instance_storage=20,
///     vswitch_id=default_get_switches.ids[0],
///     name=name,
///     tags={
///         "Created": "TF",
///         "For": "Instance",
///     })
/// ids = alicloud.mongodb.get_instances_output(ids=[default_instance.id])
/// pulumi.export("mongodbInstancesId0", ids.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.MongoDB.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultGetSecurityGroups = AliCloud.Ecs.GetSecurityGroups.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultInstance = new AliCloud.MongoDB.Instance("default", new()
///     {
///         EngineVersion = "4.4",
///         DbInstanceClass = "mdb.shard.2x.xlarge.d",
///         DbInstanceStorage = 20,
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         Name = name,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Instance" },
///         },
///     });
///
///     var ids = AliCloud.MongoDB.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultInstance.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mongodbInstancesId0"] = ids.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := mongodb.GetZones(ctx, &mongodb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("default-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.GetSecurityGroups(ctx, &ecs.GetSecurityGroupsArgs{
/// 			VpcId: pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := mongodb.NewInstance(ctx, "default", &mongodb.InstanceArgs{
/// 			EngineVersion:     pulumi.String("4.4"),
/// 			DbInstanceClass:   pulumi.String("mdb.shard.2x.xlarge.d"),
/// 			DbInstanceStorage: pulumi.Int(20),
/// 			VswitchId:         pulumi.String(defaultGetSwitches.Ids[0]),
/// 			Name:              pulumi.String(name),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Instance"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := mongodb.GetInstancesOutput(ctx, mongodb.GetInstancesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultInstance.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("mongodbInstancesId0", ids.ApplyT(func(ids mongodb.GetInstancesResult) (*string, error) {
/// 			return &ids.Instances[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetSecurityGroupsArgs;
/// import com.pulumi.alicloud.mongodb.Instance;
/// import com.pulumi.alicloud.mongodb.InstanceArgs;
/// import com.pulumi.alicloud.mongodb.inputs.GetInstancesArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = MongodbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         final var defaultGetSecurityGroups = EcsFunctions.getSecurityGroups(GetSecurityGroupsArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engineVersion("4.4")
///             .dbInstanceClass("mdb.shard.2x.xlarge.d")
///             .dbInstanceStorage(20)
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .name(name)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Instance")
///             ))
///             .build());
///
///         final var ids = MongodbFunctions.getInstances(GetInstancesArgs.builder()
///             .ids(defaultInstance.id())
///             .build());
///
///         ctx.export("mongodbInstancesId0", ids.applyValue(_ids -> _ids.instances()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultInstance:
///     type: alicloud:mongodb:Instance
///     name: default
///     properties:
///       engineVersion: '4.4'
///       dbInstanceClass: mdb.shard.2x.xlarge.d
///       dbInstanceStorage: 20
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       name: ${name}
///       tags:
///         Created: TF
///         For: Instance
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:mongodb:getZones
///       arguments: {}
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: default-NODELETING
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.zones[0].id}
///   defaultGetSecurityGroups:
///     fn::invoke:
///       function: alicloud:ecs:getSecurityGroups
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///   ids:
///     fn::invoke:
///       function: alicloud:mongodb:getInstances
///       arguments:
///         ids:
///           - ${defaultInstance.id}
/// outputs:
///   mongodbInstancesId0: ${ids.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mongodb_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mongodb/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Mongodb Serverless Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.148.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.mongodb.getServerlessInstances({
///     ids: ["example_value"],
///     dbInstanceClass: "example_value",
///     dbInstanceDescription: "example_value",
///     networkType: "VPC",
///     resourceGroupId: "example_value",
///     status: "Running",
///     vpcId: "example_value",
///     vswitchId: "example_value",
///     zoneId: "example_value",
///     tags: {
///         Created: "MongodbServerlessInstance",
///         For: "TF",
///     },
/// });
/// export const mongodbServerlessInstanceId1 = example.then(example => example.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.mongodb.get_serverless_instances(ids=["example_value"],
///     db_instance_class="example_value",
///     db_instance_description="example_value",
///     network_type="VPC",
///     resource_group_id="example_value",
///     status="Running",
///     vpc_id="example_value",
///     vswitch_id="example_value",
///     zone_id="example_value",
///     tags={
///         "Created": "MongodbServerlessInstance",
///         "For": "TF",
///     })
/// pulumi.export("mongodbServerlessInstanceId1", example.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.MongoDB.GetServerlessInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         DbInstanceClass = "example_value",
///         DbInstanceDescription = "example_value",
///         NetworkType = "VPC",
///         ResourceGroupId = "example_value",
///         Status = "Running",
///         VpcId = "example_value",
///         VswitchId = "example_value",
///         ZoneId = "example_value",
///         Tags =
///         {
///             { "Created", "MongodbServerlessInstance" },
///             { "For", "TF" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mongodbServerlessInstanceId1"] = example.Apply(getServerlessInstancesResult => getServerlessInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mongodb.GetServerlessInstances(ctx, &mongodb.GetServerlessInstancesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			DbInstanceClass:       pulumi.StringRef("example_value"),
/// 			DbInstanceDescription: pulumi.StringRef("example_value"),
/// 			NetworkType:           pulumi.StringRef("VPC"),
/// 			ResourceGroupId:       pulumi.StringRef("example_value"),
/// 			Status:                pulumi.StringRef("Running"),
/// 			VpcId:                 pulumi.StringRef("example_value"),
/// 			VswitchId:             pulumi.StringRef("example_value"),
/// 			ZoneId:                pulumi.StringRef("example_value"),
/// 			Tags: map[string]interface{}{
/// 				"Created": "MongodbServerlessInstance",
/// 				"For":     "TF",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mongodbServerlessInstanceId1", example.Instances[0].Id)
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetServerlessInstancesArgs;
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
///         final var example = MongodbFunctions.getServerlessInstances(GetServerlessInstancesArgs.builder()
///             .ids("example_value")
///             .dbInstanceClass("example_value")
///             .dbInstanceDescription("example_value")
///             .networkType("VPC")
///             .resourceGroupId("example_value")
///             .status("Running")
///             .vpcId("example_value")
///             .vswitchId("example_value")
///             .zoneId("example_value")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "MongodbServerlessInstance"),
///                 Map.entry("For", "TF")
///             ))
///             .build());
///
///         ctx.export("mongodbServerlessInstanceId1", example.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:mongodb:getServerlessInstances
///       arguments:
///         ids:
///           - example_value
///         dbInstanceClass: example_value
///         dbInstanceDescription: example_value
///         networkType: VPC
///         resourceGroupId: example_value
///         status: Running
///         vpcId: example_value
///         vswitchId: example_value
///         zoneId: example_value
///         tags:
///           Created: MongodbServerlessInstance
///           For: TF
/// outputs:
///   mongodbServerlessInstanceId1: ${example.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mongodb_get_serverless_instances_get_serverless_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerlessInstancesResult> getServerlessInstances(
  GetServerlessInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mongodb/getServerlessInstances:getServerlessInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerlessInstancesResult.fromMap(result);
}

/// This data source provides the Mongodb Sharding Network Private Addresses of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.157.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.mongodb.getShardingNetworkPrivateAddresses({
///     dbInstanceId: "example_value",
///     nodeId: "example_value",
///     role: "Primary",
/// });
/// export const mongodbShardingNetworkPrivateAddressId1 = example.then(example => example.addresses?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.mongodb.get_sharding_network_private_addresses(db_instance_id="example_value",
///     node_id="example_value",
///     role="Primary")
/// pulumi.export("mongodbShardingNetworkPrivateAddressId1", example.addresses[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.MongoDB.GetShardingNetworkPrivateAddresses.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         NodeId = "example_value",
///         Role = "Primary",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mongodbShardingNetworkPrivateAddressId1"] = example.Apply(getShardingNetworkPrivateAddressesResult => getShardingNetworkPrivateAddressesResult.Addresses[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mongodb.GetShardingNetworkPrivateAddresses(ctx, &mongodb.GetShardingNetworkPrivateAddressesArgs{
/// 			DbInstanceId: "example_value",
/// 			NodeId:       pulumi.StringRef("example_value"),
/// 			Role:         pulumi.StringRef("Primary"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mongodbShardingNetworkPrivateAddressId1", example.Addresses[0].Id)
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetShardingNetworkPrivateAddressesArgs;
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
///         final var example = MongodbFunctions.getShardingNetworkPrivateAddresses(GetShardingNetworkPrivateAddressesArgs.builder()
///             .dbInstanceId("example_value")
///             .nodeId("example_value")
///             .role("Primary")
///             .build());
///
///         ctx.export("mongodbShardingNetworkPrivateAddressId1", example.addresses()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:mongodb:getShardingNetworkPrivateAddresses
///       arguments:
///         dbInstanceId: example_value
///         nodeId: example_value
///         role: Primary
/// outputs:
///   mongodbShardingNetworkPrivateAddressId1: ${example.addresses[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mongodb_get_sharding_network_private_addresses_get_sharding_network_private_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShardingNetworkPrivateAddressesResult> getShardingNetworkPrivateAddresses(
  GetShardingNetworkPrivateAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mongodb/getShardingNetworkPrivateAddresses:getShardingNetworkPrivateAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShardingNetworkPrivateAddressesResult.fromMap(result);
}

/// This data source provides the Mongodb Sharding Network Public Addresses of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.149.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.mongodb.getShardingNetworkPublicAddresses({
///     dbInstanceId: "example_value",
///     nodeId: "example_value",
///     role: "Primary",
/// });
/// export const mongodbShardingNetworkPublicAddressDbInstanceId1 = example.then(example => example.addresses?.[0]?.dbInstanceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.mongodb.get_sharding_network_public_addresses(db_instance_id="example_value",
///     node_id="example_value",
///     role="Primary")
/// pulumi.export("mongodbShardingNetworkPublicAddressDbInstanceId1", example.addresses[0].db_instance_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.MongoDB.GetShardingNetworkPublicAddresses.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         NodeId = "example_value",
///         Role = "Primary",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mongodbShardingNetworkPublicAddressDbInstanceId1"] = example.Apply(getShardingNetworkPublicAddressesResult => getShardingNetworkPublicAddressesResult.Addresses[0]?.DbInstanceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mongodb.GetShardingNetworkPublicAddresses(ctx, &mongodb.GetShardingNetworkPublicAddressesArgs{
/// 			DbInstanceId: "example_value",
/// 			NodeId:       pulumi.StringRef("example_value"),
/// 			Role:         pulumi.StringRef("Primary"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mongodbShardingNetworkPublicAddressDbInstanceId1", example.Addresses[0].DbInstanceId)
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetShardingNetworkPublicAddressesArgs;
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
///         final var example = MongodbFunctions.getShardingNetworkPublicAddresses(GetShardingNetworkPublicAddressesArgs.builder()
///             .dbInstanceId("example_value")
///             .nodeId("example_value")
///             .role("Primary")
///             .build());
///
///         ctx.export("mongodbShardingNetworkPublicAddressDbInstanceId1", example.addresses()[0].dbInstanceId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:mongodb:getShardingNetworkPublicAddresses
///       arguments:
///         dbInstanceId: example_value
///         nodeId: example_value
///         role: Primary
/// outputs:
///   mongodbShardingNetworkPublicAddressDbInstanceId1: ${example.addresses[0].dbInstanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mongodb_get_sharding_network_public_addresses_get_sharding_network_public_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShardingNetworkPublicAddressesResult> getShardingNetworkPublicAddresses(
  GetShardingNetworkPublicAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mongodb/getShardingNetworkPublicAddresses:getShardingNetworkPublicAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShardingNetworkPublicAddressesResult.fromMap(result);
}

/// This data source provides availability zones for mongoDB that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// &gt; **NOTE:** Available in v1.73.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const zonesIds = alicloud.mongodb.getZones({});
/// // Create an mongoDB instance with the first matched zone
/// const mongodb = new alicloud.mongodb.Instance("mongodb", {zoneId: zonesIds.then(zonesIds => zonesIds.zones?.[0]?.id)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// zones_ids = alicloud.mongodb.get_zones()
/// # Create an mongoDB instance with the first matched zone
/// mongodb = alicloud.mongodb.Instance("mongodb", zone_id=zones_ids.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var zonesIds = AliCloud.MongoDB.GetZones.Invoke();
///
///     // Create an mongoDB instance with the first matched zone
///     var mongodb = new AliCloud.MongoDB.Instance("mongodb", new()
///     {
///         ZoneId = zonesIds.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		zonesIds, err := mongodb.GetZones(ctx, &mongodb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create an mongoDB instance with the first matched zone
/// 		_, err = mongodb.NewInstance(ctx, "mongodb", &mongodb.InstanceArgs{
/// 			ZoneId: pulumi.String(zonesIds.Zones[0].Id),
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.mongodb.Instance;
/// import com.pulumi.alicloud.mongodb.InstanceArgs;
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
///         // Declare the data source
///         final var zonesIds = MongodbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         // Create an mongoDB instance with the first matched zone
///         var mongodb = new Instance("mongodb", InstanceArgs.builder()
///             .zoneId(zonesIds.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create an mongoDB instance with the first matched zone
///   mongodb:
///     type: alicloud:mongodb:Instance
///     properties:
///       zoneId: ${zonesIds.zones[0].id}
/// variables:
///   # Declare the data source
///   zonesIds:
///     fn::invoke:
///       function: alicloud:mongodb:getZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mongodb_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mongodb/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
