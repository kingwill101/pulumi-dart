import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';

/// Provides a Ga Domain resource.
///
/// For information about Ga Domain and how to use it, see [What is Domain](https://www.alibabacloud.com/help/en/global-accelerator/latest/api-ga-2019-11-20-createdomain).
///
/// > **NOTE:** Available since v1.197.0.
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
/// const _default = new alicloud.ga.Accelerator("default", {
///     duration: 1,
///     autoUseCoupon: true,
///     spec: "1",
/// });
/// const defaultDomain = new alicloud.ga.Domain("default", {
///     domain: "changes.com.cn",
///     acceleratorId: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ga.Accelerator("default",
///     duration=1,
///     auto_use_coupon=True,
///     spec="1")
/// default_domain = alicloud.ga.Domain("default",
///     domain="changes.com.cn",
///     accelerator_id=default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ga.Accelerator("default", new()
///     {
///         Duration = 1,
///         AutoUseCoupon = true,
///         Spec = "1",
///     });
///
///     var defaultDomain = new AliCloud.Ga.Domain("default", new()
///     {
///         AcceleratedDomain = "changes.com.cn",
///         AcceleratorId = @default.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ga"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ga.NewAccelerator(ctx, "default", &ga.AcceleratorArgs{
/// 			Duration:      pulumi.Int(1),
/// 			AutoUseCoupon: pulumi.Bool(true),
/// 			Spec:          pulumi.String("1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ga.NewDomain(ctx, "default", &ga.DomainArgs{
/// 			Domain:        pulumi.String("changes.com.cn"),
/// 			AcceleratorId: _default.ID(),
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
/// import com.pulumi.alicloud.ga.Accelerator;
/// import com.pulumi.alicloud.ga.AcceleratorArgs;
/// import com.pulumi.alicloud.ga.Domain;
/// import com.pulumi.alicloud.ga.DomainArgs;
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
///         var default_ = new Accelerator("default", AcceleratorArgs.builder()
///             .duration(1)
///             .autoUseCoupon(true)
///             .spec("1")
///             .build());
///
///         var defaultDomain = new Domain("defaultDomain", DomainArgs.builder()
///             .domain("changes.com.cn")
///             .acceleratorId(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ga:Accelerator
///     properties:
///       duration: 1
///       autoUseCoupon: true
///       spec: '1'
///   defaultDomain:
///     type: alicloud:ga:Domain
///     name: default
///     properties:
///       domain: changes.com.cn
///       acceleratorId: ${default.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ga Domain can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ga/domain:Domain example <accelerator_id>:<domain>
/// ```
class Domain extends pulumi.CustomResource {
  /// The ID of the global acceleration instance.
  late final pulumi.Output<String> acceleratorId;
  /// The accelerated domain name to be added. only top-level domain names are supported, such as 'example.com'.
  late final pulumi.Output<String> domain;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_ga_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ga/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorId = registerOutput<String>('acceleratorId');
    this.domain = registerOutput<String>('domain');
    this.status = registerOutput<String>('status');
  }
}
