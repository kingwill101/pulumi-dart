import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_infos_args.dart';
import 'get_application_infos_result.dart';
import 'get_quota_alarms_args.dart';
import 'get_quota_alarms_result.dart';
import 'get_quota_applications_args.dart';
import 'get_quota_applications_result.dart';
import 'get_quotas_args.dart';
import 'get_quotas_result.dart';
import 'get_template_applications_args.dart';
import 'get_template_applications_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_quotas_get_application_infos_get_application_infos_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationInfosResult> getApplicationInfos(
  GetApplicationInfosArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:quotas/getApplicationInfos:getApplicationInfos',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationInfosResult.fromMap(result);
}

/// This data source provides the Quotas Quota Alarms of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.116.0+.
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
/// const example = alicloud.quotas.getQuotaAlarms({
///     ids: ["5VR90-421F886-81E9-xxx"],
///     nameRegex: "tf-testAcc",
/// });
/// export const firstQuotasQuotaAlarmId = example.then(example => example.alarms?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.quotas.get_quota_alarms(ids=["5VR90-421F886-81E9-xxx"],
///     name_regex="tf-testAcc")
/// pulumi.export("firstQuotasQuotaAlarmId", example.alarms[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Quotas.GetQuotaAlarms.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "5VR90-421F886-81E9-xxx",
///         },
///         NameRegex = "tf-testAcc",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstQuotasQuotaAlarmId"] = example.Apply(getQuotaAlarmsResult => getQuotaAlarmsResult.Alarms[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/quotas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := quotas.GetQuotaAlarms(ctx, &quotas.GetQuotaAlarmsArgs{
/// 			Ids: []string{
/// 				"5VR90-421F886-81E9-xxx",
/// 			},
/// 			NameRegex: pulumi.StringRef("tf-testAcc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstQuotasQuotaAlarmId", example.Alarms[0].Id)
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
/// import com.pulumi.alicloud.quotas.QuotasFunctions;
/// import com.pulumi.alicloud.quotas.inputs.GetQuotaAlarmsArgs;
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
///         final var example = QuotasFunctions.getQuotaAlarms(GetQuotaAlarmsArgs.builder()
///             .ids("5VR90-421F886-81E9-xxx")
///             .nameRegex("tf-testAcc")
///             .build());
///
///         ctx.export("firstQuotasQuotaAlarmId", example.alarms()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:quotas:getQuotaAlarms
///       arguments:
///         ids:
///           - 5VR90-421F886-81E9-xxx
///         nameRegex: tf-testAcc
/// outputs:
///   firstQuotasQuotaAlarmId: ${example.alarms[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quotas_get_quota_alarms_get_quota_alarms_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuotaAlarmsResult> getQuotaAlarms(
  GetQuotaAlarmsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:quotas/getQuotaAlarms:getQuotaAlarms',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuotaAlarmsResult.fromMap(result);
}

