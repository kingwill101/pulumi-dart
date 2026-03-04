import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accounts_args.dart';
import 'get_accounts_result.dart';
import 'get_character_set_names_args.dart';
import 'get_character_set_names_result.dart';
import 'get_class_details_args.dart';
import 'get_class_details_result.dart';
import 'get_collation_time_zones_args.dart';
import 'get_collation_time_zones_result.dart';
import 'get_cross_region_backups_args.dart';
import 'get_cross_region_backups_result.dart';
import 'get_cross_regions_args.dart';
import 'get_cross_regions_result.dart';
import 'get_instance_class_infos_args.dart';
import 'get_instance_class_infos_result.dart';
import 'get_instance_classes_args.dart';
import 'get_instance_classes_result.dart';
import 'get_instance_engines_args.dart';
import 'get_instance_engines_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_modify_parameter_logs_args.dart';
import 'get_modify_parameter_logs_result.dart';
import 'get_rds_backups_args.dart';
import 'get_rds_backups_result.dart';
import 'get_rds_parameter_groups_args.dart';
import 'get_rds_parameter_groups_result.dart';
import 'get_slots_args.dart';
import 'get_slots_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Rds Accounts of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.120.0+.
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
/// const example = alicloud.rds.getAccounts({
///     dbInstanceId: "example_value",
///     nameRegex: "the_resource_name",
/// });
/// export const firstRdsAccountId = example.then(example => example.accounts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rds.get_accounts(db_instance_id="example_value",
///     name_regex="the_resource_name")
/// pulumi.export("firstRdsAccountId", example.accounts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Rds.GetAccounts.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRdsAccountId"] = example.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.GetAccounts(ctx, &rds.GetAccountsArgs{
/// 			DbInstanceId: "example_value",
/// 			NameRegex:    pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRdsAccountId", example.Accounts[0].Id)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetAccountsArgs;
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
///         final var example = RdsFunctions.getAccounts(GetAccountsArgs.builder()
///             .dbInstanceId("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstRdsAccountId", example.accounts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:rds:getAccounts
///       arguments:
///         dbInstanceId: example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstRdsAccountId: ${example.accounts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_accounts_get_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountsResult> getAccounts(
  GetAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getAccounts:getAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountsResult.fromMap(result);
}

/// This data source is the character set supported by querying RDS instances.
///
/// &gt; **NOTE:** Available in v1.198.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const names = alicloud.rds.getCharacterSetNames({
///     engine: "MySQL",
/// });
/// export const firstRdsCharacterSetNames = names.then(names => names.names?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// names = alicloud.rds.get_character_set_names(engine="MySQL")
/// pulumi.export("firstRdsCharacterSetNames", names.names[0])
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
///     var names = AliCloud.Rds.GetCharacterSetNames.Invoke(new()
///     {
///         Engine = "MySQL",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRdsCharacterSetNames"] = names.Apply(getCharacterSetNamesResult => getCharacterSetNamesResult.Names[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		names, err := rds.GetCharacterSetNames(ctx, &rds.GetCharacterSetNamesArgs{
/// 			Engine: "MySQL",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRdsCharacterSetNames", names.Names[0])
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetCharacterSetNamesArgs;
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
///         final var names = RdsFunctions.getCharacterSetNames(GetCharacterSetNamesArgs.builder()
///             .engine("MySQL")
///             .build());
///
///         ctx.export("firstRdsCharacterSetNames", names.names()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   names:
///     fn::invoke:
///       function: alicloud:rds:getCharacterSetNames
///       arguments:
///         engine: MySQL
/// outputs:
///   firstRdsCharacterSetNames: ${names.names[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_character_set_names_get_character_set_names_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCharacterSetNamesResult> getCharacterSetNames(
  GetCharacterSetNamesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getCharacterSetNames:getCharacterSetNames',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCharacterSetNamesResult.fromMap(result);
}

