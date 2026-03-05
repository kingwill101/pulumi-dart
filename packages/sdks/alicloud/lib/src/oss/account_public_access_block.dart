import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_public_access_block_args.dart';
import 'account_public_access_block_state.dart';

/// Provides a OSS Account Public Access Block resource. Blocking public access at the account level.
///
/// For information about OSS Account Public Access Block and how to use it, see [What is Account Public Access Block](https://www.alibabacloud.com/help/en/oss/developer-reference/putpublicaccessblock).
///
/// &gt; **NOTE:** Available since v1.224.0.
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
/// const _default = new alicloud.oss.AccountPublicAccessBlock("default", {blockPublicAccess: true});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.oss.AccountPublicAccessBlock("default", block_public_access=True)
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
///     var @default = new AliCloud.Oss.AccountPublicAccessBlock("default", new()
///     {
///         BlockPublicAccess = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
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
/// 		_, err := oss.NewAccountPublicAccessBlock(ctx, "default", &oss.AccountPublicAccessBlockArgs{
/// 			BlockPublicAccess: pulumi.Bool(true),
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
/// import com.pulumi.alicloud.oss.AccountPublicAccessBlock;
/// import com.pulumi.alicloud.oss.AccountPublicAccessBlockArgs;
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
///         var default_ = new AccountPublicAccessBlock("default", AccountPublicAccessBlockArgs.builder()
///             .blockPublicAccess(true)
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
///     type: alicloud:oss:AccountPublicAccessBlock
///     properties:
///       blockPublicAccess: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Account Public Access Block can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/accountPublicAccessBlock:AccountPublicAccessBlock example
/// ```
class AccountPublicAccessBlock extends pulumi.CustomResource {
  /// Whether or not AlibabaCloud OSS should block public bucket policies for buckets in this account is enabled.
  late final pulumi.Output<bool> blockPublicAccess;

  /// Creates a new [AccountPublicAccessBlock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountPublicAccessBlock]. {@macro pulumi_oss_account_public_access_block_account_public_access_block_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountPublicAccessBlock(
    String name, {
    AccountPublicAccessBlockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/accountPublicAccessBlock:AccountPublicAccessBlock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blockPublicAccess = registerOutput<bool>('blockPublicAccess');
  }

  /// Gets an existing [AccountPublicAccessBlock] resource's state with the given [name] and [id].
  static AccountPublicAccessBlock get(
    String name,
    pulumi.Input<String> id, {
    AccountPublicAccessBlockState? state,
  }) {
    return AccountPublicAccessBlock._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountPublicAccessBlock._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/accountPublicAccessBlock:AccountPublicAccessBlock',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    blockPublicAccess = registerOutput<bool>('blockPublicAccess');
  }
}
