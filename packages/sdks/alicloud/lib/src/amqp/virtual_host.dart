import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_host_args.dart';
import 'virtual_host_state.dart';

/// Amqp Virtual Host.
///
/// Provides a RabbitMQ (AMQP) Virtual Host resource.
///
/// For information about RabbitMQ (AMQP) Virtual Host and how to use it, see [What is Virtual Host](https://www.alibabacloud.com/help/en/message-queue-for-rabbitmq/latest/createvirtualhost).
///
/// > **NOTE:** Available since v1.126.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultInstance = new alicloud.amqp.Instance("default", {
///     instanceName: `${name}-${_default.result}`,
///     instanceType: "enterprise",
///     maxTps: "3000",
///     maxConnections: 2000,
///     queueCapacity: "200",
///     paymentType: "Subscription",
///     renewalStatus: "AutoRenewal",
///     renewalDuration: 1,
///     renewalDurationUnit: "Year",
///     supportEip: true,
/// });
/// const defaultVirtualHost = new alicloud.amqp.VirtualHost("default", {
///     instanceId: defaultInstance.id,
///     virtualHostName: `${name}-${_default.result}`,
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
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_instance = alicloud.amqp.Instance("default",
///     instance_name=f"{name}-{default['result']}",
///     instance_type="enterprise",
///     max_tps="3000",
///     max_connections=2000,
///     queue_capacity="200",
///     payment_type="Subscription",
///     renewal_status="AutoRenewal",
///     renewal_duration=1,
///     renewal_duration_unit="Year",
///     support_eip=True)
/// default_virtual_host = alicloud.amqp.VirtualHost("default",
///     instance_id=default_instance.id,
///     virtual_host_name=f"{name}-{default['result']}")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultInstance = new AliCloud.Amqp.Instance("default", new()
///     {
///         InstanceName = $"{name}-{@default.Result}",
///         InstanceType = "enterprise",
///         MaxTps = "3000",
///         MaxConnections = 2000,
///         QueueCapacity = "200",
///         PaymentType = "Subscription",
///         RenewalStatus = "AutoRenewal",
///         RenewalDuration = 1,
///         RenewalDurationUnit = "Year",
///         SupportEip = true,
///     });
///
///     var defaultVirtualHost = new AliCloud.Amqp.VirtualHost("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         VirtualHostName = $"{name}-{@default.Result}",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/amqp"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := amqp.NewInstance(ctx, "default", &amqp.InstanceArgs{
/// 			InstanceName:        pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			InstanceType:        pulumi.String("enterprise"),
/// 			MaxTps:              pulumi.String("3000"),
/// 			MaxConnections:      pulumi.Int(2000),
/// 			QueueCapacity:       pulumi.String("200"),
/// 			PaymentType:         pulumi.String("Subscription"),
/// 			RenewalStatus:       pulumi.String("AutoRenewal"),
/// 			RenewalDuration:     pulumi.Int(1),
/// 			RenewalDurationUnit: pulumi.String("Year"),
/// 			SupportEip:          pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amqp.NewVirtualHost(ctx, "default", &amqp.VirtualHostArgs{
/// 			InstanceId:      defaultInstance.ID(),
/// 			VirtualHostName: pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.alicloud.amqp.Instance;
/// import com.pulumi.alicloud.amqp.InstanceArgs;
/// import com.pulumi.alicloud.amqp.VirtualHost;
/// import com.pulumi.alicloud.amqp.VirtualHostArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .instanceName(String.format("%s-%s", name,default_.result()))
///             .instanceType("enterprise")
///             .maxTps("3000")
///             .maxConnections(2000)
///             .queueCapacity("200")
///             .paymentType("Subscription")
///             .renewalStatus("AutoRenewal")
///             .renewalDuration(1)
///             .renewalDurationUnit("Year")
///             .supportEip(true)
///             .build());
///
///         var defaultVirtualHost = new VirtualHost("defaultVirtualHost", VirtualHostArgs.builder()
///             .instanceId(defaultInstance.id())
///             .virtualHostName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultInstance:
///     type: alicloud:amqp:Instance
///     name: default
///     properties:
///       instanceName: ${name}-${default.result}
///       instanceType: enterprise
///       maxTps: 3000
///       maxConnections: 2000
///       queueCapacity: 200
///       paymentType: Subscription
///       renewalStatus: AutoRenewal
///       renewalDuration: 1
///       renewalDurationUnit: Year
///       supportEip: true
///   defaultVirtualHost:
///     type: alicloud:amqp:VirtualHost
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       virtualHostName: ${name}-${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RabbitMQ (AMQP) Virtual Host can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:amqp/virtualHost:VirtualHost example <instance_id>:<virtual_host_name>
/// ```
class VirtualHost extends pulumi.CustomResource {
  /// InstanceId.
  late final pulumi.Output<String> instanceId;
  /// VirtualHostName.
  late final pulumi.Output<String> virtualHostName;

  /// Creates a new [VirtualHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHost]. {@macro pulumi_amqp_virtual_host_virtual_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHost(
    String name, {
    VirtualHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:amqp/virtualHost:VirtualHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.virtualHostName = registerOutput<String>('virtualHostName');
  }

  /// Gets an existing [VirtualHost] resource's state with the given [name] and [id].
  static VirtualHost get(
    String name,
    pulumi.Input<String> id, {
    VirtualHostState? state,
  }) {
    return VirtualHost._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualHost._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:amqp/virtualHost:VirtualHost',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.virtualHostName = registerOutput<String>('virtualHostName');
  }
}
