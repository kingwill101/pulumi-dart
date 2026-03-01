import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';
import 'alias_routing_config.dart';
import 'alias_state.dart';

/// Creates a Function Compute service alias. Creates an alias that points to the specified Function Compute service version.
/// For the detailed information, please refer to the [developer guide](https://www.alibabacloud.com/help/en/fc/developer-reference/api-createalias).
///
/// > **NOTE:** Available since v1.104.0.
///
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
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultService = new alicloud.fc.Service("default", {
///     name: `example-value-${_default.result}`,
///     description: "example-value",
///     publish: true,
/// });
/// const example = new alicloud.fc.Alias("example", {
///     aliasName: "example-value",
///     description: "example-value",
///     serviceName: defaultService.name,
///     serviceVersion: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_service = alicloud.fc.Service("default",
///     name=f"example-value-{default['result']}",
///     description="example-value",
///     publish=True)
/// example = alicloud.fc.Alias("example",
///     alias_name="example-value",
///     description="example-value",
///     service_name=default_service.name,
///     service_version="1")
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultService = new AliCloud.FC.Service("default", new()
///     {
///         Name = $"example-value-{@default.Result}",
///         Description = "example-value",
///         Publish = true,
///     });
///
///     var example = new AliCloud.FC.Alias("example", new()
///     {
///         AliasName = "example-value",
///         Description = "example-value",
///         ServiceName = defaultService.Name,
///         ServiceVersion = "1",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultService, err := fc.NewService(ctx, "default", &fc.ServiceArgs{
/// 			Name:        pulumi.Sprintf("example-value-%v", _default.Result),
/// 			Description: pulumi.String("example-value"),
/// 			Publish:     pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewAlias(ctx, "example", &fc.AliasArgs{
/// 			AliasName:      pulumi.String("example-value"),
/// 			Description:    pulumi.String("example-value"),
/// 			ServiceName:    defaultService.Name,
/// 			ServiceVersion: pulumi.String("1"),
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
/// import com.pulumi.alicloud.fc.Service;
/// import com.pulumi.alicloud.fc.ServiceArgs;
/// import com.pulumi.alicloud.fc.Alias;
/// import com.pulumi.alicloud.fc.AliasArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultService = new Service("defaultService", ServiceArgs.builder()
///             .name(String.format("example-value-%s", default_.result()))
///             .description("example-value")
///             .publish(true)
///             .build());
///
///         var example = new Alias("example", AliasArgs.builder()
///             .aliasName("example-value")
///             .description("example-value")
///             .serviceName(defaultService.name())
///             .serviceVersion("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   defaultService:
///     type: alicloud:fc:Service
///     name: default
///     properties:
///       name: example-value-${default.result}
///       description: example-value
///       publish: 'true'
///   example:
///     type: alicloud:fc:Alias
///     properties:
///       aliasName: example-value
///       description: example-value
///       serviceName: ${defaultService.name}
///       serviceVersion: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Function Compute alias can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/alias:Alias example my_alias_id
/// ```
class Alias extends pulumi.CustomResource {
  /// Name for the alias you are creating.
  late final pulumi.Output<String> aliasName;
  /// Description of the alias.
  late final pulumi.Output<String?> description;
  /// The Function Compute alias' route configuration settings. See `routing_config` below.
  late final pulumi.Output<AliasRoutingConfig?> routingConfig;
  /// The Function Compute service name.
  late final pulumi.Output<String> serviceName;
  /// The Function Compute service version for which you are creating the alias. Pattern: (LATEST|[0-9]+).
  late final pulumi.Output<String> serviceVersion;

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_fc_alias_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(
    String name, {
    AliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/alias:Alias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliasName = registerOutput<String>('aliasName');
    this.description = registerOutput<String?>('description');
    this.routingConfig = registerOutput<AliasRoutingConfig?>('routingConfig');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceVersion = registerOutput<String>('serviceVersion');
  }

  /// Gets an existing [Alias] resource's state with the given [name] and [id].
  static Alias get(
    String name,
    pulumi.Input<String> id, {
    AliasState? state,
  }) {
    return Alias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Alias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/alias:Alias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliasName = registerOutput<String>('aliasName');
    this.description = registerOutput<String?>('description');
    this.routingConfig = registerOutput<AliasRoutingConfig?>('routingConfig');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceVersion = registerOutput<String>('serviceVersion');
  }
}
