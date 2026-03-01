import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_attachments_args.dart';
import 'get_instance_attachments_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_search_indexes_args.dart';
import 'get_search_indexes_result.dart';
import 'get_secondary_indexes_args.dart';
import 'get_secondary_indexes_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_tables_args.dart';
import 'get_tables_result.dart';
import 'get_tunnels_args.dart';
import 'get_tunnels_result.dart';

/// This data source provides the ots instance attachments of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const attachmentsDs = alicloud.ots.getInstanceAttachments({
///     instanceName: "sample-instance",
///     nameRegex: "testvpc",
///     outputFile: "attachments.txt",
/// });
/// export const firstOtsAttachmentId = attachmentsDs.then(attachmentsDs => attachmentsDs.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// attachments_ds = alicloud.ots.get_instance_attachments(instance_name="sample-instance",
///     name_regex="testvpc",
///     output_file="attachments.txt")
/// pulumi.export("firstOtsAttachmentId", attachments_ds.attachments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var attachmentsDs = AliCloud.Ots.GetInstanceAttachments.Invoke(new()
///     {
///         InstanceName = "sample-instance",
///         NameRegex = "testvpc",
///         OutputFile = "attachments.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstOtsAttachmentId"] = attachmentsDs.Apply(getInstanceAttachmentsResult => getInstanceAttachmentsResult.Attachments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		attachmentsDs, err := ots.GetInstanceAttachments(ctx, &ots.GetInstanceAttachmentsArgs{
/// 			InstanceName: "sample-instance",
/// 			NameRegex:    pulumi.StringRef("testvpc"),
/// 			OutputFile:   pulumi.StringRef("attachments.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstOtsAttachmentId", attachmentsDs.Attachments[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetInstanceAttachmentsArgs;
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
///         final var attachmentsDs = OtsFunctions.getInstanceAttachments(GetInstanceAttachmentsArgs.builder()
///             .instanceName("sample-instance")
///             .nameRegex("testvpc")
///             .outputFile("attachments.txt")
///             .build());
///
///         ctx.export("firstOtsAttachmentId", attachmentsDs.attachments()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   attachmentsDs:
///     fn::invoke:
///       function: alicloud:ots:getInstanceAttachments
///       arguments:
///         instanceName: sample-instance
///         nameRegex: testvpc
///         outputFile: attachments.txt
/// outputs:
///   firstOtsAttachmentId: ${attachmentsDs.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ots_get_instance_attachments_get_instance_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceAttachmentsResult> getInstanceAttachments(
  GetInstanceAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ots/getInstanceAttachments:getInstanceAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAttachmentsResult.fromMap(result);
}

/// This data source provides the ots instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.40.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const instancesDs = alicloud.ots.getInstances({
///     outputFile: "instances.txt",
/// });
/// export const firstInstanceId = instancesDs.then(instancesDs => instancesDs.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// instances_ds = alicloud.ots.get_instances(output_file="instances.txt")
/// pulumi.export("firstInstanceId", instances_ds.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instancesDs = AliCloud.Ots.GetInstances.Invoke(new()
///     {
///         OutputFile = "instances.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceId"] = instancesDs.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instancesDs, err := ots.GetInstances(ctx, &ots.GetInstancesArgs{
/// 			OutputFile: pulumi.StringRef("instances.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceId", instancesDs.Instances[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetInstancesArgs;
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
///         final var instancesDs = OtsFunctions.getInstances(GetInstancesArgs.builder()
///             .outputFile("instances.txt")
///             .build());
///
///         ctx.export("firstInstanceId", instancesDs.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   instancesDs:
///     fn::invoke:
///       function: alicloud:ots:getInstances
///       arguments:
///         outputFile: instances.txt
/// outputs:
///   firstInstanceId: ${instancesDs.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ots_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ots/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the ots search index of the current Alibaba Cloud user.
///
/// For information about OTS search index and how to use it, see [Search index overview](https://www.alibabacloud.com/help/en/tablestore/latest/search-index-overview).
///
/// > **NOTE:** Available in v1.187.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const searchIndexDs = alicloud.ots.getSearchIndexes({
///     instanceName: "sample-instance",
///     tableName: "sample-table",
///     nameRegex: "sample-search-index",
///     outputFile: "search-indexs.txt",
/// });
/// export const firstSearchIndexId = searchIndexDs.then(searchIndexDs => searchIndexDs.indexs[0].id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// search_index_ds = alicloud.ots.get_search_indexes(instance_name="sample-instance",
///     table_name="sample-table",
///     name_regex="sample-search-index",
///     output_file="search-indexs.txt")
/// pulumi.export("firstSearchIndexId", search_index_ds.indexs[0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var searchIndexDs = AliCloud.Ots.GetSearchIndexes.Invoke(new()
///     {
///         InstanceName = "sample-instance",
///         TableName = "sample-table",
///         NameRegex = "sample-search-index",
///         OutputFile = "search-indexs.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSearchIndexId"] = searchIndexDs.Apply(getSearchIndexesResult => getSearchIndexesResult.Indexs[0].Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		searchIndexDs, err := ots.GetSearchIndexes(ctx, &ots.GetSearchIndexesArgs{
/// 			InstanceName: "sample-instance",
/// 			TableName:    "sample-table",
/// 			NameRegex:    pulumi.StringRef("sample-search-index"),
/// 			OutputFile:   pulumi.StringRef("search-indexs.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSearchIndexId", searchIndexDs.Indexs[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetSearchIndexesArgs;
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
///         final var searchIndexDs = OtsFunctions.getSearchIndexes(GetSearchIndexesArgs.builder()
///             .instanceName("sample-instance")
///             .tableName("sample-table")
///             .nameRegex("sample-search-index")
///             .outputFile("search-indexs.txt")
///             .build());
///
///         ctx.export("firstSearchIndexId", searchIndexDs.indexs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   searchIndexDs:
///     fn::invoke:
///       function: alicloud:ots:getSearchIndexes
///       arguments:
///         instanceName: sample-instance
///         tableName: sample-table
///         nameRegex: sample-search-index
///         outputFile: search-indexs.txt
/// outputs:
///   firstSearchIndexId: ${searchIndexDs.indexs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ots_get_search_indexes_get_search_indexes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSearchIndexesResult> getSearchIndexes(
  GetSearchIndexesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ots/getSearchIndexes:getSearchIndexes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSearchIndexesResult.fromMap(result);
}

