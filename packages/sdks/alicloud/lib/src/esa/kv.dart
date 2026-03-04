import 'package:pulumi/pulumi.dart' as pulumi;
import 'kv_args.dart';
import 'kv_state.dart';

/// Provides a ESA Kv resource.
///
///
///
/// For information about ESA Kv and how to use it, see [What is Kv](https://next.api.alibabacloud.com/document/ESA/2024-09-10/PutKv).
///
/// &gt; **NOTE:** Available since v1.251.0.
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
/// const _default = new alicloud.esa.KvNamespace("default", {
///     description: "this is a example namespace.",
///     kvNamespace: "namespace1",
/// });
/// const defaultKv = new alicloud.esa.Kv("default", {
///     isbase: false,
///     expirationTtl: 360,
///     value: "example_value",
///     expiration: 1690,
///     namespace: _default.id,
///     key: "example_key",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.KvNamespace("default",
///     description="this is a example namespace.",
///     kv_namespace="namespace1")
/// default_kv = alicloud.esa.Kv("default",
///     isbase=False,
///     expiration_ttl=360,
///     value="example_value",
///     expiration=1690,
///     namespace=default.id,
///     key="example_key")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Esa.KvNamespace("default", new()
///     {
///         Description = "this is a example namespace.",
///         NamespaceValue = "namespace1",
///     });
///
///     var defaultKv = new AliCloud.Esa.Kv("default", new()
///     {
///         Isbase = false,
///         ExpirationTtl = 360,
///         Value = "example_value",
///         Expiration = 1690,
///         Namespace = @default.Id,
///         Key = "example_key",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := esa.NewKvNamespace(ctx, "default", &esa.KvNamespaceArgs{
/// 			Description: pulumi.String("this is a example namespace."),
/// 			KvNamespace: pulumi.String("namespace1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewKv(ctx, "default", &esa.KvArgs{
/// 			Isbase:        pulumi.Bool(false),
/// 			ExpirationTtl: pulumi.Int(360),
/// 			Value:         pulumi.String("example_value"),
/// 			Expiration:    pulumi.Int(1690),
/// 			Namespace:     _default.ID(),
/// 			Key:           pulumi.String("example_key"),
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
/// import com.pulumi.alicloud.esa.KvNamespace;
/// import com.pulumi.alicloud.esa.KvNamespaceArgs;
/// import com.pulumi.alicloud.esa.Kv;
/// import com.pulumi.alicloud.esa.KvArgs;
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
///         var default_ = new KvNamespace("default", KvNamespaceArgs.builder()
///             .description("this is a example namespace.")
///             .kvNamespace("namespace1")
///             .build());
///
///         var defaultKv = new Kv("defaultKv", KvArgs.builder()
///             .isbase(false)
///             .expirationTtl(360)
///             .value("example_value")
///             .expiration(1690)
///             .namespace(default_.id())
///             .key("example_key")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:esa:KvNamespace
///     properties:
///       description: this is a example namespace.
///       kvNamespace: namespace1
///   defaultKv:
///     type: alicloud:esa:Kv
///     name: default
///     properties:
///       isbase: 'false'
///       expirationTtl: '360'
///       value: example_value
///       expiration: '1690'
///       namespace: ${default.id}
///       key: example_key
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Kv can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/kv:Kv example <namespace>:<key>
/// ```
class Kv extends pulumi.CustomResource {
  /// The content of the key, which can be up to 2 MB (2 × 1000 × 1000). If the content is larger than 2 MB, call [PutKvWithHighCapacity](https://www.alibabacloud.com/help/en/doc-detail/2850486.html).
  late final pulumi.Output<int?> expiration;

  /// The time when the key-value pair expires, which cannot be earlier than the current time. The value is a timestamp in seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  late final pulumi.Output<int?> expirationTtl;

  /// The relative expiration time. Unit: seconds. If you specify both Expiration and ExpirationTtl, only ExpirationTtl takes effect.
  late final pulumi.Output<bool?> isbase;

  /// kv
  late final pulumi.Output<String> key;

  /// The name specified when calling [CreatevNamespace](https://help.aliyun.com/document_detail/2850317.html).
  late final pulumi.Output<String> namespace;

  /// The key name. The name can be up to 512 characters in length and cannot contain spaces or backslashes (\\).
  late final pulumi.Output<String?> url;

  /// The content of the key. If the content has more than 256 characters in length, the system displays the first 100 and the last 100 characters, and omits the middle part.
  late final pulumi.Output<String> value;

  /// Creates a new [Kv].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Kv]. {@macro pulumi_esa_kv_kv_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Kv(String name, {KvArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:esa/kv:Kv',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    expiration = registerOutput<int?>('expiration');
    expirationTtl = registerOutput<int?>('expirationTtl');
    isbase = registerOutput<bool?>('isbase');
    key = registerOutput<String>('key');
    namespace = registerOutput<String>('namespace');
    url = registerOutput<String?>('url');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [Kv] resource's state with the given [name] and [id].
  static Kv get(String name, pulumi.Input<String> id, {KvState? state}) {
    return Kv._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Kv._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/kv:Kv',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    expiration = registerOutput<int?>('expiration');
    expirationTtl = registerOutput<int?>('expirationTtl');
    isbase = registerOutput<bool?>('isbase');
    key = registerOutput<String>('key');
    namespace = registerOutput<String>('namespace');
    url = registerOutput<String?>('url');
    value = registerOutput<String>('value');
  }
}
