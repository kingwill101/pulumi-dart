import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bindings_args.dart';
import 'get_bindings_result.dart';
import 'get_exchanges_args.dart';
import 'get_exchanges_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_queues_args.dart';
import 'get_queues_result.dart';
import 'get_static_accounts_args.dart';
import 'get_static_accounts_result.dart';
import 'get_virtual_hosts_args.dart';
import 'get_virtual_hosts_result.dart';

/// This data source provides the Amqp Bindings of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.135.0+.
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
/// const examples = alicloud.amqp.getBindings({
///     instanceId: "amqp-cn-xxxxx",
///     virtualHostName: "my-vh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// examples = alicloud.amqp.get_bindings(instance_id="amqp-cn-xxxxx",
///     virtual_host_name="my-vh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examples = AliCloud.Amqp.GetBindings.Invoke(new()
///     {
///         InstanceId = "amqp-cn-xxxxx",
///         VirtualHostName = "my-vh",
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
/// 		_, err := amqp.GetBindings(ctx, &amqp.GetBindingsArgs{
/// 			InstanceId:      "amqp-cn-xxxxx",
/// 			VirtualHostName: "my-vh",
/// 		}, nil)
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
/// import com.pulumi.alicloud.amqp.AmqpFunctions;
/// import com.pulumi.alicloud.amqp.inputs.GetBindingsArgs;
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
///         final var examples = AmqpFunctions.getBindings(GetBindingsArgs.builder()
///             .instanceId("amqp-cn-xxxxx")
///             .virtualHostName("my-vh")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   examples:
///     fn::invoke:
///       function: alicloud:amqp:getBindings
///       arguments:
///         instanceId: amqp-cn-xxxxx
///         virtualHostName: my-vh
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amqp_get_bindings_get_bindings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBindingsResult> getBindings(
  GetBindingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:amqp/getBindings:getBindings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBindingsResult.fromMap(result);
}

/// This data source provides the Amqp Exchanges of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.128.0+.
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
/// const ids = alicloud.amqp.getExchanges({
///     instanceId: "amqp-abc12345",
///     virtualHostName: "my-VirtualHost",
///     ids: [
///         "my-Exchange-1",
///         "my-Exchange-2",
///     ],
/// });
/// export const amqpExchangeId1 = ids.then(ids => ids.exchanges?.[0]?.id);
/// const nameRegex = alicloud.amqp.getExchanges({
///     instanceId: "amqp-abc12345",
///     virtualHostName: "my-VirtualHost",
///     nameRegex: "^my-Exchange",
/// });
/// export const amqpExchangeId2 = nameRegex.then(nameRegex => nameRegex.exchanges?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.amqp.get_exchanges(instance_id="amqp-abc12345",
///     virtual_host_name="my-VirtualHost",
///     ids=[
///         "my-Exchange-1",
///         "my-Exchange-2",
///     ])
/// pulumi.export("amqpExchangeId1", ids.exchanges[0].id)
/// name_regex = alicloud.amqp.get_exchanges(instance_id="amqp-abc12345",
///     virtual_host_name="my-VirtualHost",
///     name_regex="^my-Exchange")
/// pulumi.export("amqpExchangeId2", name_regex.exchanges[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Amqp.GetExchanges.Invoke(new()
///     {
///         InstanceId = "amqp-abc12345",
///         VirtualHostName = "my-VirtualHost",
///         Ids = new[]
///         {
///             "my-Exchange-1",
///             "my-Exchange-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Amqp.GetExchanges.Invoke(new()
///     {
///         InstanceId = "amqp-abc12345",
///         VirtualHostName = "my-VirtualHost",
///         NameRegex = "^my-Exchange",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["amqpExchangeId1"] = ids.Apply(getExchangesResult => getExchangesResult.Exchanges[0]?.Id),
///         ["amqpExchangeId2"] = nameRegex.Apply(getExchangesResult => getExchangesResult.Exchanges[0]?.Id),
///     };
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
/// 		ids, err := amqp.GetExchanges(ctx, &amqp.GetExchangesArgs{
/// 			InstanceId:      "amqp-abc12345",
/// 			VirtualHostName: "my-VirtualHost",
/// 			Ids: []string{
/// 				"my-Exchange-1",
/// 				"my-Exchange-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("amqpExchangeId1", ids.Exchanges[0].Id)
/// 		nameRegex, err := amqp.GetExchanges(ctx, &amqp.GetExchangesArgs{
/// 			InstanceId:      "amqp-abc12345",
/// 			VirtualHostName: "my-VirtualHost",
/// 			NameRegex:       pulumi.StringRef("^my-Exchange"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("amqpExchangeId2", nameRegex.Exchanges[0].Id)
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
/// import com.pulumi.alicloud.amqp.AmqpFunctions;
/// import com.pulumi.alicloud.amqp.inputs.GetExchangesArgs;
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
///         final var ids = AmqpFunctions.getExchanges(GetExchangesArgs.builder()
///             .instanceId("amqp-abc12345")
///             .virtualHostName("my-VirtualHost")
///             .ids(
///                 "my-Exchange-1",
///                 "my-Exchange-2")
///             .build());
///
///         ctx.export("amqpExchangeId1", ids.exchanges()[0].id());
///         final var nameRegex = AmqpFunctions.getExchanges(GetExchangesArgs.builder()
///             .instanceId("amqp-abc12345")
///             .virtualHostName("my-VirtualHost")
///             .nameRegex("^my-Exchange")
///             .build());
///
///         ctx.export("amqpExchangeId2", nameRegex.exchanges()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:amqp:getExchanges
///       arguments:
///         instanceId: amqp-abc12345
///         virtualHostName: my-VirtualHost
///         ids:
///           - my-Exchange-1
///           - my-Exchange-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:amqp:getExchanges
///       arguments:
///         instanceId: amqp-abc12345
///         virtualHostName: my-VirtualHost
///         nameRegex: ^my-Exchange
/// outputs:
///   amqpExchangeId1: ${ids.exchanges[0].id}
///   amqpExchangeId2: ${nameRegex.exchanges[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amqp_get_exchanges_get_exchanges_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExchangesResult> getExchanges(
  GetExchangesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:amqp/getExchanges:getExchanges',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExchangesResult.fromMap(result);
}

