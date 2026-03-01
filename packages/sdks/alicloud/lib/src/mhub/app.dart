import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_args.dart';
import 'app_state.dart';

/// Provides a MHUB App resource.
///
/// For information about MHUB App and how to use it, see [What is App](https://help.aliyun.com/product/65109.html).
///
/// > **NOTE:** Available since v1.138.0+.
///
/// > **NOTE:** At present, the resource only supports cn-shanghai region.
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
/// const name = config.get("name") || "example_value";
/// const _default = new alicloud.mhub.Product("default", {productName: name});
/// const defaultApp = new alicloud.mhub.App("default", {
///     appName: name,
///     productId: _default.id,
///     packageName: "com.example.android",
///     type: "Android",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_value"
/// default = alicloud.mhub.Product("default", product_name=name)
/// default_app = alicloud.mhub.App("default",
///     app_name=name,
///     product_id=default.id,
///     package_name="com.example.android",
///     type="Android")
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
///     var name = config.Get("name") ?? "example_value";
///     var @default = new AliCloud.Mhub.Product("default", new()
///     {
///         ProductName = name,
///     });
///
///     var defaultApp = new AliCloud.Mhub.App("default", new()
///     {
///         AppName = name,
///         ProductId = @default.Id,
///         PackageName = "com.example.android",
///         Type = "Android",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "example_value"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := mhub.NewProduct(ctx, "default", &mhub.ProductArgs{
/// 			ProductName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mhub.NewApp(ctx, "default", &mhub.AppArgs{
/// 			AppName:     pulumi.String(name),
/// 			ProductId:   _default.ID(),
/// 			PackageName: pulumi.String("com.example.android"),
/// 			Type:        pulumi.String("Android"),
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
/// import com.pulumi.alicloud.mhub.Product;
/// import com.pulumi.alicloud.mhub.ProductArgs;
/// import com.pulumi.alicloud.mhub.App;
/// import com.pulumi.alicloud.mhub.AppArgs;
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
///         final var name = config.get("name").orElse("example_value");
///         var default_ = new Product("default", ProductArgs.builder()
///             .productName(name)
///             .build());
///
///         var defaultApp = new App("defaultApp", AppArgs.builder()
///             .appName(name)
///             .productId(default_.id())
///             .packageName("com.example.android")
///             .type("Android")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: example_value
/// resources:
///   default:
///     type: alicloud:mhub:Product
///     properties:
///       productName: ${name}
///   defaultApp:
///     type: alicloud:mhub:App
///     name: default
///     properties:
///       appName: ${name}
///       productId: ${default.id}
///       packageName: com.example.android
///       type: Android
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// MHUB App can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mhub/app:App example <product_id>:<app_key>
/// ```
class App extends pulumi.CustomResource {
  /// AppName.
  late final pulumi.Output<String> appName;
  /// The app id of iOS. **NOTE:** Either `bundle_id` or `package_name` must be set.
  late final pulumi.Output<String?> bundleId;
  /// Base64 string of picture.
  late final pulumi.Output<String?> encodedIcon;
  /// The Industry ID of the app. For information about Industry and how to use it, MHUB[Industry](https://help.aliyun.com/document_detail/201638.html).
  late final pulumi.Output<String> industryId;
  /// Android App package name. **NOTE:** Either `bundle_id` or `package_name` must be set.
  late final pulumi.Output<String?> packageName;
  /// The ID of the Product.
  late final pulumi.Output<String> productId;
  /// The type of the Product. Valid values: `Android` and `iOS`.
  late final pulumi.Output<String> type;

  /// Creates a new [App].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [App]. {@macro pulumi_mhub_app_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  App(
    String name, {
    AppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mhub/app:App',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appName = registerOutput<String>('appName');
    this.bundleId = registerOutput<String?>('bundleId');
    this.encodedIcon = registerOutput<String?>('encodedIcon');
    this.industryId = registerOutput<String>('industryId');
    this.packageName = registerOutput<String?>('packageName');
    this.productId = registerOutput<String>('productId');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [App] resource's state with the given [name] and [id].
  static App get(
    String name,
    pulumi.Input<String> id, {
    AppState? state,
  }) {
    return App._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  App._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mhub/app:App',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appName = registerOutput<String>('appName');
    this.bundleId = registerOutput<String?>('bundleId');
    this.encodedIcon = registerOutput<String?>('encodedIcon');
    this.industryId = registerOutput<String>('industryId');
    this.packageName = registerOutput<String?>('packageName');
    this.productId = registerOutput<String>('productId');
    this.type = registerOutput<String>('type');
  }
}