/// This data source provides the Quotas Quota Applications of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.117.0.
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
/// const defaultQuotaApplication = new alicloud.quotas.QuotaApplication("default", {
///     productCode: "vpc",
///     noticeType: 3,
///     effectiveTime: "2023-05-22T16:00:00Z",
///     expireTime: "2024-09-15T00:08:32Z",
///     desireValue: 1,
///     reason: "",
///     quotaActionCode: "vpc_whitelist/ha_vip_whitelist",
///     auditMode: "Sync",
///     envLanguage: "zh",
///     quotaCategory: "WhiteListLabel",
/// });
/// const _default = pulumi.all([defaultQuotaApplication.quotaCategory, defaultQuotaApplication.id]).apply(([quotaCategory, id]) => alicloud.quotas.getQuotaApplicationsOutput({
///     productCode: "vpc",
///     enableDetails: true,
///     quotaCategory: quotaCategory,
///     ids: [id],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_quota_application = alicloud.quotas.QuotaApplication("default",
///     product_code="vpc",
///     notice_type=3,
///     effective_time="2023-05-22T16:00:00Z",
///     expire_time="2024-09-15T00:08:32Z",
///     desire_value=1,
///     reason="",
///     quota_action_code="vpc_whitelist/ha_vip_whitelist",
///     audit_mode="Sync",
///     env_language="zh",
///     quota_category="WhiteListLabel")
/// default = pulumi.Output.all(
///     quota_category=default_quota_application.quota_category,
///     id=default_quota_application.id
/// ).apply(lambda resolved_outputs: alicloud.quotas.get_quota_applications_output(product_code="vpc",
///     enable_details=True,
///     quota_category=resolved_outputs['quota_category'],
///     ids=[resolved_outputs['id']]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultQuotaApplication = new AliCloud.Quotas.QuotaApplication("default", new()
///     {
///         ProductCode = "vpc",
///         NoticeType = 3,
///         EffectiveTime = "2023-05-22T16:00:00Z",
///         ExpireTime = "2024-09-15T00:08:32Z",
///         DesireValue = 1,
///         Reason = "",
///         QuotaActionCode = "vpc_whitelist/ha_vip_whitelist",
///         AuditMode = "Sync",
///         EnvLanguage = "zh",
///         QuotaCategory = "WhiteListLabel",
///     });
///
///     var @default = AliCloud.Quotas.GetQuotaApplications.Invoke(new()
///     {
///         ProductCode = "vpc",
///         EnableDetails = true,
///         QuotaCategory = defaultQuotaApplication.QuotaCategory,
///         Ids = new[]
///         {
///             defaultQuotaApplication.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/quotas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultQuotaApplication, err := quotas.NewQuotaApplication(ctx, "default", &quotas.QuotaApplicationArgs{
/// 			ProductCode:     pulumi.String("vpc"),
/// 			NoticeType:      pulumi.Int(3),
/// 			EffectiveTime:   pulumi.String("2023-05-22T16:00:00Z"),
/// 			ExpireTime:      pulumi.String("2024-09-15T00:08:32Z"),
/// 			DesireValue:     pulumi.Float64(1),
/// 			Reason:          pulumi.String(""),
/// 			QuotaActionCode: pulumi.String("vpc_whitelist/ha_vip_whitelist"),
/// 			AuditMode:       pulumi.String("Sync"),
/// 			EnvLanguage:     pulumi.String("zh"),
/// 			QuotaCategory:   pulumi.String("WhiteListLabel"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = pulumi.All(defaultQuotaApplication.QuotaCategory, defaultQuotaApplication.ID()).ApplyT(func(_args []interface{}) (quotas.GetQuotaApplicationsResult, error) {
/// 			quotaCategory := _args[0].(*string)
/// 			id := _args[1].(string)
/// 			return quotas.GetQuotaApplicationsResult(interface{}(quotas.GetQuotaApplications(ctx, &quotas.GetQuotaApplicationsArgs{
/// 				ProductCode:   "vpc",
/// 				EnableDetails: pulumi.BoolRef(pulumi.BoolRef(true)),
/// 				QuotaCategory: pulumi.StringRef(pulumi.StringRef(quotaCategory)),
/// 				Ids: []string{
/// 					id,
/// 				},
/// 			}, nil))), nil
/// 		}).(quotas.GetQuotaApplicationsResultOutput)
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
/// import com.pulumi.alicloud.quotas.QuotaApplication;
/// import com.pulumi.alicloud.quotas.QuotaApplicationArgs;
/// import com.pulumi.alicloud.quotas.QuotasFunctions;
/// import com.pulumi.alicloud.quotas.inputs.GetQuotaApplicationsArgs;
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
///         var defaultQuotaApplication = new QuotaApplication("defaultQuotaApplication", QuotaApplicationArgs.builder()
///             .productCode("vpc")
///             .noticeType(3)
///             .effectiveTime("2023-05-22T16:00:00Z")
///             .expireTime("2024-09-15T00:08:32Z")
///             .desireValue(1.0)
///             .reason("")
///             .quotaActionCode("vpc_whitelist/ha_vip_whitelist")
///             .auditMode("Sync")
///             .envLanguage("zh")
///             .quotaCategory("WhiteListLabel")
///             .build());
///
///         final var default = Output.tuple(defaultQuotaApplication.quotaCategory(), defaultQuotaApplication.id()).applyValue(values -> {
///             var quotaCategory = values.t1;
///             var id = values.t2;
///             return QuotasFunctions.getQuotaApplications(GetQuotaApplicationsArgs.builder()
///                 .productCode("vpc")
///                 .enableDetails(true)
///                 .quotaCategory(quotaCategory)
///                 .ids(id)
///                 .build());
///         });
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultQuotaApplication:
///     type: alicloud:quotas:QuotaApplication
///     name: default
///     properties:
///       productCode: vpc
///       noticeType: '3'
///       effectiveTime: 2023-05-22T16:00:00Z
///       expireTime: 2024-09-15T00:08:32Z
///       desireValue: '1'
///       reason: ""
///       quotaActionCode: vpc_whitelist/ha_vip_whitelist
///       auditMode: Sync
///       envLanguage: zh
///       quotaCategory: WhiteListLabel
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:quotas:getQuotaApplications
///       arguments:
///         productCode: vpc
///         enableDetails: 'true'
///         quotaCategory: ${defaultQuotaApplication.quotaCategory}
///         ids:
///           - ${defaultQuotaApplication.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quotas_get_quota_applications_get_quota_applications_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuotaApplicationsResult> getQuotaApplications(
  GetQuotaApplicationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:quotas/getQuotaApplications:getQuotaApplications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuotaApplicationsResult.fromMap(result);
}