/// This data source provides the ots secondary index of the current Alibaba Cloud user.
///
/// For information about OTS secondary index and how to use it, see [Secondary index overview](https://www.alibabacloud.com/help/en/tablestore/latest/secondary-index-overview).
///
/// > **NOTE:** Available in v1.187.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const secondaryIndexDs = alicloud.ots.getSecondaryIndexes({
///     instanceName: "sample-instance",
///     tableName: "sample-table",
///     nameRegex: "sample-secondary-index",
///     outputFile: "secondary-indexs.txt",
/// });
/// export const firstSecondaryIndexId = secondaryIndexDs.then(secondaryIndexDs => secondaryIndexDs.indexs[0].id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// secondary_index_ds = alicloud.ots.get_secondary_indexes(instance_name="sample-instance",
///     table_name="sample-table",
///     name_regex="sample-secondary-index",
///     output_file="secondary-indexs.txt")
/// pulumi.export("firstSecondaryIndexId", secondary_index_ds.indexs[0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secondaryIndexDs = AliCloud.Ots.GetSecondaryIndexes.Invoke(new()
///     {
///         InstanceName = "sample-instance",
///         TableName = "sample-table",
///         NameRegex = "sample-secondary-index",
///         OutputFile = "secondary-indexs.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstSecondaryIndexId"] = secondaryIndexDs.Apply(getSecondaryIndexesResult => getSecondaryIndexesResult.Indexs[0].Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secondaryIndexDs, err := ots.GetSecondaryIndexes(ctx, &ots.GetSecondaryIndexesArgs{
/// 			InstanceName: "sample-instance",
/// 			TableName:    "sample-table",
/// 			NameRegex:    pulumi.StringRef("sample-secondary-index"),
/// 			OutputFile:   pulumi.StringRef("secondary-indexs.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstSecondaryIndexId", secondaryIndexDs.Indexs[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetSecondaryIndexesArgs;
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
///         final var secondaryIndexDs = OtsFunctions.getSecondaryIndexes(GetSecondaryIndexesArgs.builder()
///             .instanceName("sample-instance")
///             .tableName("sample-table")
///             .nameRegex("sample-secondary-index")
///             .outputFile("secondary-indexs.txt")
///             .build());
///
///         ctx.export("firstSecondaryIndexId", secondaryIndexDs.indexs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   secondaryIndexDs:
///     fn::invoke:
///       function: alicloud:ots:getSecondaryIndexes
///       arguments:
///         instanceName: sample-instance
///         tableName: sample-table
///         nameRegex: sample-secondary-index
///         outputFile: secondary-indexs.txt
/// outputs:
///   firstSecondaryIndexId: ${secondaryIndexDs.indexs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ots_get_secondary_indexes_get_secondary_indexes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecondaryIndexesResult> getSecondaryIndexes(
  GetSecondaryIndexesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ots/getSecondaryIndexes:getSecondaryIndexes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecondaryIndexesResult.fromMap(result);
}

