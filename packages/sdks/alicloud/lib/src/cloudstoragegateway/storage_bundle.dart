import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_bundle_args.dart';
import 'storage_bundle_state.dart';

/// Provides a Cloud Storage Gateway Storage Bundle resource.
///
/// For information about Cloud Storage Gateway Storage Bundle and how to use it, see [What is Storage Bundle](https://www.alibabacloud.com/help/en/cloud-storage-gateway/latest/createstoragebundle).
///
/// &gt; **NOTE:** Available since v1.116.0.
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
/// const example = new alicloud.cloudstoragegateway.StorageBundle("example", {storageBundleName: "example_value"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cloudstoragegateway.StorageBundle("example", storage_bundle_name="example_value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.CloudStorageGateway.StorageBundle("example", new()
///     {
///         StorageBundleName = "example_value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudstoragegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudstoragegateway.NewStorageBundle(ctx, "example", &cloudstoragegateway.StorageBundleArgs{
/// 			StorageBundleName: pulumi.String("example_value"),
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
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundle;
/// import com.pulumi.alicloud.cloudstoragegateway.StorageBundleArgs;
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
///         var example = new StorageBundle("example", StorageBundleArgs.builder()
///             .storageBundleName("example_value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cloudstoragegateway:StorageBundle
///     properties:
///       storageBundleName: example_value
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Storage Gateway Storage Bundle can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudstoragegateway/storageBundle:StorageBundle example <id>
/// ```
class StorageBundle extends pulumi.CustomResource {
  /// The description of storage bundle.
  late final pulumi.Output<String?> description;
  /// The name of storage bundle.
  late final pulumi.Output<String> storageBundleName;

  /// Creates a new [StorageBundle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageBundle]. {@macro pulumi_cloudstoragegateway_storage_bundle_storage_bundle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageBundle(
    String name, {
    StorageBundleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudstoragegateway/storageBundle:StorageBundle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    storageBundleName = registerOutput<String>('storageBundleName');
  }

  /// Gets an existing [StorageBundle] resource's state with the given [name] and [id].
  static StorageBundle get(
    String name,
    pulumi.Input<String> id, {
    StorageBundleState? state,
  }) {
    return StorageBundle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StorageBundle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudstoragegateway/storageBundle:StorageBundle',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    storageBundleName = registerOutput<String>('storageBundleName');
  }
}