/// This data source provides details of the Rds specifications of current Alibaba Cloud users.
///
/// For information on RDS class details and how to use it, please refer to [What is RDS class details](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeclassdetails).
///
/// &gt; **NOTE:** Available since v1.209.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.rds.getClassDetails({
///     commodityCode: "bards",
///     classCode: "mysql.n4.medium.2c",
///     engineVersion: "8.0",
///     engine: "MySQL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.rds.get_class_details(commodity_code="bards",
///     class_code="mysql.n4.medium.2c",
///     engine_version="8.0",
///     engine="MySQL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Rds.GetClassDetails.Invoke(new()
///     {
///         CommodityCode = "bards",
///         ClassCode = "mysql.n4.medium.2c",
///         EngineVersion = "8.0",
///         Engine = "MySQL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.GetClassDetails(ctx, &rds.GetClassDetailsArgs{
/// 			CommodityCode: "bards",
/// 			ClassCode:     "mysql.n4.medium.2c",
/// 			EngineVersion: "8.0",
/// 			Engine:        "MySQL",
/// 		}, nil)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetClassDetailsArgs;
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
///         final var default = RdsFunctions.getClassDetails(GetClassDetailsArgs.builder()
///             .commodityCode("bards")
///             .classCode("mysql.n4.medium.2c")
///             .engineVersion("8.0")
///             .engine("MySQL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:rds:getClassDetails
///       arguments:
///         commodityCode: bards
///         classCode: mysql.n4.medium.2c
///         engineVersion: '8.0'
///         engine: MySQL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_class_details_get_class_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClassDetailsResult> getClassDetails(
  GetClassDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getClassDetails:getClassDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClassDetailsResult.fromMap(result);
}

/// Operation to query the character set collations and time zones available for use in ApsaraDB RDS.
///
/// &gt; **NOTE:** Available in v1.198.0+.
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
/// const zones = alicloud.rds.getCollationTimeZones({
///     outputFile: "./classes.txt",
/// });
/// export const firstRdsCollationTimeZones = zones.then(zones => zones.collationTimeZones?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// zones = alicloud.rds.get_collation_time_zones(output_file="./classes.txt")
/// pulumi.export("firstRdsCollationTimeZones", zones.collation_time_zones[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zones = AliCloud.Rds.GetCollationTimeZones.Invoke(new()
///     {
///         OutputFile = "./classes.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRdsCollationTimeZones"] = zones.Apply(getCollationTimeZonesResult => getCollationTimeZonesResult.CollationTimeZones[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		zones, err := rds.GetCollationTimeZones(ctx, &rds.GetCollationTimeZonesArgs{
/// 			OutputFile: pulumi.StringRef("./classes.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRdsCollationTimeZones", zones.CollationTimeZones[0])
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetCollationTimeZonesArgs;
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
///         final var zones = RdsFunctions.getCollationTimeZones(GetCollationTimeZonesArgs.builder()
///             .outputFile("./classes.txt")
///             .build());
///
///         ctx.export("firstRdsCollationTimeZones", zones.collationTimeZones()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   zones:
///     fn::invoke:
///       function: alicloud:rds:getCollationTimeZones
///       arguments:
///         outputFile: ./classes.txt
/// outputs:
///   firstRdsCollationTimeZones: ${zones.collationTimeZones[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_collation_time_zones_get_collation_time_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCollationTimeZonesResult> getCollationTimeZones(
  GetCollationTimeZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getCollationTimeZones:getCollationTimeZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCollationTimeZonesResult.fromMap(result);
}

