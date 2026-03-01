import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_access_point_args.dart';

/// Provides a KMS Application Access Point resource. An application access point (AAP) is used to implement fine-grained access control for Key Management Service (KMS) resources. An application can access a KMS instance only after an AAP is created for the application. .
///
/// For information about KMS Application Access Point and how to use it, see [What is Application Access Point](https://www.alibabacloud.com/help/zh/key-management-service/latest/api-createapplicationaccesspoint).
///
/// > **NOTE:** Available since v1.210.0.
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
/// const _default = new alicloud.kms.ApplicationAccessPoint("default", {
///     description: "example aap",
///     applicationAccessPointName: name,
///     policies: [
///         "abc",
///         "efg",
///         "hfc",
///     ],
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
/// default = alicloud.kms.ApplicationAccessPoint("default",
///     description="example aap",
///     application_access_point_name=name,
///     policies=[
///         "abc",
///         "efg",
///         "hfc",
///     ])
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
///     var @default = new AliCloud.Kms.ApplicationAccessPoint("default", new()
///     {
///         Description = "example aap",
///         ApplicationAccessPointName = name,
///         Policies = new[]
///         {
///             "abc",
///             "efg",
///             "hfc",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
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
/// 		_, err := kms.NewApplicationAccessPoint(ctx, "default", &kms.ApplicationAccessPointArgs{
/// 			Description:                pulumi.String("example aap"),
/// 			ApplicationAccessPointName: pulumi.String(name),
/// 			Policies: pulumi.StringArray{
/// 				pulumi.String("abc"),
/// 				pulumi.String("efg"),
/// 				pulumi.String("hfc"),
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
/// import com.pulumi.alicloud.kms.ApplicationAccessPoint;
/// import com.pulumi.alicloud.kms.ApplicationAccessPointArgs;
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
///         var default_ = new ApplicationAccessPoint("default", ApplicationAccessPointArgs.builder()
///             .description("example aap")
///             .applicationAccessPointName(name)
///             .policies(
///                 "abc",
///                 "efg",
///                 "hfc")
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
///   default:
///     type: alicloud:kms:ApplicationAccessPoint
///     properties:
///       description: example aap
///       applicationAccessPointName: ${name}
///       policies:
///         - abc
///         - efg
///         - hfc
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS Application Access Point can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/applicationAccessPoint:ApplicationAccessPoint example <id>
/// ```
class ApplicationAccessPoint extends pulumi.CustomResource {
  /// Application Access Point Name.
  late final pulumi.Output<String> applicationAccessPointName;
  /// Description .
  late final pulumi.Output<String?> description;
  /// The policies that have bound to the Application Access Point (AAP).
  late final pulumi.Output<List<String>> policies;

  /// Creates a new [ApplicationAccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationAccessPoint]. {@macro pulumi_kms_application_access_point_application_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationAccessPoint(
    String name, {
    ApplicationAccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/applicationAccessPoint:ApplicationAccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationAccessPointName = registerOutput<String>('applicationAccessPointName');
    this.description = registerOutput<String?>('description');
    this.policies = registerOutput<List<String>>('policies');
  }
}
