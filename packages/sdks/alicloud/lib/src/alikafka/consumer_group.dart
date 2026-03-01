import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_group_args.dart';
import 'consumer_group_state.dart';

/// Provides a Ali Kafka Consumer Group resource.
///
/// Group in kafka.
///
/// For information about Ali Kafka Consumer Group and how to use it, see [What is Consumer Group](https://next.api.alibabacloud.com/document/alikafka/2019-09-16/CreateConsumerGroup).
///
/// > **NOTE:** Available since v1.56.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.actiontrail.getInstances({});
/// const defaultConsumerGroup = new alicloud.alikafka.ConsumerGroup("default", {
///     instanceId: _default.then(_default => _default.instances?.[0]?.id),
///     consumerId: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.actiontrail.get_instances()
/// default_consumer_group = alicloud.alikafka.ConsumerGroup("default",
///     instance_id=default.instances[0].id,
///     consumer_id=name)
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
///     var @default = AliCloud.ActionTrail.GetInstances.Invoke();
///
///     var defaultConsumerGroup = new AliCloud.Alikafka.ConsumerGroup("default", new()
///     {
///         InstanceId = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id)),
///         ConsumerId = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alikafka"
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
/// 		_default, err := actiontrail.GetInstances(ctx, &actiontrail.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alikafka.NewConsumerGroup(ctx, "default", &alikafka.ConsumerGroupArgs{
/// 			InstanceId: pulumi.String(_default.Instances[0].Id),
/// 			ConsumerId: pulumi.String(name),
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
/// import com.pulumi.alicloud.actiontrail.ActiontrailFunctions;
/// import com.pulumi.alicloud.actiontrail.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.alikafka.ConsumerGroup;
/// import com.pulumi.alicloud.alikafka.ConsumerGroupArgs;
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
///         final var default = ActiontrailFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var defaultConsumerGroup = new ConsumerGroup("defaultConsumerGroup", ConsumerGroupArgs.builder()
///             .instanceId(default_.instances()[0].id())
///             .consumerId(name)
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
///   defaultConsumerGroup:
///     type: alicloud:alikafka:ConsumerGroup
///     name: default
///     properties:
///       instanceId: ${default.instances[0].id}
///       consumerId: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:actiontrail:getInstances
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AliKafka Consumer Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alikafka/consumerGroup:ConsumerGroup example <instance_id>:<consumer_id>
/// ```
class ConsumerGroup extends pulumi.CustomResource {
  /// ID of the consumer group.
  late final pulumi.Output<String> consumerId;
  /// (Available since v1.268.0) The timestamp of when the group was created.
  late final pulumi.Output<int> createTime;
  /// Field `description` has been deprecated from provider version 1.268.0. New field `remark` instead.
  late final pulumi.Output<String> description;
  /// ID of the ALIKAFKA Instance that owns the groups.
  late final pulumi.Output<String> instanceId;
  /// (Available since v1.268.0) The region ID.
  late final pulumi.Output<String> regionId;
  /// The remark of the resource.
  late final pulumi.Output<String> remark;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ConsumerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsumerGroup]. {@macro pulumi_alikafka_consumer_group_consumer_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsumerGroup(
    String name, {
    ConsumerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alikafka/consumerGroup:ConsumerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.consumerId = registerOutput<String>('consumerId');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.regionId = registerOutput<String>('regionId');
    this.remark = registerOutput<String>('remark');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ConsumerGroup] resource's state with the given [name] and [id].
  static ConsumerGroup get(
    String name,
    pulumi.Input<String> id, {
    ConsumerGroupState? state,
  }) {
    return ConsumerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConsumerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alikafka/consumerGroup:ConsumerGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.consumerId = registerOutput<String>('consumerId');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.regionId = registerOutput<String>('regionId');
    this.remark = registerOutput<String>('remark');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