/// This data source provides the Rds Parameter Groups of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.196.0+.
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
/// const backups = alicloud.rds.getCrossRegionBackups({
///     dbInstanceId: "example_value",
///     startTime: "2022-12-01T00:00:00Z",
///     endTime: "2022-12-16T00:00:00Z",
/// });
/// export const firstRdsCrossRegionBackups = backups.then(backups => backups.backups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// backups = alicloud.rds.get_cross_region_backups(db_instance_id="example_value",
///     start_time="2022-12-01T00:00:00Z",
///     end_time="2022-12-16T00:00:00Z")
/// pulumi.export("firstRdsCrossRegionBackups", backups.backups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backups = AliCloud.Rds.GetCrossRegionBackups.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         StartTime = "2022-12-01T00:00:00Z",
///         EndTime = "2022-12-16T00:00:00Z",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRdsCrossRegionBackups"] = backups.Apply(getCrossRegionBackupsResult => getCrossRegionBackupsResult.Backups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		backups, err := rds.GetCrossRegionBackups(ctx, &rds.GetCrossRegionBackupsArgs{
/// 			DbInstanceId: "example_value",
/// 			StartTime:    pulumi.StringRef("2022-12-01T00:00:00Z"),
/// 			EndTime:      pulumi.StringRef("2022-12-16T00:00:00Z"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRdsCrossRegionBackups", backups.Backups[0].Id)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetCrossRegionBackupsArgs;
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
///         final var backups = RdsFunctions.getCrossRegionBackups(GetCrossRegionBackupsArgs.builder()
///             .dbInstanceId("example_value")
///             .startTime("2022-12-01T00:00:00Z")
///             .endTime("2022-12-16T00:00:00Z")
///             .build());
///
///         ctx.export("firstRdsCrossRegionBackups", backups.backups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   backups:
///     fn::invoke:
///       function: alicloud:rds:getCrossRegionBackups
///       arguments:
///         dbInstanceId: example_value
///         startTime: 2022-12-01T00:00:00Z
///         endTime: 2022-12-16T00:00:00Z
/// outputs:
///   firstRdsCrossRegionBackups: ${backups.backups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_cross_region_backups_get_cross_region_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCrossRegionBackupsResult> getCrossRegionBackups(
  GetCrossRegionBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getCrossRegionBackups:getCrossRegionBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCrossRegionBackupsResult.fromMap(result);
}

/// This data source provides an available area for remote disaster recovery for RDS.
///
/// &gt; **NOTE:** Available in v1.193.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const crossRegions = alicloud.rds.getCrossRegions({});
/// export const firstRdsCrossRegions = regions.ids[0];
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// cross_regions = alicloud.rds.get_cross_regions()
/// pulumi.export("firstRdsCrossRegions", regions["ids"][0])
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
///     var crossRegions = AliCloud.Rds.GetCrossRegions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRdsCrossRegions"] = regions.Ids[0],
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		_, err := rds.GetCrossRegions(ctx, &rds.GetCrossRegionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRdsCrossRegions", regions.Ids[0])
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetCrossRegionsArgs;
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
///         final var crossRegions = RdsFunctions.getCrossRegions(GetCrossRegionsArgs.builder()
///             .build());
///
///         ctx.export("firstRdsCrossRegions", regions.ids()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   crossRegions:
///     fn::invoke:
///       function: alicloud:rds:getCrossRegions
///       arguments: {}
/// outputs:
///   firstRdsCrossRegions: ${regions.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_cross_regions_get_cross_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCrossRegionsResult> getCrossRegions(
  GetCrossRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getCrossRegions:getCrossRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCrossRegionsResult.fromMap(result);
}

/// This data source operation to query the instance types that are available to specific instances of Alibaba Cloud.
///
/// &gt; **NOTE:** Available in v1.196.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const resources = alicloud.rds.getInstanceClassInfos({
///     commodityCode: "bards",
///     orderType: "BUY",
///     outputFile: "./classes.txt",
/// });
/// export const firstDbInstanceClass = resources.then(resources => resources.infos?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// resources = alicloud.rds.get_instance_class_infos(commodity_code="bards",
///     order_type="BUY",
///     output_file="./classes.txt")
/// pulumi.export("firstDbInstanceClass", resources.infos[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resources = AliCloud.Rds.GetInstanceClassInfos.Invoke(new()
///     {
///         CommodityCode = "bards",
///         OrderType = "BUY",
///         OutputFile = "./classes.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDbInstanceClass"] = resources.Apply(getInstanceClassInfosResult => getInstanceClassInfosResult.Infos[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		resources, err := rds.GetInstanceClassInfos(ctx, &rds.GetInstanceClassInfosArgs{
/// 			CommodityCode: "bards",
/// 			OrderType:     "BUY",
/// 			OutputFile:    pulumi.StringRef("./classes.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDbInstanceClass", resources.Infos[0])
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetInstanceClassInfosArgs;
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
///         final var resources = RdsFunctions.getInstanceClassInfos(GetInstanceClassInfosArgs.builder()
///             .commodityCode("bards")
///             .orderType("BUY")
///             .outputFile("./classes.txt")
///             .build());
///
///         ctx.export("firstDbInstanceClass", resources.infos()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   resources:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClassInfos
///       arguments:
///         commodityCode: bards
///         orderType: BUY
///         outputFile: ./classes.txt
/// outputs:
///   firstDbInstanceClass: ${resources.infos[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_instance_class_infos_get_instance_class_infos_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceClassInfosResult> getInstanceClassInfos(
  GetInstanceClassInfosArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getInstanceClassInfos:getInstanceClassInfos',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceClassInfosResult.fromMap(result);
}

