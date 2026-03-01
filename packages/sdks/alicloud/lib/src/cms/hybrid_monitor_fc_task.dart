import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_monitor_fc_task_args.dart';
import 'hybrid_monitor_fc_task_state.dart';

/// Provides a Cloud Monitor Service Hybrid Monitor Fc Task resource.
///
/// For information about Cloud Monitor Service Hybrid Monitor Fc Task and how to use it, see [What is Hybrid Monitor Fc Task](https://www.alibabacloud.com/help/en/cloudmonitor/latest/createhybridmonitortask).
///
/// > **NOTE:** Available since v1.179.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getAccount({});
/// const defaultNamespace = new alicloud.cms.Namespace("default", {
///     description: name,
///     namespace: name,
///     specification: "cms.s1.large",
/// });
/// const defaultHybridMonitorFcTask = new alicloud.cms.HybridMonitorFcTask("default", {
///     namespace: defaultNamespace.id,
///     yarmConfig: `---
/// products:
/// - namespace: \\"acs_ecs_dashboard\\"
///   metric_info:
///   - metric_list:
///     - \\"CPUUtilization\\"
///     - \\"DiskReadBPS\\"
///     - \\"InternetOut\\"
///     - \\"IntranetOut\\"
///     - \\"cpu_idle\\"
///     - \\"cpu_system\\"
///     - \\"cpu_total\\"
///     - \\"diskusage_utilization\\"
/// - namespace: \\"acs_rds_dashboard\\"
///   metric_info:
///   - metric_list:
///     - \\"MySQL_QPS\\"
///     - \\"MySQL_TPS\\"
/// `,
///     targetUserId: _default.then(_default => _default.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_account()
/// default_namespace = alicloud.cms.Namespace("default",
///     description=name,
///     namespace=name,
///     specification="cms.s1.large")
/// default_hybrid_monitor_fc_task = alicloud.cms.HybridMonitorFcTask("default",
///     namespace=default_namespace.id,
///     yarm_config="""---
/// products:
/// - namespace: \"acs_ecs_dashboard\"
///   metric_info:
///   - metric_list:
///     - \"CPUUtilization\"
///     - \"DiskReadBPS\"
///     - \"InternetOut\"
///     - \"IntranetOut\"
///     - \"cpu_idle\"
///     - \"cpu_system\"
///     - \"cpu_total\"
///     - \"diskusage_utilization\"
/// - namespace: \"acs_rds_dashboard\"
///   metric_info:
///   - metric_list:
///     - \"MySQL_QPS\"
///     - \"MySQL_TPS\"
/// """,
///     target_user_id=default.id)
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultNamespace = new AliCloud.Cms.Namespace("default", new()
///     {
///         Description = name,
///         NamespaceName = name,
///         Specification = "cms.s1.large",
///     });
///
///     var defaultHybridMonitorFcTask = new AliCloud.Cms.HybridMonitorFcTask("default", new()
///     {
///         Namespace = defaultNamespace.Id,
///         YarmConfig = @"---
/// products:
/// - namespace: \""acs_ecs_dashboard\""
///   metric_info:
///   - metric_list:
///     - \""CPUUtilization\""
///     - \""DiskReadBPS\""
///     - \""InternetOut\""
///     - \""IntranetOut\""
///     - \""cpu_idle\""
///     - \""cpu_system\""
///     - \""cpu_total\""
///     - \""diskusage_utilization\""
/// - namespace: \""acs_rds_dashboard\""
///   metric_info:
///   - metric_list:
///     - \""MySQL_QPS\""
///     - \""MySQL_TPS\""
/// ",
///         TargetUserId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNamespace, err := cms.NewNamespace(ctx, "default", &cms.NamespaceArgs{
/// 			Description:   pulumi.String(name),
/// 			Namespace:     pulumi.String(name),
/// 			Specification: pulumi.String("cms.s1.large"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewHybridMonitorFcTask(ctx, "default", &cms.HybridMonitorFcTaskArgs{
/// 			Namespace: defaultNamespace.ID(),
/// 			YarmConfig: pulumi.String(`---
/// products:
/// - namespace: \"acs_ecs_dashboard\"
///   metric_info:
///   - metric_list:
///     - \"CPUUtilization\"
///     - \"DiskReadBPS\"
///     - \"InternetOut\"
///     - \"IntranetOut\"
///     - \"cpu_idle\"
///     - \"cpu_system\"
///     - \"cpu_total\"
///     - \"diskusage_utilization\"
/// - namespace: \"acs_rds_dashboard\"
///   metric_info:
///   - metric_list:
///     - \"MySQL_QPS\"
///     - \"MySQL_TPS\"
/// `),
/// 			TargetUserId: pulumi.String(_default.Id),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.cms.Namespace;
/// import com.pulumi.alicloud.cms.NamespaceArgs;
/// import com.pulumi.alicloud.cms.HybridMonitorFcTask;
/// import com.pulumi.alicloud.cms.HybridMonitorFcTaskArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultNamespace = new Namespace("defaultNamespace", NamespaceArgs.builder()
///             .description(name)
///             .namespace(name)
///             .specification("cms.s1.large")
///             .build());
///
///         var defaultHybridMonitorFcTask = new HybridMonitorFcTask("defaultHybridMonitorFcTask", HybridMonitorFcTaskArgs.builder()
///             .namespace(defaultNamespace.id())
///             .yarmConfig("""
/// ---
/// products:
/// - namespace: \"acs_ecs_dashboard\"
///   metric_info:
///   - metric_list:
///     - \"CPUUtilization\"
///     - \"DiskReadBPS\"
///     - \"InternetOut\"
///     - \"IntranetOut\"
///     - \"cpu_idle\"
///     - \"cpu_system\"
///     - \"cpu_total\"
///     - \"diskusage_utilization\"
/// - namespace: \"acs_rds_dashboard\"
///   metric_info:
///   - metric_list:
///     - \"MySQL_QPS\"
///     - \"MySQL_TPS\"
///             """)
///             .targetUserId(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultNamespace:
///     type: alicloud:cms:Namespace
///     name: default
///     properties:
///       description: ${name}
///       namespace: ${name}
///       specification: cms.s1.large
///   defaultHybridMonitorFcTask:
///     type: alicloud:cms:HybridMonitorFcTask
///     name: default
///     properties:
///       namespace: ${defaultNamespace.id}
///       yarmConfig: |
///         ---
///         products:
///         - namespace: \"acs_ecs_dashboard\"
///           metric_info:
///           - metric_list:
///             - \"CPUUtilization\"
///             - \"DiskReadBPS\"
///             - \"InternetOut\"
///             - \"IntranetOut\"
///             - \"cpu_idle\"
///             - \"cpu_system\"
///             - \"cpu_total\"
///             - \"diskusage_utilization\"
///         - namespace: \"acs_rds_dashboard\"
///           metric_info:
///           - metric_list:
///             - \"MySQL_QPS\"
///             - \"MySQL_TPS\"
///       targetUserId: ${default.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Hybrid Monitor Fc Task can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/hybridMonitorFcTask:HybridMonitorFcTask example <hybrid_monitor_fc_task_id>:<namespace>
/// ```
class HybridMonitorFcTask extends pulumi.CustomResource {
  /// The ID of the monitoring task.
  late final pulumi.Output<String> hybridMonitorFcTaskId;
  /// The index warehouse where the host belongs.
  late final pulumi.Output<String> namespace;
  /// The ID of the member account. If you call API operations by using a management account, you can connect the Alibaba Cloud services that are activated for a member account in Resource Directory to Hybrid Cloud Monitoring. You can use Resource Directory to monitor Alibaba Cloud services across enterprise accounts.
  late final pulumi.Output<String> targetUserId;
  /// The configuration file of the Alibaba Cloud service that you want to monitor by using Hybrid Cloud Monitoring.
  late final pulumi.Output<String> yarmConfig;

  /// Creates a new [HybridMonitorFcTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridMonitorFcTask]. {@macro pulumi_cms_hybrid_monitor_fc_task_hybrid_monitor_fc_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridMonitorFcTask(
    String name, {
    HybridMonitorFcTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/hybridMonitorFcTask:HybridMonitorFcTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hybridMonitorFcTaskId = registerOutput<String>('hybridMonitorFcTaskId');
    this.namespace = registerOutput<String>('namespace');
    this.targetUserId = registerOutput<String>('targetUserId');
    this.yarmConfig = registerOutput<String>('yarmConfig');
  }

  /// Gets an existing [HybridMonitorFcTask] resource's state with the given [name] and [id].
  static HybridMonitorFcTask get(
    String name,
    pulumi.Input<String> id, {
    HybridMonitorFcTaskState? state,
  }) {
    return HybridMonitorFcTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HybridMonitorFcTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/hybridMonitorFcTask:HybridMonitorFcTask',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hybridMonitorFcTaskId = registerOutput<String>('hybridMonitorFcTaskId');
    this.namespace = registerOutput<String>('namespace');
    this.targetUserId = registerOutput<String>('targetUserId');
    this.yarmConfig = registerOutput<String>('yarmConfig');
  }
}
