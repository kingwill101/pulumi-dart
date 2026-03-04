import 'package:pulumi/pulumi.dart' as pulumi;
import 'exchange_args.dart';
import 'exchange_state.dart';

/// Provides a RabbitMQ (AMQP) Exchange resource.
///
///
///
/// For information about RabbitMQ (AMQP) Exchange and how to use it, see [What is Exchange](https://www.alibabacloud.com/help/en/message-queue-for-rabbitmq/latest/createexchange).
///
/// &gt; **NOTE:** Available since v1.128.0.
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
/// const virtualHostName = config.get("virtualHostName") || "/";
/// const createInstance = new alicloud.amqp.Instance("CreateInstance", {
///     renewalDuration: 1,
///     maxTps: "3000",
///     periodCycle: "Month",
///     maxConnections: 2000,
///     supportEip: true,
///     autoRenew: false,
///     renewalStatus: "AutoRenewal",
///     period: 12,
///     instanceName: name,
///     supportTracing: false,
///     paymentType: "Subscription",
///     renewalDurationUnit: "Month",
///     instanceType: "enterprise",
///     queueCapacity: "200",
///     maxEipTps: "128",
///     storageSize: "0",
/// });
/// const _default = new alicloud.amqp.Exchange("default", {
///     virtualHostName: virtualHostName,
///     instanceId: createInstance.id,
///     internal: true,
///     autoDeleteState: false,
///     exchangeName: name,
///     exchangeType: "X_CONSISTENT_HASH",
///     alternateExchange: "bakExchange",
///     xDelayedType: "DIRECT",
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
/// virtual_host_name = config.get("virtualHostName")
/// if virtual_host_name is None:
///     virtual_host_name = "/"
/// create_instance = alicloud.amqp.Instance("CreateInstance",
///     renewal_duration=1,
///     max_tps="3000",
///     period_cycle="Month",
///     max_connections=2000,
///     support_eip=True,
///     auto_renew=False,
///     renewal_status="AutoRenewal",
///     period=12,
///     instance_name=name,
///     support_tracing=False,
///     payment_type="Subscription",
///     renewal_duration_unit="Month",
///     instance_type="enterprise",
///     queue_capacity="200",
///     max_eip_tps="128",
///     storage_size="0")
/// default = alicloud.amqp.Exchange("default",
///     virtual_host_name=virtual_host_name,
///     instance_id=create_instance.id,
///     internal=True,
///     auto_delete_state=False,
///     exchange_name=name,
///     exchange_type="X_CONSISTENT_HASH",
///     alternate_exchange="bakExchange",
///     x_delayed_type="DIRECT")
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
///     var virtualHostName = config.Get("virtualHostName") ?? "/";
///     var createInstance = new AliCloud.Amqp.Instance("CreateInstance", new()
///     {
///         RenewalDuration = 1,
///         MaxTps = "3000",
///         PeriodCycle = "Month",
///         MaxConnections = 2000,
///         SupportEip = true,
///         AutoRenew = false,
///         RenewalStatus = "AutoRenewal",
///         Period = 12,
///         InstanceName = name,
///         SupportTracing = false,
///         PaymentType = "Subscription",
///         RenewalDurationUnit = "Month",
///         InstanceType = "enterprise",
///         QueueCapacity = "200",
///         MaxEipTps = "128",
///         StorageSize = "0",
///     });
///
///     var @default = new AliCloud.Amqp.Exchange("default", new()
///     {
///         VirtualHostName = virtualHostName,
///         InstanceId = createInstance.Id,
///         Internal = true,
///         AutoDeleteState = false,
///         ExchangeName = name,
///         ExchangeType = "X_CONSISTENT_HASH",
///         AlternateExchange = "bakExchange",
///         XDelayedType = "DIRECT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/amqp"
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
/// 		virtualHostName := "/"
/// 		if param := cfg.Get("virtualHostName"); param != "" {
/// 			virtualHostName = param
/// 		}
/// 		createInstance, err := amqp.NewInstance(ctx, "CreateInstance", &amqp.InstanceArgs{
/// 			RenewalDuration:     pulumi.Int(1),
/// 			MaxTps:              pulumi.String("3000"),
/// 			PeriodCycle:         pulumi.String("Month"),
/// 			MaxConnections:      pulumi.Int(2000),
/// 			SupportEip:          pulumi.Bool(true),
/// 			AutoRenew:           pulumi.Bool(false),
/// 			RenewalStatus:       pulumi.String("AutoRenewal"),
/// 			Period:              pulumi.Int(12),
/// 			InstanceName:        pulumi.String(name),
/// 			SupportTracing:      pulumi.Bool(false),
/// 			PaymentType:         pulumi.String("Subscription"),
/// 			RenewalDurationUnit: pulumi.String("Month"),
/// 			InstanceType:        pulumi.String("enterprise"),
/// 			QueueCapacity:       pulumi.String("200"),
/// 			MaxEipTps:           pulumi.String("128"),
/// 			StorageSize:         pulumi.String("0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amqp.NewExchange(ctx, "default", &amqp.ExchangeArgs{
/// 			VirtualHostName:   pulumi.String(virtualHostName),
/// 			InstanceId:        createInstance.ID(),
/// 			Internal:          pulumi.Bool(true),
/// 			AutoDeleteState:   pulumi.Bool(false),
/// 			ExchangeName:      pulumi.String(name),
/// 			ExchangeType:      pulumi.String("X_CONSISTENT_HASH"),
/// 			AlternateExchange: pulumi.String("bakExchange"),
/// 			XDelayedType:      pulumi.String("DIRECT"),
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
/// import com.pulumi.alicloud.amqp.Instance;
/// import com.pulumi.alicloud.amqp.InstanceArgs;
/// import com.pulumi.alicloud.amqp.Exchange;
/// import com.pulumi.alicloud.amqp.ExchangeArgs;
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
///         final var virtualHostName = config.get("virtualHostName").orElse("/");
///         var createInstance = new Instance("createInstance", InstanceArgs.builder()
///             .renewalDuration(1)
///             .maxTps("3000")
///             .periodCycle("Month")
///             .maxConnections(2000)
///             .supportEip(true)
///             .autoRenew(false)
///             .renewalStatus("AutoRenewal")
///             .period(12)
///             .instanceName(name)
///             .supportTracing(false)
///             .paymentType("Subscription")
///             .renewalDurationUnit("Month")
///             .instanceType("enterprise")
///             .queueCapacity("200")
///             .maxEipTps("128")
///             .storageSize("0")
///             .build());
///
///         var default_ = new Exchange("default", ExchangeArgs.builder()
///             .virtualHostName(virtualHostName)
///             .instanceId(createInstance.id())
///             .internal(true)
///             .autoDeleteState(false)
///             .exchangeName(name)
///             .exchangeType("X_CONSISTENT_HASH")
///             .alternateExchange("bakExchange")
///             .xDelayedType("DIRECT")
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
///   virtualHostName:
///     type: string
///     default: /
/// resources:
///   createInstance:
///     type: alicloud:amqp:Instance
///     name: CreateInstance
///     properties:
///       renewalDuration: '1'
///       maxTps: '3000'
///       periodCycle: Month
///       maxConnections: '2000'
///       supportEip: true
///       autoRenew: false
///       renewalStatus: AutoRenewal
///       period: '12'
///       instanceName: ${name}
///       supportTracing: false
///       paymentType: Subscription
///       renewalDurationUnit: Month
///       instanceType: enterprise
///       queueCapacity: '200'
///       maxEipTps: '128'
///       storageSize: '0'
///   default:
///     type: alicloud:amqp:Exchange
///     properties:
///       virtualHostName: ${virtualHostName}
///       instanceId: ${createInstance.id}
///       internal: 'true'
///       autoDeleteState: 'false'
///       exchangeName: ${name}
///       exchangeType: X_CONSISTENT_HASH
///       alternateExchange: bakExchange
///       xDelayedType: DIRECT
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RabbitMQ (AMQP) Exchange can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:amqp/exchange:Exchange example <instance_id>:<virtual_host_name>:<exchange_name>
/// ```
class Exchange extends pulumi.CustomResource {
  /// The alternate exchange. An alternate exchange is used to receive messages that fail to be routed to queues from the current exchange.
  late final pulumi.Output<String?> alternateExchange;