/// This data source provides the RDS instance classes resource available info of Alibaba Cloud.
///
/// &gt; **NOTE:** Available since v1.46.0
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const resources = alicloud.rds.getInstanceClasses({
///     instanceChargeType: "PostPaid",
///     engine: "MySQL",
///     engineVersion: "5.6",
///     outputFile: "./classes.txt",
/// });
/// export const firstDbInstanceClass = resources.then(resources => resources.instanceClasses?.[0]?.instanceClass);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// resources = alicloud.rds.get_instance_classes(instance_charge_type="PostPaid",
///     engine="MySQL",
///     engine_version="5.6",
///     output_file="./classes.txt")
/// pulumi.export("firstDbInstanceClass", resources.instance_classes[0].instance_class)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resources = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         InstanceChargeType = "PostPaid",
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///         OutputFile = "./classes.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDbInstanceClass"] = resources.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		resources, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			InstanceChargeType: pulumi.StringRef("PostPaid"),
/// 			Engine:             pulumi.StringRef("MySQL"),
/// 			EngineVersion:      pulumi.StringRef("5.6"),
/// 			OutputFile:         pulumi.StringRef("./classes.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDbInstanceClass", resources.InstanceClasses[0].InstanceClass)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetInstanceClassesArgs;
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
///         final var resources = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .instanceChargeType("PostPaid")
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .outputFile("./classes.txt")
///             .build());
///
///         ctx.export("firstDbInstanceClass", resources.instanceClasses()[0].instanceClass());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   resources:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         instanceChargeType: PostPaid
///         engine: MySQL
///         engineVersion: '5.6'
///         outputFile: ./classes.txt
/// outputs:
///   firstDbInstanceClass: ${resources.instanceClasses[0].instanceClass}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_instance_classes_get_instance_classes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceClassesResult> getInstanceClasses(
  GetInstanceClassesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getInstanceClasses:getInstanceClasses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceClassesResult.fromMap(result);
}

/// This data source provides the RDS instance engines resource available info of Alibaba Cloud.
///
/// &gt; **NOTE:** Available in v1.46.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const resources = alicloud.rds.getInstanceEngines({
///     instanceChargeType: "PostPaid",
///     engine: "MySQL",
///     engineVersion: "5.6",
///     outputFile: "./engines.txt",
/// });
/// export const firstDbCategory = resources.then(resources => resources.instanceEngines?.[0]?.category);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// resources = alicloud.rds.get_instance_engines(instance_charge_type="PostPaid",
///     engine="MySQL",
///     engine_version="5.6",
///     output_file="./engines.txt")
/// pulumi.export("firstDbCategory", resources.instance_engines[0].category)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resources = AliCloud.Rds.GetInstanceEngines.Invoke(new()
///     {
///         InstanceChargeType = "PostPaid",
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///         OutputFile = "./engines.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDbCategory"] = resources.Apply(getInstanceEnginesResult => getInstanceEnginesResult.InstanceEngines[0]?.Category),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		resources, err := rds.GetInstanceEngines(ctx, &rds.GetInstanceEnginesArgs{
/// 			InstanceChargeType: pulumi.StringRef("PostPaid"),
/// 			Engine:             pulumi.StringRef("MySQL"),
/// 			EngineVersion:      pulumi.StringRef("5.6"),
/// 			OutputFile:         pulumi.StringRef("./engines.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDbCategory", resources.InstanceEngines[0].Category)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetInstanceEnginesArgs;
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
///         final var resources = RdsFunctions.getInstanceEngines(GetInstanceEnginesArgs.builder()
///             .instanceChargeType("PostPaid")
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .outputFile("./engines.txt")
///             .build());
///
///         ctx.export("firstDbCategory", resources.instanceEngines()[0].category());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   resources:
///     fn::invoke:
///       function: alicloud:rds:getInstanceEngines
///       arguments:
///         instanceChargeType: PostPaid
///         engine: MySQL
///         engineVersion: '5.6'
///         outputFile: ./engines.txt
/// outputs:
///   firstDbCategory: ${resources.instanceEngines[0].category}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_instance_engines_get_instance_engines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceEnginesResult> getInstanceEngines(
  GetInstanceEnginesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getInstanceEngines:getInstanceEngines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceEnginesResult.fromMap(result);
}

