import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acls_args.dart';
import 'get_acls_result.dart';
import 'get_smartag_flow_logs_args.dart';
import 'get_smartag_flow_logs_result.dart';

/// This data source provides Sag Acls available to the user.
///
/// > **NOTE:** Available in 1.60.0+
///
/// > **NOTE:** Only the following regions support create Cloud Connect Network. [`cn-shanghai`, `cn-shanghai-finance-1`, `cn-hongkong`, `ap-southeast-1`, `ap-southeast-3`, `ap-southeast-5`, `ap-northeast-1`, `eu-central-1`]
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
/// const _default = alicloud.sag.getAcls({
///     ids: [defaultAlicloudSagAcls.id],
///     nameRegex: "^tf-testAcc.*",
/// });
/// const defaultAcl = new alicloud.sag.Acl("default", {name: "tf-testAccSagAclName"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.sag.get_acls(ids=[default_alicloud_sag_acls["id"]],
///     name_regex="^tf-testAcc.*")
/// default_acl = alicloud.sag.Acl("default", name="tf-testAccSagAclName")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Sag.GetAcls.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudSagAcls.Id,
///         },
///         NameRegex = "^tf-testAcc.*",
///     });
///
///     var defaultAcl = new AliCloud.Sag.Acl("default", new()
///     {
///         Name = "tf-testAccSagAclName",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sag.GetAcls(ctx, &sag.GetAclsArgs{
/// Ids: interface{}{
/// defaultAlicloudSagAcls.Id,
/// },
/// NameRegex: pulumi.StringRef("^tf-testAcc.*"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = sag.NewAcl(ctx, "default", &sag.AclArgs{
/// Name: pulumi.String("tf-testAccSagAclName"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.sag.SagFunctions;
/// import com.pulumi.alicloud.sag.inputs.GetAclsArgs;
/// import com.pulumi.alicloud.sag.Acl;
/// import com.pulumi.alicloud.sag.AclArgs;
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
///         final var default = SagFunctions.getAcls(GetAclsArgs.builder()
///             .ids(defaultAlicloudSagAcls.id())
///             .nameRegex("^tf-testAcc.*")
///             .build());
///
///         var defaultAcl = new Acl("defaultAcl", AclArgs.builder()
///             .name("tf-testAccSagAclName")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultAcl:
///     type: alicloud:sag:Acl
///     name: default
///     properties:
///       name: tf-testAccSagAclName
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:sag:getAcls
///       arguments:
///         ids:
///           - ${defaultAlicloudSagAcls.id}
///         nameRegex: ^tf-testAcc.*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sag_get_acls_get_acls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAclsResult> getAcls(
  GetAclsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sag/getAcls:getAcls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAclsResult.fromMap(result);
}

/// This data source provides the Smartag Flow Logs of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.168.0+.
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
/// const ids = alicloud.sag.getSmartagFlowLogs({
///     ids: ["example_id"],
/// });
/// export const smartagFlowLogId1 = ids.then(ids => ids.logs?.[0]?.id);
/// const nameRegex = alicloud.sag.getSmartagFlowLogs({
///     nameRegex: "^my-FlowLog",
/// });
/// export const smartagFlowLogId2 = nameRegex.then(nameRegex => nameRegex.logs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.sag.get_smartag_flow_logs(ids=["example_id"])
/// pulumi.export("smartagFlowLogId1", ids.logs[0].id)
/// name_regex = alicloud.sag.get_smartag_flow_logs(name_regex="^my-FlowLog")
/// pulumi.export("smartagFlowLogId2", name_regex.logs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Sag.GetSmartagFlowLogs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Sag.GetSmartagFlowLogs.Invoke(new()
///     {
///         NameRegex = "^my-FlowLog",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["smartagFlowLogId1"] = ids.Apply(getSmartagFlowLogsResult => getSmartagFlowLogsResult.Logs[0]?.Id),
///         ["smartagFlowLogId2"] = nameRegex.Apply(getSmartagFlowLogsResult => getSmartagFlowLogsResult.Logs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sag"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := sag.GetSmartagFlowLogs(ctx, &sag.GetSmartagFlowLogsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("smartagFlowLogId1", ids.Logs[0].Id)
/// 		nameRegex, err := sag.GetSmartagFlowLogs(ctx, &sag.GetSmartagFlowLogsArgs{
/// 			NameRegex: pulumi.StringRef("^my-FlowLog"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("smartagFlowLogId2", nameRegex.Logs[0].Id)
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
/// import com.pulumi.alicloud.sag.SagFunctions;
/// import com.pulumi.alicloud.sag.inputs.GetSmartagFlowLogsArgs;
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
///         final var ids = SagFunctions.getSmartagFlowLogs(GetSmartagFlowLogsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("smartagFlowLogId1", ids.logs()[0].id());
///         final var nameRegex = SagFunctions.getSmartagFlowLogs(GetSmartagFlowLogsArgs.builder()
///             .nameRegex("^my-FlowLog")
///             .build());
///
///         ctx.export("smartagFlowLogId2", nameRegex.logs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:sag:getSmartagFlowLogs
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:sag:getSmartagFlowLogs
///       arguments:
///         nameRegex: ^my-FlowLog
/// outputs:
///   smartagFlowLogId1: ${ids.logs[0].id}
///   smartagFlowLogId2: ${nameRegex.logs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sag_get_smartag_flow_logs_get_smartag_flow_logs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSmartagFlowLogsResult> getSmartagFlowLogs(
  GetSmartagFlowLogsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:sag/getSmartagFlowLogs:getSmartagFlowLogs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSmartagFlowLogsResult.fromMap(result);
}
