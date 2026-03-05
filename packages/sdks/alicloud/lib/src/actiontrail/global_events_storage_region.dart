import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_events_storage_region_args.dart';
import 'global_events_storage_region_state.dart';

/// Provides a Global events storage region resource.
///
/// For information about global events storage region and how to use it, see [What is Global Events Storage Region](https://next.api.alibabacloud.com/api/Actiontrail/2020-07-06/UpdateGlobalEventsStorageRegion).
///
/// &gt; **NOTE:** Available since v1.201.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = new alicloud.actiontrail.GlobalEventsStorageRegion("foo", {storageRegion: "cn-hangzhou"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.actiontrail.GlobalEventsStorageRegion("foo", storage_region="cn-hangzhou")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new AliCloud.ActionTrail.GlobalEventsStorageRegion("foo", new()
///     {
///         StorageRegion = "cn-hangzhou",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := actiontrail.NewGlobalEventsStorageRegion(ctx, "foo", &actiontrail.GlobalEventsStorageRegionArgs{
/// 			StorageRegion: pulumi.String("cn-hangzhou"),
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
/// import com.pulumi.alicloud.actiontrail.GlobalEventsStorageRegion;
/// import com.pulumi.alicloud.actiontrail.GlobalEventsStorageRegionArgs;
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
///         var foo = new GlobalEventsStorageRegion("foo", GlobalEventsStorageRegionArgs.builder()
///             .storageRegion("cn-hangzhou")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: alicloud:actiontrail:GlobalEventsStorageRegion
///     properties:
///       storageRegion: cn-hangzhou
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Global events storage region not can be imported.
class GlobalEventsStorageRegion extends pulumi.CustomResource {
  /// Global Events Storage Region.
  late final pulumi.Output<String> storageRegion;

  /// Creates a new [GlobalEventsStorageRegion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalEventsStorageRegion]. {@macro pulumi_actiontrail_global_events_storage_region_global_events_storage_region_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalEventsStorageRegion(
    String name, {
    GlobalEventsStorageRegionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:actiontrail/globalEventsStorageRegion:GlobalEventsStorageRegion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    storageRegion = registerOutput<String>('storageRegion');
  }

  /// Gets an existing [GlobalEventsStorageRegion] resource's state with the given [name] and [id].
  static GlobalEventsStorageRegion get(
    String name,
    pulumi.Input<String> id, {
    GlobalEventsStorageRegionState? state,
  }) {
    return GlobalEventsStorageRegion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalEventsStorageRegion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:actiontrail/globalEventsStorageRegion:GlobalEventsStorageRegion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    storageRegion = registerOutput<String>('storageRegion');
  }
}