/// The `alicloud.rds.getInstances` data source provides a collection of RDS instances available in Alibaba Cloud account.
/// Filters support regular expression for the instance name, searches by tags, and other filters which are listed below.
///
/// &gt; **NOTE:** Available since v1.7.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const dbInstancesDs = alicloud.rds.getInstances({
///     nameRegex: "data-\\d+",
///     status: "Running",
///     tags: {
///         type: "database",
///         size: "tiny",
///     },
/// });
/// export const firstDbInstanceId = dbInstancesDs.then(dbInstancesDs => dbInstancesDs.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// db_instances_ds = alicloud.rds.get_instances(name_regex="data-\\d+",
///     status="Running",
///     tags={
///         "type": "database",
///         "size": "tiny",
///     })
/// pulumi.export("firstDbInstanceId", db_instances_ds.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dbInstancesDs = AliCloud.Rds.GetInstances.Invoke(new()
///     {
///         NameRegex = "data-\\d+",
///         Status = "Running",
///         Tags =
///         {
///             { "type", "database" },
///             { "size", "tiny" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDbInstanceId"] = dbInstancesDs.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		dbInstancesDs, err := rds.GetInstances(ctx, &rds.GetInstancesArgs{
/// 			NameRegex: pulumi.StringRef("data-\\d+"),
/// 			Status:    pulumi.StringRef("Running"),
/// 			Tags: map[string]interface{}{
/// 				"type": "database",
/// 				"size": "tiny",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDbInstanceId", dbInstancesDs.Instances[0].Id)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetInstancesArgs;
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
///         final var dbInstancesDs = RdsFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("data-\\d+")
///             .status("Running")
///             .tags(Map.ofEntries(
///                 Map.entry("type", "database"),
///                 Map.entry("size", "tiny")
///             ))
///             .build());
///
///         ctx.export("firstDbInstanceId", dbInstancesDs.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   dbInstancesDs:
///     fn::invoke:
///       function: alicloud:rds:getInstances
///       arguments:
///         nameRegex: data-\d+
///         status: Running
///         tags:
///           type: database
///           size: tiny
/// outputs:
///   firstDbInstanceId: ${dbInstancesDs.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Rds Modify Parameter Logs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.174.0+.
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
/// const example = alicloud.rds.getModifyParameterLogs({
///     dbInstanceId: "example_value",
///     startTime: "2022-06-04T13:56Z",
///     endTime: "2022-06-08T13:56Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rds.get_modify_parameter_logs(db_instance_id="example_value",
///     start_time="2022-06-04T13:56Z",
///     end_time="2022-06-08T13:56Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Rds.GetModifyParameterLogs.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///         StartTime = "2022-06-04T13:56Z",
///         EndTime = "2022-06-08T13:56Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.GetModifyParameterLogs(ctx, &rds.GetModifyParameterLogsArgs{
/// 			DbInstanceId: "example_value",
/// 			StartTime:    "2022-06-04T13:56Z",
/// 			EndTime:      "2022-06-08T13:56Z",
/// 		}, nil)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetModifyParameterLogsArgs;
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
///         final var example = RdsFunctions.getModifyParameterLogs(GetModifyParameterLogsArgs.builder()
///             .dbInstanceId("example_value")
///             .startTime("2022-06-04T13:56Z")
///             .endTime("2022-06-08T13:56Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:rds:getModifyParameterLogs
///       arguments:
///         dbInstanceId: example_value
///         startTime: 2022-06-04T13:56Z
///         endTime: 2022-06-08T13:56Z
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_modify_parameter_logs_get_modify_parameter_logs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModifyParameterLogsResult> getModifyParameterLogs(
  GetModifyParameterLogsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getModifyParameterLogs:getModifyParameterLogs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModifyParameterLogsResult.fromMap(result);
}

