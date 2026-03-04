import 'package:pulumi/pulumi.dart' as pulumi;
import 'bundle_args.dart';
import 'bundle_state.dart';

/// Provides a ECD Bundle resource.
///
/// For information about ECD Bundle and how to use it, see [What is Bundle](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-ecd-2020-09-30-createbundle).
///
/// &gt; **NOTE:** Available since v1.170.0.
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
/// const _default = alicloud.eds.getImages({
///     imageType: "SYSTEM",
///     osType: "Windows",
///     desktopInstanceType: "eds.hf.4c8g",
/// });
/// const defaultGetDesktopTypes = alicloud.eds.getDesktopTypes({
///     instanceTypeFamily: "eds.hf",
///     cpuCount: 4,
///     memorySize: 8192,
/// });
/// const defaultBundle = new alicloud.eds.Bundle("default", {
///     description: name,
///     desktopType: defaultGetDesktopTypes.then(defaultGetDesktopTypes => defaultGetDesktopTypes.ids?.[0]),
///     bundleName: name,
///     imageId: _default.then(_default => _default.ids?.[0]),
///     userDiskSizeGibs: [70],
///     rootDiskSizeGib: 80,
///     rootDiskPerformanceLevel: "PL1",
///     userDiskPerformanceLevel: "PL1",
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
/// default = alicloud.eds.get_images(image_type="SYSTEM",
///     os_type="Windows",
///     desktop_instance_type="eds.hf.4c8g")
/// default_get_desktop_types = alicloud.eds.get_desktop_types(instance_type_family="eds.hf",
///     cpu_count=4,
///     memory_size=8192)
/// default_bundle = alicloud.eds.Bundle("default",
///     description=name,
///     desktop_type=default_get_desktop_types.ids[0],
///     bundle_name=name,
///     image_id=default.ids[0],
///     user_disk_size_gibs=[70],
///     root_disk_size_gib=80,
///     root_disk_performance_level="PL1",
///     user_disk_performance_level="PL1")
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
///     var @default = AliCloud.Eds.GetImages.Invoke(new()
///     {
///         ImageType = "SYSTEM",
///         OsType = "Windows",
///         DesktopInstanceType = "eds.hf.4c8g",
///     });
///
///     var defaultGetDesktopTypes = AliCloud.Eds.GetDesktopTypes.Invoke(new()
///     {
///         InstanceTypeFamily = "eds.hf",
///         CpuCount = 4,
///         MemorySize = 8192,
///     });
///
///     var defaultBundle = new AliCloud.Eds.Bundle("default", new()
///     {
///         Description = name,
///         DesktopType = defaultGetDesktopTypes.Apply(getDesktopTypesResult => getDesktopTypesResult.Ids[0]),
///         BundleName = name,
///         ImageId = @default.Apply(@default => @default.Apply(getImagesResult => getImagesResult.Ids[0])),
///         UserDiskSizeGibs = new[]
///         {
///             70,
///         },
///         RootDiskSizeGib = 80,
///         RootDiskPerformanceLevel = "PL1",
///         UserDiskPerformanceLevel = "PL1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
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
/// 		_default, err := eds.GetImages(ctx, &eds.GetImagesArgs{
/// 			ImageType:           pulumi.StringRef("SYSTEM"),
/// 			OsType:              pulumi.StringRef("Windows"),
/// 			DesktopInstanceType: pulumi.StringRef("eds.hf.4c8g"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetDesktopTypes, err := eds.GetDesktopTypes(ctx, &eds.GetDesktopTypesArgs{
/// 			InstanceTypeFamily: pulumi.StringRef("eds.hf"),
/// 			CpuCount:           pulumi.IntRef(4),
/// 			MemorySize:         pulumi.IntRef(8192),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eds.NewBundle(ctx, "default", &eds.BundleArgs{
/// 			Description: pulumi.String(name),
/// 			DesktopType: pulumi.String(defaultGetDesktopTypes.Ids[0]),
/// 			BundleName:  pulumi.String(name),
/// 			ImageId:     pulumi.String(_default.Ids[0]),
/// 			UserDiskSizeGibs: pulumi.IntArray{
/// 				pulumi.Int(70),
/// 			},
/// 			RootDiskSizeGib:          pulumi.Int(80),
/// 			RootDiskPerformanceLevel: pulumi.String("PL1"),
/// 			UserDiskPerformanceLevel: pulumi.String("PL1"),
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.eds.inputs.GetDesktopTypesArgs;
/// import com.pulumi.alicloud.eds.Bundle;
/// import com.pulumi.alicloud.eds.BundleArgs;
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
///         final var default = EdsFunctions.getImages(GetImagesArgs.builder()
///             .imageType("SYSTEM")
///             .osType("Windows")
///             .desktopInstanceType("eds.hf.4c8g")
///             .build());
///
///         final var defaultGetDesktopTypes = EdsFunctions.getDesktopTypes(GetDesktopTypesArgs.builder()
///             .instanceTypeFamily("eds.hf")
///             .cpuCount(4)
///             .memorySize(8192)
///             .build());
///
///         var defaultBundle = new Bundle("defaultBundle", BundleArgs.builder()
///             .description(name)
///             .desktopType(defaultGetDesktopTypes.ids()[0])
///             .bundleName(name)
///             .imageId(default_.ids()[0])
///             .userDiskSizeGibs(70)
///             .rootDiskSizeGib(80)
///             .rootDiskPerformanceLevel("PL1")
///             .userDiskPerformanceLevel("PL1")
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
///   defaultBundle:
///     type: alicloud:eds:Bundle
///     name: default
///     properties:
///       description: ${name}
///       desktopType: ${defaultGetDesktopTypes.ids[0]}
///       bundleName: ${name}
///       imageId: ${default.ids[0]}
///       userDiskSizeGibs:
///         - 70
///       rootDiskSizeGib: 80
///       rootDiskPerformanceLevel: PL1
///       userDiskPerformanceLevel: PL1
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getImages
///       arguments:
///         imageType: SYSTEM
///         osType: Windows
///         desktopInstanceType: eds.hf.4c8g
///   defaultGetDesktopTypes:
///     fn::invoke:
///       function: alicloud:eds:getDesktopTypes
///       arguments:
///         instanceTypeFamily: eds.hf
///         cpuCount: 4
///         memorySize: 8192
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Bundle can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/bundle:Bundle example <id>
/// ```
class Bundle extends pulumi.CustomResource {
  /// The name of the bundle.
  late final pulumi.Output<String?> bundleName;