/// This data source provides the Quotas Quotas of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.115.0+.
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
/// const example = alicloud.quotas.getQuotas({
///     productCode: "ecs",
///     nameRegex: "专有宿主机总数量上限",
/// });
/// export const firstQuotasQuotaId = example.then(example => example.quotas?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.quotas.get_quotas(product_code="ecs",
///     name_regex="专有宿主机总数量上限")
/// pulumi.export("firstQuotasQuotaId", example.quotas[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Quotas.GetQuotas.Invoke(new()
///     {
///         ProductCode = "ecs",
///         NameRegex = "专有宿主机总数量上限",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstQuotasQuotaId"] = example.Apply(getQuotasResult => getQuotasResult.Quotas[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/quotas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := quotas.GetQuotas(ctx, &quotas.GetQuotasArgs{
/// 			ProductCode: "ecs",
/// 			NameRegex:   pulumi.StringRef("专有宿主机总数量上限"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstQuotasQuotaId", example.Quotas[0].Id)
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
/// import com.pulumi.alicloud.quotas.QuotasFunctions;
/// import com.pulumi.alicloud.quotas.inputs.GetQuotasArgs;
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
///         final var example = QuotasFunctions.getQuotas(GetQuotasArgs.builder()
///             .productCode("ecs")
///             .nameRegex("专有宿主机总数量上限")
///             .build());
///
///         ctx.export("firstQuotasQuotaId", example.quotas()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:quotas:getQuotas
///       arguments:
///         productCode: ecs
///         nameRegex: 专有宿主机总数量上限
/// outputs:
///   firstQuotasQuotaId: ${example.quotas[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quotas_get_quotas_get_quotas_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQuotasResult> getQuotas(
  GetQuotasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:quotas/getQuotas:getQuotas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuotasResult.fromMap(result);
}

