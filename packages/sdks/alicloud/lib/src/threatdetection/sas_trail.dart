import 'package:pulumi/pulumi.dart' as pulumi;
import 'sas_trail_service_trail.dart';
import 'sas_trail_state.dart';

/// Provides a Threat Detection Sas Trail resource.
///
/// For information about Threat Detection Sas Trail and how to use it, see [What is Sas Trail](https://www.alibabacloud.com/help/zh/security-center/developer-reference/api-sas-2018-12-03-createservicetrail).
///
/// &gt; **NOTE:** Available since v1.212.0.
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
/// const _default = new alicloud.threatdetection.SasTrail("default", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.threatdetection.SasTrail("default")
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
///     var @default = new AliCloud.ThreatDetection.SasTrail("default");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
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
/// 		_, err := threatdetection.NewSasTrail(ctx, "default", nil)
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
/// import com.pulumi.alicloud.threatdetection.SasTrail;
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
///         var default_ = new SasTrail("default");
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
///     type: alicloud:threatdetection:SasTrail
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Sas Trail can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/sasTrail:SasTrail example
/// ```
class SasTrail extends pulumi.CustomResource {
  /// The service trace creation timestamp, in milliseconds.
  late final pulumi.Output<int> createTime;

  /// Service trace configuration information.
  late final pulumi.Output<SasTrailServiceTrail> serviceTrail;

  /// Creates a new [SasTrail].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  SasTrail(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/sasTrail:SasTrail',
         name,
         pulumi.Input.mapToInputs(args ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    serviceTrail = registerOutput<SasTrailServiceTrail>(
      'serviceTrail',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SasTrailServiceTrail.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [SasTrail] resource's state with the given [name] and [id].
  static SasTrail get(
    String name,
    pulumi.Input<String> id, {
    SasTrailState? state,
  }) {
    return SasTrail._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SasTrail._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/sasTrail:SasTrail',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    serviceTrail = registerOutput<SasTrailServiceTrail>(
      'serviceTrail',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SasTrailServiceTrail.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
