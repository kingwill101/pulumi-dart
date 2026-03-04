import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rule_args.dart';
import 'firewall_rule_state.dart';

/// Provides a Simple Application Server Firewall Rule resource.
///
/// For information about Simple Application Server Firewall Rule and how to use it, see [What is Firewall Rule](https://www.alibabacloud.com/help/doc-detail/190449.htm).
///
/// &gt; **NOTE:** Available since v1.143.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.simpleapplicationserver.getImages({});
/// const defaultGetServerPlans = alicloud.simpleapplicationserver.getServerPlans({});
/// const defaultInstance = new alicloud.simpleapplicationserver.Instance("default", {
///     paymentType: "Subscription",
///     planId: defaultGetServerPlans.then(defaultGetServerPlans => defaultGetServerPlans.plans?.[0]?.id),
///     instanceName: name,
///     imageId: _default.then(_default => _default.images?.[0]?.id),
///     period: 1,
///     dataDiskSize: 100,
/// });
/// const defaultFirewallRule = new alicloud.simpleapplicationserver.FirewallRule("default", {
///     instanceId: defaultInstance.id,
///     ruleProtocol: "Tcp",
///     port: "9999",
///     remark: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.simpleapplicationserver.get_images()
/// default_get_server_plans = alicloud.simpleapplicationserver.get_server_plans()
/// default_instance = alicloud.simpleapplicationserver.Instance("default",
///     payment_type="Subscription",
///     plan_id=default_get_server_plans.plans[0].id,
///     instance_name=name,
///     image_id=default.images[0].id,
///     period=1,
///     data_disk_size=100)
/// default_firewall_rule = alicloud.simpleapplicationserver.FirewallRule("default",
///     instance_id=default_instance.id,
///     rule_protocol="Tcp",
///     port="9999",
///     remark=name)
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.SimpleApplicationServer.GetImages.Invoke();
///
///     var defaultGetServerPlans = AliCloud.SimpleApplicationServer.GetServerPlans.Invoke();
///
///     var defaultInstance = new AliCloud.SimpleApplicationServer.Instance("default", new()
///     {
///         PaymentType = "Subscription",
///         PlanId = defaultGetServerPlans.Apply(getServerPlansResult => getServerPlansResult.Plans[0]?.Id),
///         InstanceName = name,
///         ImageId = @default.Apply(@default => @default.Apply(getImagesResult => getImagesResult.Images[0]?.Id)),
///         Period = 1,
///         DataDiskSize = 100,
///     });
///
///     var defaultFirewallRule = new AliCloud.SimpleApplicationServer.FirewallRule("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         RuleProtocol = "Tcp",
///         Port = "9999",
///         Remark = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := simpleapplicationserver.GetImages(ctx, &simpleapplicationserver.GetImagesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetServerPlans, err := simpleapplicationserver.GetServerPlans(ctx, &simpleapplicationserver.GetServerPlansArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := simpleapplicationserver.NewInstance(ctx, "default", &simpleapplicationserver.InstanceArgs{
/// 			PaymentType:  pulumi.String("Subscription"),
/// 			PlanId:       pulumi.String(defaultGetServerPlans.Plans[0].Id),
/// 			InstanceName: pulumi.String(name),
/// 			ImageId:      pulumi.String(_default.Images[0].Id),
/// 			Period:       pulumi.Int(1),
/// 			DataDiskSize: pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = simpleapplicationserver.NewFirewallRule(ctx, "default", &simpleapplicationserver.FirewallRuleArgs{
/// 			InstanceId:   defaultInstance.ID(),
/// 			RuleProtocol: pulumi.String("Tcp"),
/// 			Port:         pulumi.String("9999"),
/// 			Remark:       pulumi.String(name),
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
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerPlansArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.Instance;
/// import com.pulumi.alicloud.simpleapplicationserver.InstanceArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.FirewallRule;
/// import com.pulumi.alicloud.simpleapplicationserver.FirewallRuleArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = SimpleapplicationserverFunctions.getImages(GetImagesArgs.builder()
///             .build());
///
///         final var defaultGetServerPlans = SimpleapplicationserverFunctions.getServerPlans(GetServerPlansArgs.builder()
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .paymentType("Subscription")
///             .planId(defaultGetServerPlans.plans()[0].id())
///             .instanceName(name)
///             .imageId(default_.images()[0].id())
///             .period(1)
///             .dataDiskSize(100)
///             .build());
///
///         var defaultFirewallRule = new FirewallRule("defaultFirewallRule", FirewallRuleArgs.builder()
///             .instanceId(defaultInstance.id())
///             .ruleProtocol("Tcp")
///             .port("9999")
///             .remark(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   defaultInstance:
///     type: alicloud:simpleapplicationserver:Instance
///     name: default
///     properties:
///       paymentType: Subscription
///       planId: ${defaultGetServerPlans.plans[0].id}
///       instanceName: ${name}
///       imageId: ${default.images[0].id}
///       period: 1
///       dataDiskSize: 100
///   defaultFirewallRule:
///     type: alicloud:simpleapplicationserver:FirewallRule
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       ruleProtocol: Tcp
///       port: '9999'
///       remark: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getImages
///       arguments: {}
///   defaultGetServerPlans:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerPlans
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Simple Application Server Firewall Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:simpleapplicationserver/firewallRule:FirewallRule example <instance_id>:<firewall_rule_id>
/// ```
class FirewallRule extends pulumi.CustomResource {
  /// The ID of the firewall rule.
  late final pulumi.Output<String> firewallRuleId;

  /// Alibaba Cloud simple application server instance ID.
  late final pulumi.Output<String> instanceId;

  /// The port range. Valid values of port numbers: `1` to `65535`. Specify a port range in the format of `&lt;start port number&gt;/&lt;end port number&gt;`. Example: `1024/1055`, which indicates the port range of `1024` through `1055`.
  late final pulumi.Output<String> port;

  /// The remarks of the firewall rule.
  late final pulumi.Output<String?> remark;

  /// The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  late final pulumi.Output<String> ruleProtocol;

  /// Creates a new [FirewallRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallRule]. {@macro pulumi_simpleapplicationserver_firewall_rule_firewall_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallRule(
    String name, {
    FirewallRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:simpleapplicationserver/firewallRule:FirewallRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    firewallRuleId = registerOutput<String>('firewallRuleId');
    instanceId = registerOutput<String>('instanceId');
    port = registerOutput<String>('port');
    remark = registerOutput<String?>('remark');
    ruleProtocol = registerOutput<String>('ruleProtocol');
  }

  /// Gets an existing [FirewallRule] resource's state with the given [name] and [id].
  static FirewallRule get(
    String name,
    pulumi.Input<String> id, {
    FirewallRuleState? state,
  }) {
    return FirewallRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:simpleapplicationserver/firewallRule:FirewallRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    firewallRuleId = registerOutput<String>('firewallRuleId');
    instanceId = registerOutput<String>('instanceId');
    port = registerOutput<String>('port');
    remark = registerOutput<String?>('remark');
    ruleProtocol = registerOutput<String>('ruleProtocol');
  }
}
