import 'package:pulumi/pulumi.dart' as pulumi;
import 'msc_sub_contract_args.dart';

/// Provides a Msc Sub Contact resource.
///
/// > **NOTE:** Available since v1.132.0.
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
/// const name = config.get("name") || "tfexample";
/// const _default = new alicloud.MscSubContract("default", {
///     contactName: name,
///     position: "CEO",
///     email: "123@163.com",
///     mobile: "15388888888",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.MscSubContract("default",
///     contact_name=name,
///     position="CEO",
///     email="123@163.com",
///     mobile="15388888888")
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
///     var name = config.Get("name") ?? "tfexample";
///     var @default = new AliCloud.MscSubContract("default", new()
///     {
///         ContactName = name,
///         Position = "CEO",
///         Email = "123@163.com",
///         Mobile = "15388888888",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := alicloud.NewMscSubContract(ctx, "default", &alicloud.MscSubContractArgs{
/// 			ContactName: pulumi.String(name),
/// 			Position:    pulumi.String("CEO"),
/// 			Email:       pulumi.String("123@163.com"),
/// 			Mobile:      pulumi.String("15388888888"),
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
/// import com.pulumi.alicloud.MscSubContract;
/// import com.pulumi.alicloud.MscSubContractArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         var default_ = new MscSubContract("default", MscSubContractArgs.builder()
///             .contactName(name)
///             .position("CEO")
///             .email("123@163.com")
///             .mobile("15388888888")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   default:
///     type: alicloud:MscSubContract
///     properties:
///       contactName: ${name}
///       position: CEO
///       email: 123@163.com
///       mobile: '15388888888'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Msc Sub Contact can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:index/mscSubContract:MscSubContract example <id>
/// ```
class MscSubContract extends pulumi.CustomResource {
  /// The User's Contact Name. **Note:** The name must be 2 to 12 characters in length.
  late final pulumi.Output<String> contactName;
  /// The User's Contact Email Address.
  late final pulumi.Output<String> email;
  /// The User's Telephone.
  late final pulumi.Output<String> mobile;
  /// The User's Position. Valid values: `CEO`, `Technical Director`, `Maintenance Director`, `Project Director`,`Finance Director` and `Other`.
  ///
  /// > **NOTE:** When the user creates a contact, the user should use `alicloud.getMscSubContactVerificationMessage` to receive the verification message and confirm it.
  late final pulumi.Output<String> position;

  /// Creates a new [MscSubContract].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MscSubContract]. {@macro pulumi_index_msc_sub_contract_msc_sub_contract_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MscSubContract(
    String name, {
    MscSubContractArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/mscSubContract:MscSubContract',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contactName = registerOutput<String>('contactName');
    this.email = registerOutput<String>('email');
    this.mobile = registerOutput<String>('mobile');
    this.position = registerOutput<String>('position');
  }
}
