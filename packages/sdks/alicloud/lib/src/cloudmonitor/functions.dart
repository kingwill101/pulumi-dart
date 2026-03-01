import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_hybrid_double_writes_args.dart';
import 'get_service_hybrid_double_writes_result.dart';
import 'get_service_metric_alarm_rules_args.dart';
import 'get_service_metric_alarm_rules_result.dart';

/// This data source provides the Cloud Monitor Service Hybrid Double Writes of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.220.0.
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
/// const _default = alicloud.getAccount({});
/// const source = new alicloud.cms.Namespace("source", {namespace: "your-source-namespace"});
/// const defaultNamespace = new alicloud.cms.Namespace("default", {namespace: "your-namespace"});
/// const defaultServiceHybridDoubleWrite = new alicloud.cloudmonitor.ServiceHybridDoubleWrite("default", {
///     sourceNamespace: source.id,
///     sourceUserId: _default.then(_default => _default.id),
///     namespace: defaultNamespace.id,
///     userId: _default.then(_default => _default.id),
/// });
/// const ids = alicloud.cloudmonitor.getServiceHybridDoubleWritesOutput({
///     ids: [defaultServiceHybridDoubleWrite.id],
/// });
/// export const cloudMonitorServiceHybridDoubleWritesId1 = ids.apply(ids => ids.hybridDoubleWrites?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// source = alicloud.cms.Namespace("source", namespace="your-source-namespace")
/// default_namespace = alicloud.cms.Namespace("default", namespace="your-namespace")
/// default_service_hybrid_double_write = alicloud.cloudmonitor.ServiceHybridDoubleWrite("default",
///     source_namespace=source.id,
///     source_user_id=default.id,
///     namespace=default_namespace.id,
///     user_id=default.id)
/// ids = alicloud.cloudmonitor.get_service_hybrid_double_writes_output(ids=[default_service_hybrid_double_write.id])
/// pulumi.export("cloudMonitorServiceHybridDoubleWritesId1", ids.hybrid_double_writes[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var source = new AliCloud.Cms.Namespace("source", new()
///     {
///         NamespaceName = "your-source-namespace",
///     });
///
///     var defaultNamespace = new AliCloud.Cms.Namespace("default", new()
///     {
///         NamespaceName = "your-namespace",
///     });
///
///     var defaultServiceHybridDoubleWrite = new AliCloud.CloudMonitor.ServiceHybridDoubleWrite("default", new()
///     {
///         SourceNamespace = source.Id,
///         SourceUserId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         Namespace = defaultNamespace.Id,
///         UserId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///     });
///
///     var ids = AliCloud.CloudMonitor.GetServiceHybridDoubleWrites.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultServiceHybridDoubleWrite.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudMonitorServiceHybridDoubleWritesId1"] = ids.Apply(getServiceHybridDoubleWritesResult => getServiceHybridDoubleWritesResult.HybridDoubleWrites[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudmonitor"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := cms.NewNamespace(ctx, "source", &cms.NamespaceArgs{
/// 			Namespace: pulumi.String("your-source-namespace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNamespace, err := cms.NewNamespace(ctx, "default", &cms.NamespaceArgs{
/// 			Namespace: pulumi.String("your-namespace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServiceHybridDoubleWrite, err := cloudmonitor.NewServiceHybridDoubleWrite(ctx, "default", &cloudmonitor.ServiceHybridDoubleWriteArgs{
/// 			SourceNamespace: source.ID(),
/// 			SourceUserId:    pulumi.String(_default.Id),
/// 			Namespace:       defaultNamespace.ID(),
/// 			UserId:          pulumi.String(_default.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cloudmonitor.GetServiceHybridDoubleWritesOutput(ctx, cloudmonitor.GetServiceHybridDoubleWritesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultServiceHybridDoubleWrite.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("cloudMonitorServiceHybridDoubleWritesId1", ids.ApplyT(func(ids cloudmonitor.GetServiceHybridDoubleWritesResult) (*string, error) {
/// 			return &ids.HybridDoubleWrites[0].Id, nil
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.cms.Namespace;
/// import com.pulumi.alicloud.cms.NamespaceArgs;
/// import com.pulumi.alicloud.cloudmonitor.ServiceHybridDoubleWrite;
/// import com.pulumi.alicloud.cloudmonitor.ServiceHybridDoubleWriteArgs;
/// import com.pulumi.alicloud.cloudmonitor.CloudmonitorFunctions;
/// import com.pulumi.alicloud.cloudmonitor.inputs.GetServiceHybridDoubleWritesArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var source = new Namespace("source", NamespaceArgs.builder()
///             .namespace("your-source-namespace")
///             .build());
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .namespace("your-namespace")
///             .build());
///
///         var defaultServiceHybridDoubleWrite = new ServiceHybridDoubleWrite("defaultServiceHybridDoubleWrite", ServiceHybridDoubleWriteArgs.builder()
///             .sourceNamespace(source.id())
///             .sourceUserId(default_.id())
///             .namespace(defaultNamespace.id())
///             .userId(default_.id())
///             .build());
///
///         final var ids = CloudmonitorFunctions.getServiceHybridDoubleWrites(GetServiceHybridDoubleWritesArgs.builder()
///             .ids(defaultServiceHybridDoubleWrite.id())
///             .build());
///
///         ctx.export("cloudMonitorServiceHybridDoubleWritesId1", ids.applyValue(_ids -> _ids.hybridDoubleWrites()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   source:
///     type: alicloud:cms:Namespace
///     properties:
///       namespace: your-source-namespace
///   defaultNamespace:
///     type: alicloud:cms:Namespace
///     name: default
///     properties:
///       namespace: your-namespace
///   defaultServiceHybridDoubleWrite:
///     type: alicloud:cloudmonitor:ServiceHybridDoubleWrite
///     name: default
///     properties:
///       sourceNamespace: ${source.id}
///       sourceUserId: ${default.id}
///       namespace: ${defaultNamespace.id}
///       userId: ${default.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   ids:
///     fn::invoke:
///       function: alicloud:cloudmonitor:getServiceHybridDoubleWrites
///       arguments:
///         ids:
///           - ${defaultServiceHybridDoubleWrite.id}
/// outputs:
///   cloudMonitorServiceHybridDoubleWritesId1: ${ids.hybridDoubleWrites[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudmonitor_get_service_hybrid_double_writes_get_service_hybrid_double_writes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceHybridDoubleWritesResult> getServiceHybridDoubleWrites(
  GetServiceHybridDoubleWritesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudmonitor/getServiceHybridDoubleWrites:getServiceHybridDoubleWrites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceHybridDoubleWritesResult.fromMap(result);
}