/// This data source provides Quotas Template Applications available to the user.[What is Template Applications](https://www.alibabacloud.com/help/en/quota-center/developer-reference/api-quotas-2020-05-10-createquotaapplicationsfortemplate)
///
/// > **NOTE:** Available since v1.214.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.resourcemanager.getAccounts({
///     status: "CreateSuccess",
/// });
/// const defaultTemplateApplications = new alicloud.quotas.TemplateApplications("default", {
///     quotaActionCode: "vpc_whitelist/ha_vip_whitelist",
///     productCode: "vpc",
///     quotaCategory: "FlowControl",
///     aliyunUids: [_default.then(_default => _default.ids?.[0])],
///     desireValue: 6,
///     noticeType: 0,
///     envLanguage: "zh",
///     reason: "example",
///     dimensions: [
///         {
///             key: "apiName",
///             value: "GetProductQuotaDimension",
///         },
///         {
///             key: "apiVersion",
///             value: "2020-05-10",
///         },
///         {
///             key: "regionId",
///             value: "cn-hangzhou",
///         },
///     ],
/// });
/// const defaultGetTemplateApplications = alicloud.quotas.getTemplateApplicationsOutput({
///     ids: [defaultTemplateApplications.id],
///     productCode: "vpc",
///     quotaActionCode: "vpc_whitelist/ha_vip_whitelist",
///     quotaCategory: "FlowControl",
/// });
/// export const alicloudQuotasTemplateApplicationsExampleId = defaultGetTemplateApplications.apply(defaultGetTemplateApplications => defaultGetTemplateApplications.applications?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_accounts(status="CreateSuccess")
/// default_template_applications = alicloud.quotas.TemplateApplications("default",
///     quota_action_code="vpc_whitelist/ha_vip_whitelist",
///     product_code="vpc",
///     quota_category="FlowControl",
///     aliyun_uids=[default.ids[0]],
///     desire_value=6,
///     notice_type=0,
///     env_language="zh",
///     reason="example",
///     dimensions=[
///         {
///             "key": "apiName",
///             "value": "GetProductQuotaDimension",
///         },
///         {
///             "key": "apiVersion",
///             "value": "2020-05-10",
///         },
///         {
///             "key": "regionId",
///             "value": "cn-hangzhou",
///         },
///     ])
/// default_get_template_applications = alicloud.quotas.get_template_applications_output(ids=[default_template_applications.id],
///     product_code="vpc",
///     quota_action_code="vpc_whitelist/ha_vip_whitelist",
///     quota_category="FlowControl")
/// pulumi.export("alicloudQuotasTemplateApplicationsExampleId", default_get_template_applications.applications[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke(new()
///     {
///         Status = "CreateSuccess",
///     });
///
///     var defaultTemplateApplications = new AliCloud.Quotas.TemplateApplications("default", new()
///     {
///         QuotaActionCode = "vpc_whitelist/ha_vip_whitelist",
///         ProductCode = "vpc",
///         QuotaCategory = "FlowControl",
///         AliyunUids = new[]
///         {
///             @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Ids[0])),
///         },
///         DesireValue = 6,
///         NoticeType = 0,
///         EnvLanguage = "zh",
///         Reason = "example",
///         Dimensions = new[]
///         {
///             new AliCloud.Quotas.Inputs.TemplateApplicationsDimensionArgs
///             {
///                 Key = "apiName",
///                 Value = "GetProductQuotaDimension",
///             },
///             new AliCloud.Quotas.Inputs.TemplateApplicationsDimensionArgs
///             {
///                 Key = "apiVersion",
///                 Value = "2020-05-10",
///             },
///             new AliCloud.Quotas.Inputs.TemplateApplicationsDimensionArgs
///             {
///                 Key = "regionId",
///                 Value = "cn-hangzhou",
///             },
///         },
///     });
///
///     var defaultGetTemplateApplications = AliCloud.Quotas.GetTemplateApplications.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultTemplateApplications.Id,
///         },
///         ProductCode = "vpc",
///         QuotaActionCode = "vpc_whitelist/ha_vip_whitelist",
///         QuotaCategory = "FlowControl",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudQuotasTemplateApplicationsExampleId"] = defaultGetTemplateApplications.Apply(getTemplateApplicationsResult => getTemplateApplicationsResult.Applications[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/quotas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{
/// 			Status: pulumi.StringRef("CreateSuccess"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTemplateApplications, err := quotas.NewTemplateApplications(ctx, "default", &quotas.TemplateApplicationsArgs{
/// 			QuotaActionCode: pulumi.String("vpc_whitelist/ha_vip_whitelist"),
/// 			ProductCode:     pulumi.String("vpc"),
/// 			QuotaCategory:   pulumi.String("FlowControl"),
/// 			AliyunUids: pulumi.StringArray{
/// 				pulumi.String(_default.Ids[0]),
/// 			},
/// 			DesireValue: pulumi.Float64(6),
/// 			NoticeType:  pulumi.Int(0),
/// 			EnvLanguage: pulumi.String("zh"),
/// 			Reason:      pulumi.String("example"),
/// 			Dimensions: quotas.TemplateApplicationsDimensionArray{
/// 				&quotas.TemplateApplicationsDimensionArgs{
/// 					Key:   pulumi.String("apiName"),
/// 					Value: pulumi.String("GetProductQuotaDimension"),
/// 				},
/// 				&quotas.TemplateApplicationsDimensionArgs{
/// 					Key:   pulumi.String("apiVersion"),
/// 					Value: pulumi.String("2020-05-10"),
/// 				},
/// 				&quotas.TemplateApplicationsDimensionArgs{
/// 					Key:   pulumi.String("regionId"),
/// 					Value: pulumi.String("cn-hangzhou"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetTemplateApplications := quotas.LookupTemplateApplicationsOutput(ctx, quotas.GetTemplateApplicationsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultTemplateApplications.ID(),
/// 			},
/// 			ProductCode:     pulumi.String("vpc"),
/// 			QuotaActionCode: pulumi.String("vpc_whitelist/ha_vip_whitelist"),
/// 			QuotaCategory:   pulumi.String("FlowControl"),
/// 		}, nil)
/// 		ctx.Export("alicloudQuotasTemplateApplicationsExampleId", defaultGetTemplateApplications.ApplyT(func(defaultGetTemplateApplications quotas.GetTemplateApplicationsResult) (*string, error) {
/// 			return &defaultGetTemplateApplications.Applications[0].Id, nil
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountsArgs;
/// import com.pulumi.alicloud.quotas.TemplateApplications;
/// import com.pulumi.alicloud.quotas.TemplateApplicationsArgs;
/// import com.pulumi.alicloud.quotas.inputs.TemplateApplicationsDimensionArgs;
/// import com.pulumi.alicloud.quotas.QuotasFunctions;
/// import com.pulumi.alicloud.quotas.inputs.GetTemplateApplicationsArgs;
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
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .status("CreateSuccess")
///             .build());
///
///         var defaultTemplateApplications = new TemplateApplications("defaultTemplateApplications", TemplateApplicationsArgs.builder()
///             .quotaActionCode("vpc_whitelist/ha_vip_whitelist")
///             .productCode("vpc")
///             .quotaCategory("FlowControl")
///             .aliyunUids(default_.ids()[0])
///             .desireValue(6.0)
///             .noticeType(0)
///             .envLanguage("zh")
///             .reason("example")
///             .dimensions(
///                 TemplateApplicationsDimensionArgs.builder()
///                     .key("apiName")
///                     .value("GetProductQuotaDimension")
///                     .build(),
///                 TemplateApplicationsDimensionArgs.builder()
///                     .key("apiVersion")
///                     .value("2020-05-10")
///                     .build(),
///                 TemplateApplicationsDimensionArgs.builder()
///                     .key("regionId")
///                     .value("cn-hangzhou")
///                     .build())
///             .build());
///
///         final var defaultGetTemplateApplications = QuotasFunctions.getTemplateApplications(GetTemplateApplicationsArgs.builder()
///             .ids(defaultTemplateApplications.id())
///             .productCode("vpc")
///             .quotaActionCode("vpc_whitelist/ha_vip_whitelist")
///             .quotaCategory("FlowControl")
///             .build());
///
///         ctx.export("alicloudQuotasTemplateApplicationsExampleId", defaultGetTemplateApplications.applyValue(_defaultGetTemplateApplications -> _defaultGetTemplateApplications.applications()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultTemplateApplications:
///     type: alicloud:quotas:TemplateApplications
///     name: default
///     properties:
///       quotaActionCode: vpc_whitelist/ha_vip_whitelist
///       productCode: vpc
///       quotaCategory: FlowControl
///       aliyunUids:
///         - ${default.ids[0]}
///       desireValue: 6
///       noticeType: '0'
///       envLanguage: zh
///       reason: example
///       dimensions:
///         - key: apiName
///           value: GetProductQuotaDimension
///         - key: apiVersion
///           value: 2020-05-10
///         - key: regionId
///           value: cn-hangzhou
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getAccounts
///       arguments:
///         status: CreateSuccess
///   defaultGetTemplateApplications:
///     fn::invoke:
///       function: alicloud:quotas:getTemplateApplications
///       arguments:
///         ids:
///           - ${defaultTemplateApplications.id}
///         productCode: vpc
///         quotaActionCode: vpc_whitelist/ha_vip_whitelist
///         quotaCategory: FlowControl
/// outputs:
///   alicloudQuotasTemplateApplicationsExampleId: ${defaultGetTemplateApplications.applications[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quotas_get_template_applications_get_template_applications_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplateApplicationsResult> getTemplateApplications(
  GetTemplateApplicationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:quotas/getTemplateApplications:getTemplateApplications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplateApplicationsResult.fromMap(result);
}
