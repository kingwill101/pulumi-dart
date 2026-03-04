import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides an ONS instance resource.
///
/// For more information about how to use it, see [RocketMQ Instance Management API](https://www.alibabacloud.com/help/doc-detail/106354.html).
///
/// &gt; **NOTE:** The number of instances in the same region cannot exceed 8. At present, the resource does not support region "mq-internet-access" and "ap-southeast-5".
///
/// &gt; **NOTE:** Available in 1.51.0+
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
/// const example = new alicloud.rocketmq.Instance("example", {
///     instanceName: `${name}-${_default.result}`,
///     remark: name,
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
/// example = alicloud.rocketmq.Instance("example",
///     instance_name=f"{name}-{default['result']}",
///     remark=name)
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
///     var example = new AliCloud.RocketMQ.Instance("example", new()
///     {
///         InstanceName = $"{name}-{@default.Result}",
///         Remark = name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
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
/// 		_, err = rocketmq.NewInstance(ctx, "example", &rocketmq.InstanceArgs{
/// 			InstanceName: pulumi.Sprintf("%v-%v", name, _default.Result),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.rocketmq.Instance;
/// import com.pulumi.alicloud.rocketmq.InstanceArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .instanceName(String.format("%s-%s", name,default_.result()))
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
///     default: tf-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   example:
///     type: alicloud:rocketmq:Instance
///     properties:
///       instanceName: ${name}-${default.result}
///       remark: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ONS INSTANCE can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rocketmq/instance:Instance instance MQ_INST_1234567890_Baso1234567
/// ```
class Instance extends pulumi.CustomResource {
  /// Two instances on a single account in the same region cannot have the same name. The length must be 3 to 64 characters. Chinese characters, English letters digits and hyphen are allowed.
  late final pulumi.Output<String> instanceName;

  /// The status of instance. 1 represents the platinum edition instance is in deployment. 2 represents the postpaid edition instance are overdue. 5 represents the postpaid or platinum edition instance is in service. 7 represents the platinum version instance is in upgrade and the service is available.
  late final pulumi.Output<int> instanceStatus;

  /// The edition of instance. 1 represents the postPaid edition, and 2 represents the platinum edition.
  late final pulumi.Output<int> instanceType;

  /// Replaced by `instance_name` after version 1.97.0.
  late final pulumi.Output<String> name;

  /// Platinum edition instance expiration time.
  late final pulumi.Output<String> releaseTime;

  /// This attribute is a concise description of instance. The length cannot exceed 128.
  late final pulumi.Output<String?> remark;

  /// The status of instance. 1 represents the platinum edition instance is in deployment. 2 represents the postpaid edition instance are overdue. 5 represents the postpaid or platinum edition instance is in service. 7 represents the platinum version instance is in upgrade and the service is available.
  late final pulumi.Output<int> status;

  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_rocketmq_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceName = registerOutput<String>('instanceName');
    instanceStatus = registerOutput<int>('instanceStatus');
    instanceType = registerOutput<int>('instanceType');
    this.name = registerOutput<String>('name');
    releaseTime = registerOutput<String>('releaseTime');
    remark = registerOutput<String?>('remark');
    status = registerOutput<int>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rocketmq/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceName = registerOutput<String>('instanceName');
    instanceStatus = registerOutput<int>('instanceStatus');
    instanceType = registerOutput<int>('instanceType');
    this.name = registerOutput<String>('name');
    releaseTime = registerOutput<String>('releaseTime');
    remark = registerOutput<String?>('remark');
    status = registerOutput<int>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
