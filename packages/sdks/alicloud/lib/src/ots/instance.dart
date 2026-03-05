import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// This resource will help you to manager a [Table Store](https://www.alibabacloud.com/help/doc-detail/27280.htm) Instance.
/// It is foundation of creating data table.
///
/// &gt; **NOTE:** Available since v1.10.0.
///
/// ## Example Usage
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
/// const defaultInstance = new alicloud.ots.Instance("default", {
///     name: `${name}-${_default.result}`,
///     description: name,
///     accessedBy: "Vpc",
///     tags: {
///         Created: "TF",
///         For: "Building table",
///     },
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
/// default_instance = alicloud.ots.Instance("default",
///     name=f"{name}-{default['result']}",
///     description=name,
///     accessed_by="Vpc",
///     tags={
///         "Created": "TF",
///         "For": "Building table",
///     })
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
///     var defaultInstance = new AliCloud.Ots.Instance("default", new()
///     {
///         Name = $"{name}-{@default.Result}",
///         Description = name,
///         AccessedBy = "Vpc",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Building table" },
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
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
/// 		_, err = ots.NewInstance(ctx, "default", &ots.InstanceArgs{
/// 			Name:        pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description: pulumi.String(name),
/// 			AccessedBy:  pulumi.String("Vpc"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Building table"),
/// 			},
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
/// import com.pulumi.alicloud.ots.Instance;
/// import com.pulumi.alicloud.ots.InstanceArgs;
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
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(String.format("%s-%s", name,default_.result()))
///             .description(name)
///             .accessedBy("Vpc")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Building table")
///             ))
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
///   defaultInstance:
///     type: alicloud:ots:Instance
///     name: default
///     properties:
///       name: ${name}-${default.result}
///       description: ${name}
///       accessedBy: Vpc
///       tags:
///         Created: TF
///         For: Building table
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OTS instance can be imported using instance id or name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ots/instance:Instance foo "my-ots-instance"
/// ```
class Instance extends pulumi.CustomResource {
  /// The network limitation of accessing instance. Valid values:
  /// * `Any` - Allow all network to access the instance.
  /// * `Vpc` - Only can the attached VPC allow to access the instance.
  /// * `ConsoleOrVpc` - Allow web console or the attached VPC to access the instance.
  ///
  /// Default to "Any".
  late final pulumi.Output<String> accessedBy;
  /// The description of the instance. Currently, it does not support modifying.
  late final pulumi.Output<String?> description;
  /// The type of instance. Valid values are "Capacity" and "HighPerformance". Default to "HighPerformance".
  late final pulumi.Output<String?> instanceType;
  /// The name of the instance.
  late final pulumi.Output<String> name;
  /// The set of request sources that are allowed access. Valid optional values:
  /// * `TRUST_PROXY` - Trusted proxy, usually the Alibaba Cloud console.
  ///
  /// Default to ["TRUST_PROXY"].
  late final pulumi.Output<List<String>> networkSourceAcls;
  /// The set of network types that are allowed access. Valid optional values:
  /// * `CLASSIC` - Classic network.
  /// * `VPC` - VPC network.
  /// * `INTERNET` - Public internet.
  ///
  /// Default to ["VPC", "CLASSIC", "INTERNET"].
  late final pulumi.Output<List<String>> networkTypeAcls;
  /// The resource group the instance belongs to.
  /// Default to Alibaba Cloud default resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// A mapping of tags to assign to the instance.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_ots_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ots/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessedBy = registerOutput<String>('accessedBy');
    description = registerOutput<String?>('description');
    instanceType = registerOutput<String?>('instanceType');
    this.name = registerOutput<String>('name');
    networkSourceAcls = registerOutput<List<String>>('networkSourceAcls');
    networkTypeAcls = registerOutput<List<String>>('networkTypeAcls');
    resourceGroupId = registerOutput<String>('resourceGroupId');
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
          'alicloud:ots/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessedBy = registerOutput<String>('accessedBy');
    description = registerOutput<String?>('description');
    instanceType = registerOutput<String?>('instanceType');
    this.name = registerOutput<String>('name');
    networkSourceAcls = registerOutput<List<String>>('networkSourceAcls');
    networkTypeAcls = registerOutput<List<String>>('networkTypeAcls');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