  /// Specifies whether to automatically delete the exchange. Valid values:
  late final pulumi.Output<bool> autoDeleteState;

  /// CreateTime
  late final pulumi.Output<int> createTime;

  /// The name of the exchange that you want to create. The exchange name must meet the following conventions:
  ///
  /// - The name must be 1 to 255 characters in length, and can contain only letters, digits, hyphens (-), underscores (\_), periods (.), number signs (#), forward slashes (/), and at signs (@).
  /// - After the exchange is created, you cannot change its name. If you want to change its name, delete the exchange and create another exchange.
  late final pulumi.Output<String> exchangeName;

  /// The Exchange type. Value:
  /// - `DIRECT`: This type of Routing rule routes messages to a Queue whose Binding Key matches the Routing Key.
  /// - `TOPIC`: This type is similar to the DIRECT type. It uses Routing Key pattern matching and string comparison to route messages to the bound Queue.
  /// - `FANOUT`: This type of routing rule is very simple. It routes all messages sent to the Exchange to all queues bound to it, which is equivalent to the broadcast function.
  /// - `HEADERS`: This type is similar to the DIRECT type. Headers Exchange uses the Headers attribute instead of Routing Key for route matching. When binding Headers Exchange and Queue, the Key-value pair of the bound attribute is set. When sending a message to Headers Exchange, the Headers attribute Key-value pair of the message is set, and the message is routed to the bound Queue by comparing the Headers attribute Key-value pair with the bound attribute Key-value pair.
  /// - `X_delayed_message`: By declaring this type of Exchange, you can customize the Header attribute x-delay of the message to specify the delivery delay time period, in milliseconds. Messages will be delivered to the corresponding Queue after the time period defined in the x-delay according to the routing rules. The routing rule depends on the Exchange route type specified in the x-delayed-type.
  /// - `X_CONSISTENT_HASH`: The x-consistent-hash Exchange allows you to Hash the Routing Key or Header value and use the consistent hashing algorithm to route messages to different queues.
  late final pulumi.Output<String> exchangeType;

