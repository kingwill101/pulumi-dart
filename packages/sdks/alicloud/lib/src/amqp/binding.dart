import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_args.dart';
import 'binding_state.dart';

/// Provides a RabbitMQ (AMQP) Binding resource.
///
/// For information about RabbitMQ (AMQP) Binding and how to use it, see [What is Binding](https://www.alibabacloud.com/help/en/message-queue-for-rabbitmq/latest/createbinding).
///
/// &gt; **NOTE:** Available since v1.135.0.
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
/// const _default = new alicloud.amqp.Instance("default", {
///     instanceType: "enterprise",
///     maxTps: "3000",
///     queueCapacity: "200",
///     storageSize: "700",
///     supportEip: false,
///     maxEipTps: "128",
///     paymentType: "Subscription",
///     period: 1,
/// });
/// const defaultVirtualHost = new alicloud.amqp.VirtualHost("default", {
///     instanceId: _default.id,
///     virtualHostName: "tf-example",
/// });
/// const defaultExchange = new alicloud.amqp.Exchange("default", {
///     autoDeleteState: false,
///     exchangeName: "tf-example",
///     exchangeType: "HEADERS",
///     instanceId: _default.id,
///     internal: false,
///     virtualHostName: defaultVirtualHost.virtualHostName,
/// });
/// const defaultQueue = new alicloud.amqp.Queue("default", {
///     instanceId: _default.id,
///     queueName: "tf-example",
///     virtualHostName: defaultVirtualHost.virtualHostName,
/// });
/// const defaultBinding = new alicloud.amqp.Binding("default", {
///     argument: "x-match:all",
///     bindingKey: defaultQueue.queueName,
///     bindingType: "QUEUE",
///     destinationName: "tf-example",
///     instanceId: _default.id,
///     sourceExchange: defaultExchange.exchangeName,
///     virtualHostName: defaultVirtualHost.virtualHostName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.amqp.Instance("default",
///     instance_type="enterprise",
///     max_tps="3000",
///     queue_capacity="200",
///     storage_size="700",
///     support_eip=False,
///     max_eip_tps="128",
///     payment_type="Subscription",
///     period=1)
/// default_virtual_host = alicloud.amqp.VirtualHost("default",
///     instance_id=default.id,
///     virtual_host_name="tf-example")
/// default_exchange = alicloud.amqp.Exchange("default",
///     auto_delete_state=False,
///     exchange_name="tf-example",
///     exchange_type="HEADERS",
///     instance_id=default.id,
///     internal=False,
///     virtual_host_name=default_virtual_host.virtual_host_name)
/// default_queue = alicloud.amqp.Queue("default",
///     instance_id=default.id,
///     queue_name="tf-example",
///     virtual_host_name=default_virtual_host.virtual_host_name)
/// default_binding = alicloud.amqp.Binding("default",
///     argument="x-match:all",
///     binding_key=default_queue.queue_name,
///     binding_type="QUEUE",
///     destination_name="tf-example",
///     instance_id=default.id,
///     source_exchange=default_exchange.exchange_name,
///     virtual_host_name=default_virtual_host.virtual_host_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Amqp.Instance("default", new()
///     {
///         InstanceType = "enterprise",
///         MaxTps = "3000",
///         QueueCapacity = "200",
///         StorageSize = "700",
///         SupportEip = false,
///         MaxEipTps = "128",
///         PaymentType = "Subscription",
///         Period = 1,
///     });
///
///     var defaultVirtualHost = new AliCloud.Amqp.VirtualHost("default", new()
///     {
///         InstanceId = @default.Id,
///         VirtualHostName = "tf-example",
///     });
///
///     var defaultExchange = new AliCloud.Amqp.Exchange("default", new()
///     {
///         AutoDeleteState = false,
///         ExchangeName = "tf-example",
///         ExchangeType = "HEADERS",
///         InstanceId = @default.Id,
///         Internal = false,
///         VirtualHostName = defaultVirtualHost.VirtualHostName,
///     });
///
///     var defaultQueue = new AliCloud.Amqp.Queue("default", new()
///     {
///         InstanceId = @default.Id,
///         QueueName = "tf-example",
///         VirtualHostName = defaultVirtualHost.VirtualHostName,
///     });
///
///     var defaultBinding = new AliCloud.Amqp.Binding("default", new()
///     {
///         Argument = "x-match:all",
///         BindingKey = defaultQueue.QueueName,
///         BindingType = "QUEUE",
///         DestinationName = "tf-example",
///         InstanceId = @default.Id,
///         SourceExchange = defaultExchange.ExchangeName,
///         VirtualHostName = defaultVirtualHost.VirtualHostName,
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := amqp.NewInstance(ctx, "default", &amqp.InstanceArgs{
/// 			InstanceType:  pulumi.String("enterprise"),
/// 			MaxTps:        pulumi.String("3000"),
/// 			QueueCapacity: pulumi.String("200"),
/// 			StorageSize:   pulumi.String("700"),
/// 			SupportEip:    pulumi.Bool(false),
/// 			MaxEipTps:     pulumi.String("128"),
/// 			PaymentType:   pulumi.String("Subscription"),
/// 			Period:        pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVirtualHost, err := amqp.NewVirtualHost(ctx, "default", &amqp.VirtualHostArgs{
/// 			InstanceId:      _default.ID(),
/// 			VirtualHostName: pulumi.String("tf-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultExchange, err := amqp.NewExchange(ctx, "default", &amqp.ExchangeArgs{
/// 			AutoDeleteState: pulumi.Bool(false),
/// 			ExchangeName:    pulumi.String("tf-example"),
/// 			ExchangeType:    pulumi.String("HEADERS"),
/// 			InstanceId:      _default.ID(),
/// 			Internal:        pulumi.Bool(false),
/// 			VirtualHostName: defaultVirtualHost.VirtualHostName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQueue, err := amqp.NewQueue(ctx, "default", &amqp.QueueArgs{
/// 			InstanceId:      _default.ID(),
/// 			QueueName:       pulumi.String("tf-example"),
/// 			VirtualHostName: defaultVirtualHost.VirtualHostName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amqp.NewBinding(ctx, "default", &amqp.BindingArgs{
/// 			Argument:        pulumi.String("x-match:all"),
/// 			BindingKey:      defaultQueue.QueueName,
/// 			BindingType:     pulumi.String("QUEUE"),
/// 			DestinationName: pulumi.String("tf-example"),
/// 			InstanceId:      _default.ID(),
/// 			SourceExchange:  defaultExchange.ExchangeName,
/// 			VirtualHostName: defaultVirtualHost.VirtualHostName,
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
/// import com.pulumi.alicloud.amqp.VirtualHost;
/// import com.pulumi.alicloud.amqp.VirtualHostArgs;
/// import com.pulumi.alicloud.amqp.Exchange;
/// import com.pulumi.alicloud.amqp.ExchangeArgs;
/// import com.pulumi.alicloud.amqp.Queue;
/// import com.pulumi.alicloud.amqp.QueueArgs;
/// import com.pulumi.alicloud.amqp.Binding;
/// import com.pulumi.alicloud.amqp.BindingArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceType("enterprise")
///             .maxTps("3000")
///             .queueCapacity("200")
///             .storageSize("700")
///             .supportEip(false)
///             .maxEipTps("128")
///             .paymentType("Subscription")
///             .period(1)
///             .build());
///
///         var defaultVirtualHost = new VirtualHost("defaultVirtualHost", VirtualHostArgs.builder()
///             .instanceId(default_.id())
///             .virtualHostName("tf-example")
///             .build());
///
///         var defaultExchange = new Exchange("defaultExchange", ExchangeArgs.builder()
///             .autoDeleteState(false)
///             .exchangeName("tf-example")
///             .exchangeType("HEADERS")
///             .instanceId(default_.id())
///             .internal(false)
///             .virtualHostName(defaultVirtualHost.virtualHostName())
///             .build());
///
///         var defaultQueue = new Queue("defaultQueue", QueueArgs.builder()
///             .instanceId(default_.id())
///             .queueName("tf-example")
///             .virtualHostName(defaultVirtualHost.virtualHostName())
///             .build());
///
///         var defaultBinding = new Binding("defaultBinding", BindingArgs.builder()
///             .argument("x-match:all")
///             .bindingKey(defaultQueue.queueName())
///             .bindingType("QUEUE")
///             .destinationName("tf-example")
///             .instanceId(default_.id())
///             .sourceExchange(defaultExchange.exchangeName())
///             .virtualHostName(defaultVirtualHost.virtualHostName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:amqp:Instance
///     properties:
///       instanceType: enterprise
///       maxTps: 3000
///       queueCapacity: 200
///       storageSize: 700
///       supportEip: false
///       maxEipTps: 128
///       paymentType: Subscription
///       period: 1
///   defaultVirtualHost:
///     type: alicloud:amqp:VirtualHost
///     name: default
///     properties:
///       instanceId: ${default.id}
///       virtualHostName: tf-example
///   defaultExchange:
///     type: alicloud:amqp:Exchange
///     name: default
///     properties:
///       autoDeleteState: false
///       exchangeName: tf-example
///       exchangeType: HEADERS
///       instanceId: ${default.id}
///       internal: false
///       virtualHostName: ${defaultVirtualHost.virtualHostName}
///   defaultQueue:
///     type: alicloud:amqp:Queue
///     name: default
///     properties:
///       instanceId: ${default.id}
///       queueName: tf-example
///       virtualHostName: ${defaultVirtualHost.virtualHostName}
///   defaultBinding:
///     type: alicloud:amqp:Binding
///     name: default
///     properties:
///       argument: x-match:all
///       bindingKey: ${defaultQueue.queueName}
///       bindingType: QUEUE
///       destinationName: tf-example
///       instanceId: ${default.id}
///       sourceExchange: ${defaultExchange.exchangeName}
///       virtualHostName: ${defaultVirtualHost.virtualHostName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RabbitMQ (AMQP) Binding can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:amqp/binding:Binding example <instance_id>:<virtual_host_name>:<source_exchange>:<destination_name>
/// ```
class Binding extends pulumi.CustomResource {
  /// The key-value pairs that are configured for the headers attributes of a message. Default value: `x-match:all`. Valid values:
  /// - `x-match:all`: A headers exchange routes a message to a queue only if all binding attributes of the queue except for x-match match the headers attributes of the message.
  /// - `x-match:any`: A headers exchange routes a message to a queue if one or more binding attributes of the queue except for x-match match the headers attributes of the message.
  /// - &gt; **NOTE:** If the exchange type is not 'HEADERS', the `argument` should not been set, otherwise, there are always "forces replacement" changes.
  late final pulumi.Output<String> argument;

  /// The Binding Key.
  /// * For a non-topic source exchange: The binding key can contain only letters, digits, hyphens (-), underscores (_), periods (.), and at signs (@).
  /// The binding key must be 1 to 255 characters in length.
  /// * For a topic source exchange: The binding key can contain letters, digits, hyphens (-), underscores (_), periods (.), and at signs (@).
  /// If the binding key contains a number sign (#), the binding key must start with a number sign (#) followed by a period (.) or end with a number sign (#) that follows a period (.).
  /// The binding key must be 1 to 255 characters in length.
  late final pulumi.Output<String> bindingKey;

  /// The type of the object that you want to bind to the source exchange. Valid values: `EXCHANGE`, `QUEUE`.
  late final pulumi.Output<String> bindingType;

  /// The name of the object that you want to bind to the source exchange.
  late final pulumi.Output<String> destinationName;

  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// The name of the source exchange.
  late final pulumi.Output<String> sourceExchange;

  /// The name of the vhost.
  late final pulumi.Output<String> virtualHostName;

  /// Creates a new [Binding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Binding]. {@macro pulumi_amqp_binding_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Binding(
    String name, {
    BindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:amqp/binding:Binding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    argument = registerOutput<String>('argument');
    bindingKey = registerOutput<String>('bindingKey');
    bindingType = registerOutput<String>('bindingType');
    destinationName = registerOutput<String>('destinationName');
    instanceId = registerOutput<String>('instanceId');
    sourceExchange = registerOutput<String>('sourceExchange');
    virtualHostName = registerOutput<String>('virtualHostName');
  }

  /// Gets an existing [Binding] resource's state with the given [name] and [id].
  static Binding get(
    String name,
    pulumi.Input<String> id, {
    BindingState? state,
  }) {
    return Binding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Binding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:amqp/binding:Binding',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    argument = registerOutput<String>('argument');
    bindingKey = registerOutput<String>('bindingKey');
    bindingType = registerOutput<String>('bindingType');
    destinationName = registerOutput<String>('destinationName');
    instanceId = registerOutput<String>('instanceId');
    sourceExchange = registerOutput<String>('sourceExchange');
    virtualHostName = registerOutput<String>('virtualHostName');
  }
}
