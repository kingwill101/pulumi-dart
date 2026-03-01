import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_account_args.dart';
import 'cross_account_state.dart';

/// Provides a Hybrid Backup Recovery (HBR) Cross Account resource.
///
/// The cross account is used for the cross-account backup in the Cloud Backup. The management account can back up the resources under the cross account.
///
/// For information about Hybrid Backup Recovery (HBR) Cross Account and how to use it, see [What is Cross Account](https://www.alibabacloud.com/help/en/).
///
/// > **NOTE:** Available since v1.241.0.
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
/// const _default = new alicloud.hbr.CrossAccount("default", {
///     crossAccountUserId: 1,
///     crossAccountRoleName: name,
///     alias: name,
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
/// default = alicloud.hbr.CrossAccount("default",
///     cross_account_user_id=1,
///     cross_account_role_name=name,
///     alias=name)
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
///     var @default = new AliCloud.Hbr.CrossAccount("default", new()
///     {
///         CrossAccountUserId = 1,
///         CrossAccountRoleName = name,
///         Alias = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
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
/// 		_, err := hbr.NewCrossAccount(ctx, "default", &hbr.CrossAccountArgs{
/// 			CrossAccountUserId:   pulumi.Int(1),
/// 			CrossAccountRoleName: pulumi.String(name),
/// 			Alias:                pulumi.String(name),
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
/// import com.pulumi.alicloud.hbr.CrossAccount;
/// import com.pulumi.alicloud.hbr.CrossAccountArgs;
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
///         var default_ = new CrossAccount("default", CrossAccountArgs.builder()
///             .crossAccountUserId(1)
///             .crossAccountRoleName(name)
///             .alias(name)
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
///     type: alicloud:hbr:CrossAccount
///     properties:
///       crossAccountUserId: '1'
///       crossAccountRoleName: ${name}
///       alias: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Cross Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/crossAccount:CrossAccount example <cross_account_user_id>:<cross_account_role_name>
/// ```
class CrossAccount extends pulumi.CustomResource {
  /// Backup account alias
  late final pulumi.Output<String?> alias;
  /// Timestamp of the creation time
  late final pulumi.Output<int> createTime;
  /// The name of RAM role that the backup account authorizes the management account to manage its resources
  late final pulumi.Output<String> crossAccountRoleName;
  /// The uid of the backup account.
  late final pulumi.Output<int> crossAccountUserId;

  /// Creates a new [CrossAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CrossAccount]. {@macro pulumi_hbr_cross_account_cross_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CrossAccount(
    String name, {
    CrossAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/crossAccount:CrossAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String?>('alias');
    this.createTime = registerOutput<int>('createTime');
    this.crossAccountRoleName = registerOutput<String>('crossAccountRoleName');
    this.crossAccountUserId = registerOutput<int>('crossAccountUserId');
  }

  /// Gets an existing [CrossAccount] resource's state with the given [name] and [id].
  static CrossAccount get(
    String name,
    pulumi.Input<String> id, {
    CrossAccountState? state,
  }) {
    return CrossAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CrossAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/crossAccount:CrossAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String?>('alias');
    this.createTime = registerOutput<int>('createTime');
    this.crossAccountRoleName = registerOutput<String>('crossAccountRoleName');
    this.crossAccountUserId = registerOutput<int>('crossAccountUserId');
  }
}
