import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_group_args.dart';
import 'security_group_state.dart';

/// Provides a ENS Security Group resource.
///
/// For information about ENS Security Group and how to use it, see [What is Security Group](https://www.alibabacloud.com/help/en/ens/developer-reference/api-createsnapshot).
///
/// &gt; **NOTE:** Available since v1.213.0.
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
/// const _default = new alicloud.ens.SecurityGroup("default", {
///     description: name,
///     securityGroupName: name,
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
/// default = alicloud.ens.SecurityGroup("default",
///     description=name,
///     security_group_name=name)
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
///     var @default = new AliCloud.Ens.SecurityGroup("default", new()
///     {
///         Description = name,
///         SecurityGroupName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		_, err := ens.NewSecurityGroup(ctx, "default", &ens.SecurityGroupArgs{
/// 			Description:       pulumi.String(name),
/// 			SecurityGroupName: pulumi.String(name),
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
/// import com.pulumi.alicloud.ens.SecurityGroup;
/// import com.pulumi.alicloud.ens.SecurityGroupArgs;
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
///         var default_ = new SecurityGroup("default", SecurityGroupArgs.builder()
///             .description(name)
///             .securityGroupName(name)
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
///     type: alicloud:ens:SecurityGroup
///     properties:
///       description: ${name}
///       securityGroupName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Security Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/securityGroup:SecurityGroup example <id>
/// ```
class SecurityGroup extends pulumi.CustomResource {
  /// Security group description informationIt must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;

  /// Security group nameThe security group name. The length is 2~128 English or Chinese characters. It must start with an uppercase or lowcase letter or a Chinese character and cannot start with `http://` or `https`. Can contain digits, colons (:), underscores (_), or hyphens (-).
  late final pulumi.Output<String?> securityGroupName;

  /// Creates a new [SecurityGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityGroup]. {@macro pulumi_ens_security_group_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityGroup(
    String name, {
    SecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ens/securityGroup:SecurityGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    securityGroupName = registerOutput<String?>('securityGroupName');
  }

  /// Gets an existing [SecurityGroup] resource's state with the given [name] and [id].
  static SecurityGroup get(
    String name,
    pulumi.Input<String> id, {
    SecurityGroupState? state,
  }) {
    return SecurityGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ens/securityGroup:SecurityGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    securityGroupName = registerOutput<String?>('securityGroupName');
  }
}
