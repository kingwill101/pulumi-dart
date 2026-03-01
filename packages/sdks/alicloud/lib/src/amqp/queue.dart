import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';
import 'queue_state.dart';

/// Provides a RabbitMQ (AMQP) Queue resource.
///
/// For information about RabbitMQ (AMQP) Queue and how to use it, see [What is Queue](https://www.alibabacloud.com/help/en/message-queue-for-rabbitmq/latest/createqueue).
///
/// > **NOTE:** Available since v1.127.0.
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
/// const defaultQueue = new alicloud.amqp.Queue("default", {
///     instanceId: defaultInstance.id,
///     virtualHostName: defaultVirtualHost.virtualHostName,
///     queueName: `${name}-${_default.result}`,
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
/// default_queue = alicloud.amqp.Queue("default",
///     instance_id=default_instance.id,
///     virtual_host_name=default_virtual_host.virtual_host_name,
///     queue_name=f"{name}-{default['result']}")
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
///     var defaultQueue = new AliCloud.Amqp.Queue("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         VirtualHostName = defaultVirtualHost.VirtualHostName,
///         QueueName = $"{name}-{@default.Result}",
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
/// 		defaultVirtualHost, err := amqp.NewVirtualHost(ctx, "default", &amqp.VirtualHostArgs{
/// 			InstanceId:      defaultInstance.ID(),
/// 			VirtualHostName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amqp.NewQueue(ctx, "default", &amqp.QueueArgs{
/// 			InstanceId:      defaultInstance.ID(),
/// 			VirtualHostName: defaultVirtualHost.VirtualHostName,
/// 			QueueName:       pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.alicloud.amqp.Queue;
/// import com.pulumi.alicloud.amqp.QueueArgs;
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
///         var defaultQueue = new Queue("defaultQueue", QueueArgs.builder()
///             .instanceId(defaultInstance.id())
///             .virtualHostName(defaultVirtualHost.virtualHostName())
///             .queueName(String.format("%s-%s", name,default_.result()))
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
///   defaultQueue:
///     type: alicloud:amqp:Queue
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       virtualHostName: ${defaultVirtualHost.virtualHostName}
///       queueName: ${name}-${default.result}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RabbitMQ (AMQP) Queue can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:amqp/queue:Queue example <instance_id>:<virtual_host_name>:<queue_name>
/// ```
class Queue extends pulumi.CustomResource {
  /// Specifies whether to automatically delete the queue. Valid values:
  late final pulumi.Output<bool?> autoDeleteState;
  /// The auto-expiration time for the queue.
  late final pulumi.Output<String?> autoExpireState;
  /// The dead-letter exchange.
  late final pulumi.Output<String?> deadLetterExchange;
  /// The dead-letter routing key.
  late final pulumi.Output<String?> deadLetterRoutingKey;
  /// The ID of the ApsaraMQ for RabbitMQ instance to which the queue belongs.
  late final pulumi.Output<String> instanceId;
  /// The maximum number of messages that can be stored in the queue.
  late final pulumi.Output<String?> maxLength;
  /// The priority of the queue.
  late final pulumi.Output<int?> maximumPriority;
  /// The time to live (TTL) of a message in the queue.
  late final pulumi.Output<String?> messageTtl;
  /// The name of the queue to create.
  late final pulumi.Output<String> queueName;
  /// The name of the vhost to which the queue belongs. The name can contain only letters, digits, hyphens (-), underscores (_), periods (.), number signs (#), forward slashes (/), and at signs (@). The name must be 1 to 255 characters in length.
  late final pulumi.Output<String> virtualHostName;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_amqp_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:amqp/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoDeleteState = registerOutput<bool?>('autoDeleteState');
    this.autoExpireState = registerOutput<String?>('autoExpireState');
    this.deadLetterExchange = registerOutput<String?>('deadLetterExchange');
    this.deadLetterRoutingKey = registerOutput<String?>('deadLetterRoutingKey');
    this.instanceId = registerOutput<String>('instanceId');
    this.maxLength = registerOutput<String?>('maxLength');
    this.maximumPriority = registerOutput<int?>('maximumPriority');
    this.messageTtl = registerOutput<String?>('messageTtl');
    this.queueName = registerOutput<String>('queueName');
    this.virtualHostName = registerOutput<String>('virtualHostName');
  }

  /// Gets an existing [Queue] resource's state with the given [name] and [id].
  static Queue get(
    String name,
    pulumi.Input<String> id, {
    QueueState? state,
  }) {
    return Queue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Queue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:amqp/queue:Queue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoDeleteState = registerOutput<bool?>('autoDeleteState');
    this.autoExpireState = registerOutput<String?>('autoExpireState');
    this.deadLetterExchange = registerOutput<String?>('deadLetterExchange');
    this.deadLetterRoutingKey = registerOutput<String?>('deadLetterRoutingKey');
    this.instanceId = registerOutput<String>('instanceId');
    this.maxLength = registerOutput<String?>('maxLength');
    this.maximumPriority = registerOutput<int?>('maximumPriority');
    this.messageTtl = registerOutput<String?>('messageTtl');
    this.queueName = registerOutput<String>('queueName');
    this.virtualHostName = registerOutput<String>('virtualHostName');
  }
}