/// This data source provides the Amqp Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.128.0.
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
/// const _default = new alicloud.amqp.Instance("default", {
///     instanceName: name,
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
/// const ids = alicloud.amqp.getInstancesOutput({
///     ids: [_default.id],
/// });
/// export const amqpInstanceId0 = ids.apply(ids => ids.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.amqp.Instance("default",
///     instance_name=name,
///     instance_type="enterprise",
///     max_tps="3000",
///     max_connections=2000,
///     queue_capacity="200",
///     payment_type="Subscription",
///     renewal_status="AutoRenewal",
///     renewal_duration=1,
///     renewal_duration_unit="Year",
///     support_eip=True)
/// ids = alicloud.amqp.get_instances_output(ids=[default.id])
/// pulumi.export("amqpInstanceId0", ids.instances[0].id)
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
///     var @default = new AliCloud.Amqp.Instance("default", new()
///     {
///         InstanceName = name,
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
///     var ids = AliCloud.Amqp.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["amqpInstanceId0"] = ids.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
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
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := amqp.NewInstance(ctx, "default", &amqp.InstanceArgs{
/// 			InstanceName:        pulumi.String(name),
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
/// 		ids := amqp.GetInstancesOutput(ctx, amqp.GetInstancesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("amqpInstanceId0", ids.ApplyT(func(ids amqp.GetInstancesResult) (*string, error) {
/// 			return &ids.Instances[0].Id, nil
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
/// import com.pulumi.alicloud.amqp.Instance;
/// import com.pulumi.alicloud.amqp.InstanceArgs;
/// import com.pulumi.alicloud.amqp.AmqpFunctions;
/// import com.pulumi.alicloud.amqp.inputs.GetInstancesArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceName(name)
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
///         final var ids = AmqpFunctions.getInstances(GetInstancesArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("amqpInstanceId0", ids.applyValue(_ids -> _ids.instances()[0].id()));
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
///     type: alicloud:amqp:Instance
///     properties:
///       instanceName: ${name}
///       instanceType: enterprise
///       maxTps: 3000
///       maxConnections: 2000
///       queueCapacity: 200
///       paymentType: Subscription
///       renewalStatus: AutoRenewal
///       renewalDuration: 1
///       renewalDurationUnit: Year
///       supportEip: true
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:amqp:getInstances
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   amqpInstanceId0: ${ids.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amqp_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:amqp/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Amqp Queues of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.127.0+.
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
/// const ids = alicloud.amqp.getQueues({
///     instanceId: "amqp-abc12345",
///     virtualHostName: "my-VirtualHost",
///     ids: [
///         "my-Queue-1",
///         "my-Queue-2",
///     ],
/// });
/// export const amqpQueueId1 = ids.then(ids => ids.queues?.[0]?.id);
/// const nameRegex = alicloud.amqp.getQueues({
///     instanceId: "amqp-abc12345",
///     virtualHostName: "my-VirtualHost",
///     nameRegex: "^my-Queue",
/// });
/// export const amqpQueueId2 = nameRegex.then(nameRegex => nameRegex.queues?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.amqp.get_queues(instance_id="amqp-abc12345",
///     virtual_host_name="my-VirtualHost",
///     ids=[
///         "my-Queue-1",
///         "my-Queue-2",
///     ])
/// pulumi.export("amqpQueueId1", ids.queues[0].id)
/// name_regex = alicloud.amqp.get_queues(instance_id="amqp-abc12345",
///     virtual_host_name="my-VirtualHost",
///     name_regex="^my-Queue")
/// pulumi.export("amqpQueueId2", name_regex.queues[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Amqp.GetQueues.Invoke(new()
///     {
///         InstanceId = "amqp-abc12345",
///         VirtualHostName = "my-VirtualHost",
///         Ids = new[]
///         {
///             "my-Queue-1",
///             "my-Queue-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Amqp.GetQueues.Invoke(new()
///     {
///         InstanceId = "amqp-abc12345",
///         VirtualHostName = "my-VirtualHost",
///         NameRegex = "^my-Queue",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["amqpQueueId1"] = ids.Apply(getQueuesResult => getQueuesResult.Queues[0]?.Id),
///         ["amqpQueueId2"] = nameRegex.Apply(getQueuesResult => getQueuesResult.Queues[0]?.Id),
///     };
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
/// 		ids, err := amqp.GetQueues(ctx, &amqp.GetQueuesArgs{
/// 			InstanceId:      "amqp-abc12345",
/// 			VirtualHostName: "my-VirtualHost",
/// 			Ids: []string{
/// 				"my-Queue-1",
/// 				"my-Queue-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("amqpQueueId1", ids.Queues[0].Id)
/// 		nameRegex, err := amqp.GetQueues(ctx, &amqp.GetQueuesArgs{
/// 			InstanceId:      "amqp-abc12345",
/// 			VirtualHostName: "my-VirtualHost",
/// 			NameRegex:       pulumi.StringRef("^my-Queue"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("amqpQueueId2", nameRegex.Queues[0].Id)
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
/// import com.pulumi.alicloud.amqp.AmqpFunctions;
/// import com.pulumi.alicloud.amqp.inputs.GetQueuesArgs;
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
///         final var ids = AmqpFunctions.getQueues(GetQueuesArgs.builder()
///             .instanceId("amqp-abc12345")
///             .virtualHostName("my-VirtualHost")
///             .ids(
///                 "my-Queue-1",
///                 "my-Queue-2")
///             .build());
///
///         ctx.export("amqpQueueId1", ids.queues()[0].id());
///         final var nameRegex = AmqpFunctions.getQueues(GetQueuesArgs.builder()
///             .instanceId("amqp-abc12345")
///             .virtualHostName("my-VirtualHost")
///             .nameRegex("^my-Queue")
///             .build());
///
///         ctx.export("amqpQueueId2", nameRegex.queues()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:amqp:getQueues
///       arguments:
///         instanceId: amqp-abc12345
///         virtualHostName: my-VirtualHost
///         ids:
///           - my-Queue-1
///           - my-Queue-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:amqp:getQueues
///       arguments:
///         instanceId: amqp-abc12345
///         virtualHostName: my-VirtualHost
///         nameRegex: ^my-Queue
/// outputs:
///   amqpQueueId1: ${ids.queues[0].id}
///   amqpQueueId2: ${nameRegex.queues[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amqp_get_queues_get_queues_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueuesResult> getQueues(
  GetQueuesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:amqp/getQueues:getQueues',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueuesResult.fromMap(result);
}

/// This data source provides Amqp Static Account available to the user.[What is Static Account](https://help.aliyun.com/document_detail/184399.html)
///
/// &gt; **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.amqp.getStaticAccounts({
///     instanceId: "amqp-cn-0ju2y01zs001",
/// });
/// export const alicloudAmqpStaticAccountExampleId = _default.then(_default => _default.accounts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.amqp.get_static_accounts(instance_id="amqp-cn-0ju2y01zs001")
/// pulumi.export("alicloudAmqpStaticAccountExampleId", default.accounts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Amqp.GetStaticAccounts.Invoke(new()
///     {
///         InstanceId = "amqp-cn-0ju2y01zs001",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudAmqpStaticAccountExampleId"] = @default.Apply(@default => @default.Apply(getStaticAccountsResult => getStaticAccountsResult.Accounts[0]?.Id)),
///     };
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
/// 		_default, err := amqp.GetStaticAccounts(ctx, &amqp.GetStaticAccountsArgs{
/// 			InstanceId: pulumi.StringRef("amqp-cn-0ju2y01zs001"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudAmqpStaticAccountExampleId", _default.Accounts[0].Id)
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
/// import com.pulumi.alicloud.amqp.AmqpFunctions;
/// import com.pulumi.alicloud.amqp.inputs.GetStaticAccountsArgs;
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
///         final var default = AmqpFunctions.getStaticAccounts(GetStaticAccountsArgs.builder()
///             .instanceId("amqp-cn-0ju2y01zs001")
///             .build());
///
///         ctx.export("alicloudAmqpStaticAccountExampleId", default_.accounts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:amqp:getStaticAccounts
///       arguments:
///         instanceId: amqp-cn-0ju2y01zs001
/// outputs:
///   alicloudAmqpStaticAccountExampleId: ${default.accounts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amqp_get_static_accounts_get_static_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticAccountsResult> getStaticAccounts(
  GetStaticAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:amqp/getStaticAccounts:getStaticAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticAccountsResult.fromMap(result);
}

/// This data source provides the Amqp Virtual Hosts of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.126.0+.
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
/// const ids = alicloud.amqp.getVirtualHosts({
///     instanceId: "amqp-abc12345",
///     ids: [
///         "my-VirtualHost-1",
///         "my-VirtualHost-2",
///     ],
/// });
/// export const amqpVirtualHostId1 = ids.then(ids => ids.hosts?.[0]?.id);
/// const nameRegex = alicloud.amqp.getVirtualHosts({
///     instanceId: "amqp-abc12345",
///     nameRegex: "^my-VirtualHost",
/// });
/// export const amqpVirtualHostId2 = nameRegex.then(nameRegex => nameRegex.hosts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.amqp.get_virtual_hosts(instance_id="amqp-abc12345",
///     ids=[
///         "my-VirtualHost-1",
///         "my-VirtualHost-2",
///     ])
/// pulumi.export("amqpVirtualHostId1", ids.hosts[0].id)
/// name_regex = alicloud.amqp.get_virtual_hosts(instance_id="amqp-abc12345",
///     name_regex="^my-VirtualHost")
/// pulumi.export("amqpVirtualHostId2", name_regex.hosts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Amqp.GetVirtualHosts.Invoke(new()
///     {
///         InstanceId = "amqp-abc12345",
///         Ids = new[]
///         {
///             "my-VirtualHost-1",
///             "my-VirtualHost-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Amqp.GetVirtualHosts.Invoke(new()
///     {
///         InstanceId = "amqp-abc12345",
///         NameRegex = "^my-VirtualHost",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["amqpVirtualHostId1"] = ids.Apply(getVirtualHostsResult => getVirtualHostsResult.Hosts[0]?.Id),
///         ["amqpVirtualHostId2"] = nameRegex.Apply(getVirtualHostsResult => getVirtualHostsResult.Hosts[0]?.Id),
///     };
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
/// 		ids, err := amqp.GetVirtualHosts(ctx, &amqp.GetVirtualHostsArgs{
/// 			InstanceId: "amqp-abc12345",
/// 			Ids: []string{
/// 				"my-VirtualHost-1",
/// 				"my-VirtualHost-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("amqpVirtualHostId1", ids.Hosts[0].Id)
/// 		nameRegex, err := amqp.GetVirtualHosts(ctx, &amqp.GetVirtualHostsArgs{
/// 			InstanceId: "amqp-abc12345",
/// 			NameRegex:  pulumi.StringRef("^my-VirtualHost"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("amqpVirtualHostId2", nameRegex.Hosts[0].Id)
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
/// import com.pulumi.alicloud.amqp.AmqpFunctions;
/// import com.pulumi.alicloud.amqp.inputs.GetVirtualHostsArgs;
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
///         final var ids = AmqpFunctions.getVirtualHosts(GetVirtualHostsArgs.builder()
///             .instanceId("amqp-abc12345")
///             .ids(
///                 "my-VirtualHost-1",
///                 "my-VirtualHost-2")
///             .build());
///
///         ctx.export("amqpVirtualHostId1", ids.hosts()[0].id());
///         final var nameRegex = AmqpFunctions.getVirtualHosts(GetVirtualHostsArgs.builder()
///             .instanceId("amqp-abc12345")
///             .nameRegex("^my-VirtualHost")
///             .build());
///
///         ctx.export("amqpVirtualHostId2", nameRegex.hosts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:amqp:getVirtualHosts
///       arguments:
///         instanceId: amqp-abc12345
///         ids:
///           - my-VirtualHost-1
///           - my-VirtualHost-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:amqp:getVirtualHosts
///       arguments:
///         instanceId: amqp-abc12345
///         nameRegex: ^my-VirtualHost
/// outputs:
///   amqpVirtualHostId1: ${ids.hosts[0].id}
///   amqpVirtualHostId2: ${nameRegex.hosts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_amqp_get_virtual_hosts_get_virtual_hosts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHostsResult> getVirtualHosts(
  GetVirtualHostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:amqp/getVirtualHosts:getVirtualHosts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHostsResult.fromMap(result);
}