  /// The ID of the ApsaraMQ for RabbitMQ instance whose exchange you want to delete.
  late final pulumi.Output<String> instanceId;

  /// Specifies whether the exchange is an internal exchange. Valid values:
  late final pulumi.Output<bool> internal;

  /// The name of the vhost to which the exchange that you want to create belongs.
  late final pulumi.Output<String> virtualHostName;

  /// RabbitMQ supports the x-delayed-message Exchange. By declaring this type of Exchange, you can customize the x-delay header attribute to specify the delay period for message delivery, measured in milliseconds. The message will be delivered to the corresponding Queue after the period defined in x-delay. The routing rules are determined by the type of Exchange specified in x-delayed-type.
  late final pulumi.Output<String?> xDelayedType;

  /// Creates a new [Exchange].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Exchange]. {@macro pulumi_amqp_exchange_exchange_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Exchange(
    String name, {
    ExchangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:amqp/exchange:Exchange',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alternateExchange = registerOutput<String?>('alternateExchange');
    autoDeleteState = registerOutput<bool>('autoDeleteState');
    createTime = registerOutput<int>('createTime');
    exchangeName = registerOutput<String>('exchangeName');
    exchangeType = registerOutput<String>('exchangeType');
    instanceId = registerOutput<String>('instanceId');
    internal = registerOutput<bool>('internal');
    virtualHostName = registerOutput<String>('virtualHostName');
    xDelayedType = registerOutput<String?>('xDelayedType');
  }

  /// Gets an existing [Exchange] resource's state with the given [name] and [id].
  static Exchange get(
    String name,
    pulumi.Input<String> id, {
    ExchangeState? state,
  }) {
    return Exchange._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Exchange._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:amqp/exchange:Exchange',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    alternateExchange = registerOutput<String?>('alternateExchange');
    autoDeleteState = registerOutput<bool>('autoDeleteState');
    createTime = registerOutput<int>('createTime');
    exchangeName = registerOutput<String>('exchangeName');
    exchangeType = registerOutput<String>('exchangeType');
    instanceId = registerOutput<String>('instanceId');
    internal = registerOutput<bool>('internal');
    virtualHostName = registerOutput<String>('virtualHostName');
    xDelayedType = registerOutput<String?>('xDelayedType');
  }
}