/// This data source provides the Cloud Monitor Service Metric Alarm Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.256.0.
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
/// const _default = alicloud.ecs.getInstances({
///     status: "Running",
/// });
/// const defaultAlarmContactGroup = new alicloud.cms.AlarmContactGroup("default", {alarmContactGroupName: name});
/// const defaultAlarm = new alicloud.cms.Alarm("default", {
///     name: name,
///     project: "acs_ecs_dashboard",
///     metric: "disk_writebytes",
///     period: 900,
///     silenceTime: 300,
///     webhook: "https://www.aliyun.com",
///     enabled: true,
///     contactGroups: [defaultAlarmContactGroup.alarmContactGroupName],
///     effectiveInterval: "06:00-20:00",
///     metricDimensions: _default.then(_default => `  [
///     {
///       \"instanceId\": \"${_default.ids?.[0]}\",
///       \"device\": \"/dev/vda1\"
///     }
///   ]
/// `),
///     escalationsCritical: {
///         statistics: "Average",
///         comparisonOperator: "<=",
///         threshold: "90",
///         times: 1,
///     },
///     escalationsInfo: {
///         statistics: "Minimum",
///         comparisonOperator: "!=",
///         threshold: "20",
///         times: 3,
///     },
///     escalationsWarn: {
///         statistics: "Average",
///         comparisonOperator: "==",
///         threshold: "30",
///         times: 5,
///     },
/// });
/// const ids = alicloud.cloudmonitor.getServiceMetricAlarmRulesOutput({
///     ids: [defaultAlarm.id],
/// });
/// export const cloudMonitorServiceMetricAlarmRulesId0 = ids.apply(ids => ids.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.ecs.get_instances(status="Running")
/// default_alarm_contact_group = alicloud.cms.AlarmContactGroup("default", alarm_contact_group_name=name)
/// default_alarm = alicloud.cms.Alarm("default",
///     name=name,
///     project="acs_ecs_dashboard",
///     metric="disk_writebytes",
///     period=900,
///     silence_time=300,
///     webhook="https://www.aliyun.com",
///     enabled=True,
///     contact_groups=[default_alarm_contact_group.alarm_contact_group_name],
///     effective_interval="06:00-20:00",
///     metric_dimensions=f"""  [
///     {{
///       \"instanceId\": \"{default.ids[0]}\",
///       \"device\": \"/dev/vda1\"
///     }}
///   ]
/// """,
///     escalations_critical={
///         "statistics": "Average",
///         "comparison_operator": "<=",
///         "threshold": "90",
///         "times": 1,
///     },
///     escalations_info={
///         "statistics": "Minimum",
///         "comparison_operator": "!=",
///         "threshold": "20",
///         "times": 3,
///     },
///     escalations_warn={
///         "statistics": "Average",
///         "comparison_operator": "==",
///         "threshold": "30",
///         "times": 5,
///     })
/// ids = alicloud.cloudmonitor.get_service_metric_alarm_rules_output(ids=[default_alarm.id])
/// pulumi.export("cloudMonitorServiceMetricAlarmRulesId0", ids.rules[0].id)
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
///     var @default = AliCloud.Ecs.GetInstances.Invoke(new()
///     {
///         Status = "Running",
///     });
///
///     var defaultAlarmContactGroup = new AliCloud.Cms.AlarmContactGroup("default", new()
///     {
///         AlarmContactGroupName = name,
///     });
///
///     var defaultAlarm = new AliCloud.Cms.Alarm("default", new()
///     {
///         Name = name,
///         Project = "acs_ecs_dashboard",
///         Metric = "disk_writebytes",
///         Period = 900,
///         SilenceTime = 300,
///         Webhook = "https://www.aliyun.com",
///         Enabled = true,
///         ContactGroups = new[]
///         {
///             defaultAlarmContactGroup.AlarmContactGroupName,
///         },
///         EffectiveInterval = "06:00-20:00",
///         MetricDimensions = @default.Apply(@default => @$"  [
///     {{
///       \""instanceId\"": \""{@default.Apply(getInstancesResult => getInstancesResult.Ids[0])}\"",
///       \""device\"": \""/dev/vda1\""
///     }}
///   ]
/// "),
///         EscalationsCritical = new AliCloud.Cms.Inputs.AlarmEscalationsCriticalArgs
///         {
///             Statistics = "Average",
///             ComparisonOperator = "<=",
///             Threshold = "90",
///             Times = 1,
///         },
///         EscalationsInfo = new AliCloud.Cms.Inputs.AlarmEscalationsInfoArgs
///         {
///             Statistics = "Minimum",
///             ComparisonOperator = "!=",
///             Threshold = "20",
///             Times = 3,
///         },
///         EscalationsWarn = new AliCloud.Cms.Inputs.AlarmEscalationsWarnArgs
///         {
///             Statistics = "Average",
///             ComparisonOperator = "==",
///             Threshold = "30",
///             Times = 5,
///         },
///     });
///
///     var ids = AliCloud.CloudMonitor.GetServiceMetricAlarmRules.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlarm.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cloudMonitorServiceMetricAlarmRulesId0"] = ids.Apply(getServiceMetricAlarmRulesResult => getServiceMetricAlarmRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudmonitor"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		_default, err := ecs.GetInstances(ctx, &ecs.GetInstancesArgs{
/// 			Status: pulumi.StringRef("Running"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlarmContactGroup, err := cms.NewAlarmContactGroup(ctx, "default", &cms.AlarmContactGroupArgs{
/// 			AlarmContactGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAlarm, err := cms.NewAlarm(ctx, "default", &cms.AlarmArgs{
/// 			Name:        pulumi.String(name),
/// 			Project:     pulumi.String("acs_ecs_dashboard"),
/// 			Metric:      pulumi.String("disk_writebytes"),
/// 			Period:      pulumi.Int(900),
/// 			SilenceTime: pulumi.Int(300),
/// 			Webhook:     pulumi.String("https://www.aliyun.com"),
/// 			Enabled:     pulumi.Bool(true),
/// 			ContactGroups: pulumi.StringArray{
/// 				defaultAlarmContactGroup.AlarmContactGroupName,
/// 			},
/// 			EffectiveInterval: pulumi.String("06:00-20:00"),
/// 			MetricDimensions: pulumi.Sprintf(`  [
///     {
///       \"instanceId\": \"%v\",
///       \"device\": \"/dev/vda1\"
///     }
///   ]
/// `, _default.Ids[0]),
/// 			EscalationsCritical: &cms.AlarmEscalationsCriticalArgs{
/// 				Statistics:         pulumi.String("Average"),
/// 				ComparisonOperator: pulumi.String("<="),
/// 				Threshold:          pulumi.String("90"),
/// 				Times:              pulumi.Int(1),
/// 			},
/// 			EscalationsInfo: &cms.AlarmEscalationsInfoArgs{
/// 				Statistics:         pulumi.String("Minimum"),
/// 				ComparisonOperator: pulumi.String("!="),
/// 				Threshold:          pulumi.String("20"),
/// 				Times:              pulumi.Int(3),
/// 			},
/// 			EscalationsWarn: &cms.AlarmEscalationsWarnArgs{
/// 				Statistics:         pulumi.String("Average"),
/// 				ComparisonOperator: pulumi.String("=="),
/// 				Threshold:          pulumi.String("30"),
/// 				Times:              pulumi.Int(5),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cloudmonitor.GetServiceMetricAlarmRulesOutput(ctx, cloudmonitor.GetServiceMetricAlarmRulesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultAlarm.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("cloudMonitorServiceMetricAlarmRulesId0", ids.ApplyT(func(ids cloudmonitor.GetServiceMetricAlarmRulesResult) (*string, error) {
/// 			return &ids.Rules[0].Id, nil
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.cms.AlarmContactGroup;
/// import com.pulumi.alicloud.cms.AlarmContactGroupArgs;
/// import com.pulumi.alicloud.cms.Alarm;
/// import com.pulumi.alicloud.cms.AlarmArgs;
/// import com.pulumi.alicloud.cms.inputs.AlarmEscalationsCriticalArgs;
/// import com.pulumi.alicloud.cms.inputs.AlarmEscalationsInfoArgs;
/// import com.pulumi.alicloud.cms.inputs.AlarmEscalationsWarnArgs;
/// import com.pulumi.alicloud.cloudmonitor.CloudmonitorFunctions;
/// import com.pulumi.alicloud.cloudmonitor.inputs.GetServiceMetricAlarmRulesArgs;
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
///         final var default = EcsFunctions.getInstances(GetInstancesArgs.builder()
///             .status("Running")
///             .build());
///
///         var defaultAlarmContactGroup = new AlarmContactGroup("defaultAlarmContactGroup", AlarmContactGroupArgs.builder()
///             .alarmContactGroupName(name)
///             .build());
///
///         var defaultAlarm = new Alarm("defaultAlarm", AlarmArgs.builder()
///             .name(name)
///             .project("acs_ecs_dashboard")
///             .metric("disk_writebytes")
///             .period(900)
///             .silenceTime(300)
///             .webhook("https://www.aliyun.com")
///             .enabled(true)
///             .contactGroups(defaultAlarmContactGroup.alarmContactGroupName())
///             .effectiveInterval("06:00-20:00")
///             .metricDimensions("""
///   [
///     {
///       \"instanceId\": \"%s\",
///       \"device\": \"/dev/vda1\"
///     }
///   ]
/// ", default_.ids()[0]))
///             .escalationsCritical(AlarmEscalationsCriticalArgs.builder()
///                 .statistics("Average")
///                 .comparisonOperator("<=")
///                 .threshold("90")
///                 .times(1)
///                 .build())
///             .escalationsInfo(AlarmEscalationsInfoArgs.builder()
///                 .statistics("Minimum")
///                 .comparisonOperator("!=")
///                 .threshold("20")
///                 .times(3)
///                 .build())
///             .escalationsWarn(AlarmEscalationsWarnArgs.builder()
///                 .statistics("Average")
///                 .comparisonOperator("==")
///                 .threshold("30")
///                 .times(5)
///                 .build())
///             .build());
///
///         final var ids = CloudmonitorFunctions.getServiceMetricAlarmRules(GetServiceMetricAlarmRulesArgs.builder()
///             .ids(defaultAlarm.id())
///             .build());
///
///         ctx.export("cloudMonitorServiceMetricAlarmRulesId0", ids.applyValue(_ids -> _ids.rules()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultAlarmContactGroup:
///     type: alicloud:cms:AlarmContactGroup
///     name: default
///     properties:
///       alarmContactGroupName: ${name}
///   defaultAlarm:
///     type: alicloud:cms:Alarm
///     name: default
///     properties:
///       name: ${name}
///       project: acs_ecs_dashboard
///       metric: disk_writebytes
///       period: 900
///       silenceTime: 300
///       webhook: https://www.aliyun.com
///       enabled: true
///       contactGroups:
///         - ${defaultAlarmContactGroup.alarmContactGroupName}
///       effectiveInterval: 06:00-20:00
///       metricDimensions: |2
///           [
///             {
///               \"instanceId\": \"${default.ids[0]}\",
///               \"device\": \"/dev/vda1\"
///             }
///           ]
///       escalationsCritical:
///         statistics: Average
///         comparisonOperator: <=
///         threshold: 90
///         times: 1
///       escalationsInfo:
///         statistics: Minimum
///         comparisonOperator: '!='
///         threshold: 20
///         times: 3
///       escalationsWarn:
///         statistics: Average
///         comparisonOperator: ==
///         threshold: 30
///         times: 5
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getInstances
///       arguments:
///         status: Running
///   ids:
///     fn::invoke:
///       function: alicloud:cloudmonitor:getServiceMetricAlarmRules
///       arguments:
///         ids:
///           - ${defaultAlarm.id}
/// outputs:
///   cloudMonitorServiceMetricAlarmRulesId0: ${ids.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudmonitor_get_service_metric_alarm_rules_get_service_metric_alarm_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceMetricAlarmRulesResult> getServiceMetricAlarmRules(
  GetServiceMetricAlarmRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudmonitor/getServiceMetricAlarmRules:getServiceMetricAlarmRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceMetricAlarmRulesResult.fromMap(result);
}
