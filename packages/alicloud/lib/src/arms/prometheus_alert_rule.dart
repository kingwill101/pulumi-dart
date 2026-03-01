import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_alert_rule_annotation.dart';
import 'prometheus_alert_rule_args.dart';
import 'prometheus_alert_rule_label.dart';

/// Provides a Application Real-Time Monitoring Service (ARMS) Prometheus Alert Rule resource.
///
/// For information about Application Real-Time Monitoring Service (ARMS) Prometheus Alert Rule and how to use it, see [What is Prometheus Alert Rule](https://www.alibabacloud.com/help/en/arms/prometheus-monitoring/api-arms-2019-08-08-createprometheusalertrule).
///
/// > **NOTE:** Available since v1.136.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultPrometheus = new alicloud.arms.Prometheus("default", {
///     clusterType: "remote-write",
///     clusterName: `${name}-${_default.result}`,
///     grafanaInstanceId: "free",
/// });
/// const example = new alicloud.arms.PrometheusAlertRule("example", {
///     clusterId: defaultPrometheus.clusterId,
///     duration: "1",
///     expression: "node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes * 100 < 10",
///     message: "node available memory is less than 10%",
///     prometheusAlertRuleName: name,
///     notifyType: "ALERT_MANAGER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_prometheus = alicloud.arms.Prometheus("default",
///     cluster_type="remote-write",
///     cluster_name=f"{name}-{default['result']}",
///     grafana_instance_id="free")
/// example = alicloud.arms.PrometheusAlertRule("example",
///     cluster_id=default_prometheus.cluster_id,
///     duration="1",
///     expression="node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes * 100 < 10",
///     message="node available memory is less than 10%",
///     prometheus_alert_rule_name=name,
///     notify_type="ALERT_MANAGER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultPrometheus = new AliCloud.Arms.Prometheus("default", new()
///     {
///         ClusterType = "remote-write",
///         ClusterName = $"{name}-{@default.Result}",
///         GrafanaInstanceId = "free",
///     });
///
///     var example = new AliCloud.Arms.PrometheusAlertRule("example", new()
///     {
///         ClusterId = defaultPrometheus.ClusterId,
///         Duration = "1",
///         Expression = "node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes * 100 < 10",
///         Message = "node available memory is less than 10%",
///         PrometheusAlertRuleName = name,
///         NotifyType = "ALERT_MANAGER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/arms"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPrometheus, err := arms.NewPrometheus(ctx, "default", &arms.PrometheusArgs{
/// 			ClusterType:       pulumi.String("remote-write"),
/// 			ClusterName:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			GrafanaInstanceId: pulumi.String("free"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = arms.NewPrometheusAlertRule(ctx, "example", &arms.PrometheusAlertRuleArgs{
/// 			ClusterId:               defaultPrometheus.ClusterId,
/// 			Duration:                pulumi.String("1"),
/// 			Expression:              pulumi.String("node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes * 100 < 10"),
/// 			Message:                 pulumi.String("node available memory is less than 10%"),
/// 			PrometheusAlertRuleName: pulumi.String(name),
/// 			NotifyType:              pulumi.String("ALERT_MANAGER"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.arms.Prometheus;
/// import com.pulumi.alicloud.arms.PrometheusArgs;
/// import com.pulumi.alicloud.arms.PrometheusAlertRule;
/// import com.pulumi.alicloud.arms.PrometheusAlertRuleArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultPrometheus = new Prometheus("defaultPrometheus", PrometheusArgs.builder()
///             .clusterType("remote-write")
///             .clusterName(String.format("%s-%s", name,default_.result()))
///             .grafanaInstanceId("free")
///             .build());
///
///         var example = new PrometheusAlertRule("example", PrometheusAlertRuleArgs.builder()
///             .clusterId(defaultPrometheus.clusterId())
///             .duration("1")
///             .expression("node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes * 100 < 10")
///             .message("node available memory is less than 10%")
///             .prometheusAlertRuleName(name)
///             .notifyType("ALERT_MANAGER")
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
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultPrometheus:
///     type: alicloud:arms:Prometheus
///     name: default
///     properties:
///       clusterType: remote-write
///       clusterName: ${name}-${default.result}
///       grafanaInstanceId: free
///   example:
///     type: alicloud:arms:PrometheusAlertRule
///     properties:
///       clusterId: ${defaultPrometheus.clusterId}
///       duration: 1
///       expression: node_memory_MemAvailable_bytes / node_memory_MemTotal_bytes * 100 < 10
///       message: node available memory is less than 10%
///       prometheusAlertRuleName: ${name}
///       notifyType: ALERT_MANAGER
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Application Real-Time Monitoring Service (ARMS) Prometheus Alert Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:arms/prometheusAlertRule:PrometheusAlertRule example <cluster_id>:<prometheus_alert_rule_id>
/// ```
class PrometheusAlertRule extends pulumi.CustomResource {
  /// The annotations of the alert rule. See `annotations` below.
  late final pulumi.Output<List<PrometheusAlertRuleAnnotation>?> annotations;
  /// The ID of the cluster.
  late final pulumi.Output<String> clusterId;
  /// The ID of the notification policy. This parameter is required when the `notify_type` parameter is set to `DISPATCH_RULE`.
  late final pulumi.Output<String?> dispatchRuleId;
  /// The duration of the alert.
  late final pulumi.Output<String> duration;
  /// The alert rule expression that follows the PromQL syntax.
  late final pulumi.Output<String> expression;
  /// The labels of the resource. See `labels` below.
  late final pulumi.Output<List<PrometheusAlertRuleLabel>?> labels;
  /// The message of the alert notification.
  late final pulumi.Output<String> message;
  /// The method of sending the alert notification. Valid values: `ALERT_MANAGER`, `DISPATCH_RULE`.
  late final pulumi.Output<String?> notifyType;
  /// The first ID of the resource.
  late final pulumi.Output<int> prometheusAlertRuleId;
  /// The name of the resource.
  late final pulumi.Output<String> prometheusAlertRuleName;
  /// The status of the resource. Valid values: `0`, `1`.
  late final pulumi.Output<int> status;
  /// The type of the alert rule.
  late final pulumi.Output<String> type;

  /// Creates a new [PrometheusAlertRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrometheusAlertRule]. {@macro pulumi_arms_prometheus_alert_rule_prometheus_alert_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrometheusAlertRule(
    String name, {
    PrometheusAlertRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:arms/prometheusAlertRule:PrometheusAlertRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<List<PrometheusAlertRuleAnnotation>?>('annotations');
    this.clusterId = registerOutput<String>('clusterId');
    this.dispatchRuleId = registerOutput<String?>('dispatchRuleId');
    this.duration = registerOutput<String>('duration');
    this.expression = registerOutput<String>('expression');
    this.labels = registerOutput<List<PrometheusAlertRuleLabel>?>('labels');
    this.message = registerOutput<String>('message');
    this.notifyType = registerOutput<String?>('notifyType');
    this.prometheusAlertRuleId = registerOutput<int>('prometheusAlertRuleId');
    this.prometheusAlertRuleName = registerOutput<String>('prometheusAlertRuleName');
    this.status = registerOutput<int>('status');
    this.type = registerOutput<String>('type');
  }
}
