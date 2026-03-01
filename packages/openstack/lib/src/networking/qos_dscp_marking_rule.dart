import 'package:pulumi/pulumi.dart' as pulumi;
import 'qos_dscp_marking_rule_args.dart';

/// Manages a V2 Neutron QoS DSCP marking rule resource within OpenStack.
///
/// ## Example Usage
///
/// ### Create a QoS Policy with some DSCP marking rule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const qosPolicy1 = new openstack.networking.QosPolicy("qos_policy_1", {
///     name: "qos_policy_1",
///     description: "dscp_mark",
/// });
/// const dscpMarkingRule1 = new openstack.networking.QosDscpMarkingRule("dscp_marking_rule_1", {
///     qosPolicyId: qosPolicy1.id,
///     dscpMark: 26,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// qos_policy1 = openstack.networking.QosPolicy("qos_policy_1",
///     name="qos_policy_1",
///     description="dscp_mark")
/// dscp_marking_rule1 = openstack.networking.QosDscpMarkingRule("dscp_marking_rule_1",
///     qos_policy_id=qos_policy1.id,
///     dscp_mark=26)
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
///         Description = "dscp_mark",
///     });
///
///     var dscpMarkingRule1 = new OpenStack.Networking.QosDscpMarkingRule("dscp_marking_rule_1", new()
///     {
///         QosPolicyId = qosPolicy1.Id,
///         DscpMark = 26,
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
/// 			Description: pulumi.String("dscp_mark"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewQosDscpMarkingRule(ctx, "dscp_marking_rule_1", &networking.QosDscpMarkingRuleArgs{
/// 			QosPolicyId: qosPolicy1.ID(),
/// 			DscpMark:    pulumi.Int(26),
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
/// import com.pulumi.openstack.networking.QosDscpMarkingRule;
/// import com.pulumi.openstack.networking.QosDscpMarkingRuleArgs;
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
///             .description("dscp_mark")
///             .build());
///
///         var dscpMarkingRule1 = new QosDscpMarkingRule("dscpMarkingRule1", QosDscpMarkingRuleArgs.builder()
///             .qosPolicyId(qosPolicy1.id())
///             .dscpMark(26)
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
///       description: dscp_mark
///   dscpMarkingRule1:
///     type: openstack:networking:QosDscpMarkingRule
///     name: dscp_marking_rule_1
///     properties:
///       qosPolicyId: ${qosPolicy1.id}
///       dscpMark: 26
/// ```
///
///
/// ## Import
///
/// QoS DSCP marking rules can be imported using the `qos_policy_id/dscp_marking_rule_id` format, e.g.
///
/// ```sh
/// $ pulumi import openstack:networking/qosDscpMarkingRule:QosDscpMarkingRule dscp_marking_rule_1 d6ae28ce-fcb5-4180-aa62-d260a27e09ae/46dfb556-b92f-48ce-94c5-9a9e2140de94
/// ```
class QosDscpMarkingRule extends pulumi.CustomResource {
  /// The value of DSCP mark. Changing this updates the DSCP mark value existing
  /// QoS DSCP marking rule.
  late final pulumi.Output<int> dscpMark;
  /// The QoS policy reference. Changing this creates a new QoS DSCP marking rule.
  late final pulumi.Output<String> qosPolicyId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron QoS DSCP marking rule. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new QoS DSCP marking rule.
  late final pulumi.Output<String> region;

  /// Creates a new [QosDscpMarkingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QosDscpMarkingRule]. {@macro pulumi_networking_qos_dscp_marking_rule_qos_dscp_marking_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QosDscpMarkingRule(
    String name, {
    QosDscpMarkingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/qosDscpMarkingRule:QosDscpMarkingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dscpMark = registerOutput<int>('dscpMark');
    this.qosPolicyId = registerOutput<String>('qosPolicyId');
    this.region = registerOutput<String>('region');
  }
}