  /// The description of the bundle.
  late final pulumi.Output<String?> description;

  /// The desktop type. You can call `alicloud.eds.getDesktopTypes` to query desktop type.
  late final pulumi.Output<String> desktopType;

  /// The ID of the image.
  late final pulumi.Output<String> imageId;

  /// The language. Valid values: `zh-CN`, `zh-HK`, `en-US`, `ja-JP`.
  late final pulumi.Output<String?> language;

  /// The root disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  late final pulumi.Output<String> rootDiskPerformanceLevel;

  /// The root disk size gib.
  late final pulumi.Output<int> rootDiskSizeGib;

  /// The user disk performance level. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  late final pulumi.Output<String> userDiskPerformanceLevel;

  /// The size of the data disk. Currently, only one data disk can be set. Unit: GiB.
  /// - The size of the data disk that supports the setting corresponds to the specification. For more information, see [Overview of Desktop Specifications](https://help.aliyun.com/document_detail/188609.htm?spm=a2c4g.11186623.0.0.6406297bE0U5DG).
  /// - The data disk size (user_disk_size_gib) set in the template must be greater than the data disk size (data_disk_size) in the mirror.
  late final pulumi.Output<List<int>> userDiskSizeGibs;

  /// Creates a new [Bundle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bundle]. {@macro pulumi_eds_bundle_bundle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bundle(String name, {BundleArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:eds/bundle:Bundle',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    bundleName = registerOutput<String?>('bundleName');
    description = registerOutput<String?>('description');
    desktopType = registerOutput<String>('desktopType');
    imageId = registerOutput<String>('imageId');
    language = registerOutput<String?>('language');
    rootDiskPerformanceLevel = registerOutput<String>(
      'rootDiskPerformanceLevel',
    );
    rootDiskSizeGib = registerOutput<int>('rootDiskSizeGib');
    userDiskPerformanceLevel = registerOutput<String>(
      'userDiskPerformanceLevel',
    );
    userDiskSizeGibs = registerOutput<List<int>>('userDiskSizeGibs');
  }

  /// Gets an existing [Bundle] resource's state with the given [name] and [id].
  static Bundle get(
    String name,
    pulumi.Input<String> id, {
    BundleState? state,
  }) {
    return Bundle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Bundle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eds/bundle:Bundle',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bundleName = registerOutput<String?>('bundleName');
    description = registerOutput<String?>('description');
    desktopType = registerOutput<String>('desktopType');
    imageId = registerOutput<String>('imageId');
    language = registerOutput<String?>('language');
    rootDiskPerformanceLevel = registerOutput<String>(
      'rootDiskPerformanceLevel',
    );
    rootDiskSizeGib = registerOutput<int>('rootDiskSizeGib');
    userDiskPerformanceLevel = registerOutput<String>(
      'userDiskPerformanceLevel',
    );
    userDiskSizeGibs = registerOutput<List<int>>('userDiskSizeGibs');
  }
}
