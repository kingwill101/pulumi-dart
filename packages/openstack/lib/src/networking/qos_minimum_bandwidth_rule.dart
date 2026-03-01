import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_minimum_bandwidth_rule_args.dart';

/// Manages a V2 Neutron QoS minimum bandwidth rule resource within OpenStack.
///
/// ## Example Usage
///
/// ### Create a QoS Policy with some minimum bandwidth rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qosPolicy1 = new openstack.networking.QosPolicy("qos_policy_1", {
///     name: "qos_policy_1",
///     description: "min_kbps",
/// });
/// const minimumBandwidthRule1 = new openstack.networking.QosMinimumBandwidthRule("minimum_bandwidth_rule_1", {
///     qosPolicyId: qosPolicy1.id,
///     minKbps: 200,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos_policy1 = openstack.networking.QosPolicy("qos_policy_1",
///     name="qos_policy_1",
///     description="min_kbps")
/// minimum_bandwidth_rule1 = openstack.networking.QosMinimumBandwidthRule("minimum_bandwidth_rule_1",
///     qos_policy_id=qos_policy1.id,
///     min_kbps=200)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var qosPolicy1 = new OpenStack.Networking.QosPolicy("qos_policy_1", new()
///     {
///         Name = "qos_policy_1",
///         Description = "min_kbps",
///     });
///
///     var minimumBandwidthRule1 = new OpenStack.Networking.QosMinimumBandwidthRule("minimum_bandwidth_rule_1", new()
///     {
///         QosPolicyId = qosPolicy1.Id,
///         MinKbps = 200,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		qosPolicy1, err := networking.NewQosPolicy(ctx, "qos_policy_1", &networking.QosPolicyArgs{
/// 			Name:        pulumi.String("qos_policy_1"),
/// 			Description: pulumi.String("min_kbps"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewQosMinimumBandwidthRule(ctx, "minimum_bandwidth_rule_1", &networking.QosMinimumBandwidthRuleArgs{
/// 			QosPolicyId: qosPolicy1.ID(),
/// 			MinKbps:     pulumi.Int(200),
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
/// import com.pulumi.openstack.networking.QosPolicy;
/// import com.pulumi.openstack.networking.QosPolicyArgs;
/// import com.pulumi.openstack.networking.QosMinimumBandwidthRule;
/// import com.pulumi.openstack.networking.QosMinimumBandwidthRuleArgs;
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
///         var qosPolicy1 = new QosPolicy("qosPolicy1", QosPolicyArgs.builder()
///             .name("qos_policy_1")
///             .description("min_kbps")
///             .build());
///
///         var minimumBandwidthRule1 = new QosMinimumBandwidthRule("minimumBandwidthRule1", QosMinimumBandwidthRuleArgs.builder()
///             .qosPolicyId(qosPolicy1.id())
///             .minKbps(200)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   qosPolicy1:
///     type: openstack:networking:QosPolicy
///     name: qos_policy_1
///     properties:
///       name: qos_policy_1
///       description: min_kbps
///   minimumBandwidthRule1:
///     type: openstack:networking:QosMinimumBandwidthRule
///     name: minimum_bandwidth_rule_1
///     properties:
///       qosPolicyId: ${qosPolicy1.id}
///       minKbps: 200
/// ```
///
///
/// ## Import
///
/// QoS minimum bandwidth rules can be imported using the `qos_policy_id/minimum_bandwidth_rule_id` format, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/qosMinimumBandwidthRule:QosMinimumBandwidthRule minimum_bandwidth_rule_1 d6ae28ce-fcb5-4180-aa62-d260a27e09ae/46dfb556-b92f-48ce-94c5-9a9e2140de94
/// ```
class QosMinimumBandwidthRule extends pulumi.CustomResource {
  /// The direction of traffic. Defaults to "egress". Changing this updates the direction of the
  /// existing QoS minimum bandwidth rule.
  late final pulumi.Output<String?> direction;
  /// The minimum kilobits per second. Changing this updates the min kbps value of the existing
  /// QoS minimum bandwidth rule.
  late final pulumi.Output<int> minKbps;
  /// The QoS policy reference. Changing this creates a new QoS minimum bandwidth rule.
  late final pulumi.Output<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS minimum bandwidth rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS minimum bandwidth rule.
  late final pulumi.Output<String> region;

  /// Creates a new [QosMinimumBandwidthRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QosMinimumBandwidthRule]. {@macro pulumi_networking_qos_minimum_bandwidth_rule_qos_minimum_bandwidth_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QosMinimumBandwidthRule(
    String name, {
    QosMinimumBandwidthRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/qosMinimumBandwidthRule:QosMinimumBandwidthRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.direction = registerOutput<String?>('direction');
    this.minKbps = registerOutput<int>('minKbps');
    this.qosPolicyId = registerOutput<String>('qosPolicyId');
    this.region = registerOutput<String>('region');
  }
}