/// Using this data source can enable Table Staore service automatically. If the service has been enabled, it will return `Opened`.
///
/// For information about Table Staore and how to use it, see [What is Table Staore](https://www.alibabacloud.com/help/product/27278.htm).
///
/// > **NOTE:** Available in v1.97.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.ots.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.ots.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Ots.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ots.GetService(ctx, &ots.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetServiceArgs;
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
///         final var open = OtsFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:ots:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ots_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ots/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the ots tables of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.40.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const tablesDs = alicloud.ots.getTables({
///     instanceName: "sample-instance",
///     nameRegex: "sample-table",
///     outputFile: "tables.txt",
/// });
/// export const firstTableId = tablesDs.then(tablesDs => tablesDs.tables?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// tables_ds = alicloud.ots.get_tables(instance_name="sample-instance",
///     name_regex="sample-table",
///     output_file="tables.txt")
/// pulumi.export("firstTableId", tables_ds.tables[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tablesDs = AliCloud.Ots.GetTables.Invoke(new()
///     {
///         InstanceName = "sample-instance",
///         NameRegex = "sample-table",
///         OutputFile = "tables.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTableId"] = tablesDs.Apply(getTablesResult => getTablesResult.Tables[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tablesDs, err := ots.GetTables(ctx, &ots.GetTablesArgs{
/// 			InstanceName: "sample-instance",
/// 			NameRegex:    pulumi.StringRef("sample-table"),
/// 			OutputFile:   pulumi.StringRef("tables.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTableId", tablesDs.Tables[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetTablesArgs;
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
///         final var tablesDs = OtsFunctions.getTables(GetTablesArgs.builder()
///             .instanceName("sample-instance")
///             .nameRegex("sample-table")
///             .outputFile("tables.txt")
///             .build());
///
///         ctx.export("firstTableId", tablesDs.tables()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   tablesDs:
///     fn::invoke:
///       function: alicloud:ots:getTables
///       arguments:
///         instanceName: sample-instance
///         nameRegex: sample-table
///         outputFile: tables.txt
/// outputs:
///   firstTableId: ${tablesDs.tables[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ots_get_tables_get_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTablesResult> getTables(
  GetTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ots/getTables:getTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTablesResult.fromMap(result);
}

/// This data source provides the ots tunnels of the current Alibaba Cloud user.
///
/// For information about OTS tunnel and how to use it, see [Tunnel overview](https://www.alibabacloud.com/help/en/tablestore/latest/tunnel-service-overview).
///
/// > **NOTE:** Available in v1.172.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const tunnelsDs = alicloud.ots.getTunnels({
///     instanceName: "sample-instance",
///     tableName: "sample-table",
///     nameRegex: "sample-tunnel",
///     outputFile: "tunnels.txt",
/// });
/// export const firstTunnelId = tunnelsDs.then(tunnelsDs => tunnelsDs.tunnels?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// tunnels_ds = alicloud.ots.get_tunnels(instance_name="sample-instance",
///     table_name="sample-table",
///     name_regex="sample-tunnel",
///     output_file="tunnels.txt")
/// pulumi.export("firstTunnelId", tunnels_ds.tunnels[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tunnelsDs = AliCloud.Ots.GetTunnels.Invoke(new()
///     {
///         InstanceName = "sample-instance",
///         TableName = "sample-table",
///         NameRegex = "sample-tunnel",
///         OutputFile = "tunnels.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTunnelId"] = tunnelsDs.Apply(getTunnelsResult => getTunnelsResult.Tunnels[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tunnelsDs, err := ots.GetTunnels(ctx, &ots.GetTunnelsArgs{
/// 			InstanceName: "sample-instance",
/// 			TableName:    "sample-table",
/// 			NameRegex:    pulumi.StringRef("sample-tunnel"),
/// 			OutputFile:   pulumi.StringRef("tunnels.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTunnelId", tunnelsDs.Tunnels[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetTunnelsArgs;
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
///         final var tunnelsDs = OtsFunctions.getTunnels(GetTunnelsArgs.builder()
///             .instanceName("sample-instance")
///             .tableName("sample-table")
///             .nameRegex("sample-tunnel")
///             .outputFile("tunnels.txt")
///             .build());
///
///         ctx.export("firstTunnelId", tunnelsDs.tunnels()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   tunnelsDs:
///     fn::invoke:
///       function: alicloud:ots:getTunnels
///       arguments:
///         instanceName: sample-instance
///         tableName: sample-table
///         nameRegex: sample-tunnel
///         outputFile: tunnels.txt
/// outputs:
///   firstTunnelId: ${tunnelsDs.tunnels[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ots_get_tunnels_get_tunnels_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTunnelsResult> getTunnels(
  GetTunnelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ots/getTunnels:getTunnels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelsResult.fromMap(result);
}
