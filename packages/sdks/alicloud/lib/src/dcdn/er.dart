import 'package:pulumi/pulumi.dart' as pulumi;
import 'er_args.dart';
import 'er_env_conf.dart';
import 'er_state.dart';

/// Provides a DCDN Er resource.
///
/// For information about DCDN Er and how to use it, see [What is Er](https://www.alibabacloud.com/help/en/dcdn/developer-reference/api-dcdn-2018-01-15-createroutine).
///
/// &gt; **NOTE:** Available since v1.201.0.
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
/// const _default = new alicloud.dcdn.Er("default", {
///     erName: name,
///     description: name,
///     envConf: {
///         staging: {
///             specName: "5ms",
///             allowedHosts: ["example.com"],
///         },
///         production: {
///             specName: "5ms",
///             allowedHosts: ["example.com"],
///         },
///     },
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
/// default = alicloud.dcdn.Er("default",
///     er_name=name,
///     description=name,
///     env_conf={
///         "staging": {
///             "spec_name": "5ms",
///             "allowed_hosts": ["example.com"],
///         },
///         "production": {
///             "spec_name": "5ms",
///             "allowed_hosts": ["example.com"],
///         },
///     })
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
///     var @default = new AliCloud.Dcdn.Er("default", new()
///     {
///         ErName = name,
///         Description = name,
///         EnvConf = new AliCloud.Dcdn.Inputs.ErEnvConfArgs
///         {
///             Staging = new AliCloud.Dcdn.Inputs.ErEnvConfStagingArgs
///             {
///                 SpecName = "5ms",
///                 AllowedHosts = new[]
///                 {
///                     "example.com",
///                 },
///             },
///             Production = new AliCloud.Dcdn.Inputs.ErEnvConfProductionArgs
///             {
///                 SpecName = "5ms",
///                 AllowedHosts = new[]
///                 {
///                     "example.com",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dcdn"
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
/// 		_, err := dcdn.NewEr(ctx, "default", &dcdn.ErArgs{
/// 			ErName:      pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			EnvConf: &dcdn.ErEnvConfArgs{
/// 				Staging: &dcdn.ErEnvConfStagingArgs{
/// 					SpecName: pulumi.String("5ms"),
/// 					AllowedHosts: pulumi.StringArray{
/// 						pulumi.String("example.com"),
/// 					},
/// 				},
/// 				Production: &dcdn.ErEnvConfProductionArgs{
/// 					SpecName: pulumi.String("5ms"),
/// 					AllowedHosts: pulumi.StringArray{
/// 						pulumi.String("example.com"),
/// 					},
/// 				},
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
/// import com.pulumi.alicloud.dcdn.Er;
/// import com.pulumi.alicloud.dcdn.ErArgs;
/// import com.pulumi.alicloud.dcdn.inputs.ErEnvConfArgs;
/// import com.pulumi.alicloud.dcdn.inputs.ErEnvConfStagingArgs;
/// import com.pulumi.alicloud.dcdn.inputs.ErEnvConfProductionArgs;
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
///         var default_ = new Er("default", ErArgs.builder()
///             .erName(name)
///             .description(name)
///             .envConf(ErEnvConfArgs.builder()
///                 .staging(ErEnvConfStagingArgs.builder()
///                     .specName("5ms")
///                     .allowedHosts("example.com")
///                     .build())
///                 .production(ErEnvConfProductionArgs.builder()
///                     .specName("5ms")
///                     .allowedHosts("example.com")
///                     .build())
///                 .build())
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
///     type: alicloud:dcdn:Er
///     properties:
///       erName: ${name}
///       description: ${name}
///       envConf:
///         staging:
///           specName: 5ms
///           allowedHosts:
///             - example.com
///         production:
///           specName: 5ms
///           allowedHosts:
///             - example.com
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DCDN Er can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dcdn/er:Er example <id>
/// ```
class Er extends pulumi.CustomResource {
  /// Routine The description of the routine.
  late final pulumi.Output<String?> description;
  /// The configurations of the specified environment. See `env_conf` below.
  late final pulumi.Output<ErEnvConf> envConf;
  /// The name of the routine. The name must be unique among the routines that belong to the same Alibaba Cloud account.
  late final pulumi.Output<String> erName;

  /// Creates a new [Er].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Er]. {@macro pulumi_dcdn_er_er_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Er(
    String name, {
    ErArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/er:Er',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    envConf = registerOutput<ErEnvConf>('envConf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ErEnvConf.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    erName = registerOutput<String>('erName');
  }

  /// Gets an existing [Er] resource's state with the given [name] and [id].
  static Er get(
    String name,
    pulumi.Input<String> id, {
    ErState? state,
  }) {
    return Er._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Er._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dcdn/er:Er',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    envConf = registerOutput<ErEnvConf>('envConf', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ErEnvConf.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    erName = registerOutput<String>('erName');
  }
}