/// This data source provides the Rds Backups of the current Alibaba Cloud user.
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
/// const example = alicloud.rds.getRdsBackups({
///     dbInstanceId: "example_value",
/// });
/// export const firstRdsBackupId = example.then(example => example.backups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rds.get_rds_backups(db_instance_id="example_value")
/// pulumi.export("firstRdsBackupId", example.backups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Rds.GetRdsBackups.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRdsBackupId"] = example.Apply(getRdsBackupsResult => getRdsBackupsResult.Backups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.GetRdsBackups(ctx, &rds.GetRdsBackupsArgs{
/// 			DbInstanceId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRdsBackupId", example.Backups[0].Id)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetRdsBackupsArgs;
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
///         final var example = RdsFunctions.getRdsBackups(GetRdsBackupsArgs.builder()
///             .dbInstanceId("example_value")
///             .build());
///
///         ctx.export("firstRdsBackupId", example.backups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:rds:getRdsBackups
///       arguments:
///         dbInstanceId: example_value
/// outputs:
///   firstRdsBackupId: ${example.backups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_rds_backups_get_rds_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRdsBackupsResult> getRdsBackups(
  GetRdsBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getRdsBackups:getRdsBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRdsBackupsResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_rds_parameter_groups_get_rds_parameter_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRdsParameterGroupsResult> getRdsParameterGroups(
  GetRdsParameterGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getRdsParameterGroups:getRdsParameterGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRdsParameterGroupsResult.fromMap(result);
}

/// This data source provides the Rds Replication Slots of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.204.0+.
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
/// const example = alicloud.rds.getSlots({
///     dbInstanceId: "example_value",
/// });
/// export const firstRdsSlotsName = example.then(example => example.slots?.[0]?.slotName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rds.get_slots(db_instance_id="example_value")
/// pulumi.export("firstRdsSlotsName", example.slots[0].slot_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Rds.GetSlots.Invoke(new()
///     {
///         DbInstanceId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRdsSlotsName"] = example.Apply(getSlotsResult => getSlotsResult.Slots[0]?.SlotName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.GetSlots(ctx, &rds.GetSlotsArgs{
/// 			DbInstanceId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRdsSlotsName", example.Slots[0].SlotName)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetSlotsArgs;
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
///         final var example = RdsFunctions.getSlots(GetSlotsArgs.builder()
///             .dbInstanceId("example_value")
///             .build());
///
///         ctx.export("firstRdsSlotsName", example.slots()[0].slotName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:rds:getSlots
///       arguments:
///         dbInstanceId: example_value
/// outputs:
///   firstRdsSlotsName: ${example.slots[0].slotName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_slots_get_slots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSlotsResult> getSlots(
  GetSlotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getSlots:getSlots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSlotsResult.fromMap(result);
}

/// This data source provides availability zones for RDS that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// &gt; **NOTE:** Available since v1.73.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceChargeType: "PostPaid",
///     category: "Basic",
///     dbInstanceStorageType: "cloud_essd",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="8.0",
///     instance_charge_type="PostPaid",
///     category="Basic",
///     db_instance_storage_type="cloud_essd")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceChargeType = "PostPaid",
///         Category = "Basic",
///         DbInstanceStorageType = "cloud_essd",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 			Category:              pulumi.StringRef("Basic"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetZonesArgs;
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
///         final var example = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceChargeType("PostPaid")
///             .category("Basic")
///             .dbInstanceStorageType("cloud_essd")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '8.0'
///         instanceChargeType: PostPaid
///         category: Basic
///         dbInstanceStorageType: cloud_essd
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rds_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rds/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
