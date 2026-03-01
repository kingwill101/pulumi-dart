import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';

/// Create an alias for the master key (CMK).
///
/// > **NOTE:** Available since v1.77.0+.
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
/// const _this = new alicloud.kms.Key("this", {pendingWindowInDays: 7});
/// const thisAlias = new alicloud.kms.Alias("this", {
///     aliasName: "alias/example_kms_alias",
///     keyId: _this.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.kms.Key("this", pending_window_in_days=7)
/// this_alias = alicloud.kms.Alias("this",
///     alias_name="alias/example_kms_alias",
///     key_id=this.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = new AliCloud.Kms.Key("this", new()
///     {
///         PendingWindowInDays = 7,
///     });
///
///     var thisAlias = new AliCloud.Kms.Alias("this", new()
///     {
///         AliasName = "alias/example_kms_alias",
///         KeyId = @this.Id,
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		this, err := kms.NewKey(ctx, "this", &kms.KeyArgs{
/// 			PendingWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewAlias(ctx, "this", &kms.AliasArgs{
/// 			AliasName: pulumi.String("alias/example_kms_alias"),
/// 			KeyId:     this.ID(),
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
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.kms.Alias;
/// import com.pulumi.alicloud.kms.AliasArgs;
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
///         var this_ = new Key("this", KeyArgs.builder()
///             .pendingWindowInDays(7)
///             .build());
///
///         var thisAlias = new Alias("thisAlias", AliasArgs.builder()
///             .aliasName("alias/example_kms_alias")
///             .keyId(this_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   this:
///     type: alicloud:kms:Key
///     properties:
///       pendingWindowInDays: 7
///   thisAlias:
///     type: alicloud:kms:Alias
///     name: this
///     properties:
///       aliasName: alias/example_kms_alias
///       keyId: ${this.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// KMS alias can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kms/alias:Alias example alias/test_kms_alias
/// ```
class Alias extends pulumi.CustomResource {
  /// The alias of CMK. `Encrypt`、`GenerateDataKey`、`DescribeKey` can be called using aliases. Length of characters other than prefixes: minimum length of 1 character and maximum length of 255 characters. Must contain prefix `alias/`.
  late final pulumi.Output<String> aliasName;
  /// The id of the key.
  ///
  /// > **NOTE:** Each alias represents only one master key(CMK).
  ///
  /// > **NOTE:** Within an area of the same user, alias is not reproducible.
  ///
  /// > **NOTE:** UpdateAlias can be used to update the mapping relationship between alias and master key(CMK).
  late final pulumi.Output<String> keyId;

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_kms_alias_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(
    String name, {
    AliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:kms/alias:Alias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliasName = registerOutput<String>('aliasName');
    this.keyId = registerOutput<String>('keyId');
  }
}
