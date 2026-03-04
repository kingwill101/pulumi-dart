import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_import_args.dart';
import 'image_import_state.dart';

/// Provides a ECS Image Import resource.
///
/// For information about ECS Image Import and how to use it, see [What is Image Import](https://www.alibabacloud.com/help/en/ecs/developer-reference/api-ecs-2014-05-26-importimage).
///
/// &gt; **NOTE:** Available since v1.69.0.
///
/// &gt; **NOTE:** You must upload the image file to the object storage OSS in advance.
///
/// &gt; **NOTE:** The region where the image is imported must be the same region as the OSS bucket where the image file is uploaded.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-image-import-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `${name}-${_default.result}`});
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.id,
///     key: "fc/hello.zip",
///     content: `    # -*- coding: utf-8 -*-
///     def handler(event, context):
///     print \\"hello world\\"
///     return 'hello world'
/// `,
/// });
/// const defaultImageImport = new alicloud.ecs.ImageImport("default", {
///     architecture: "x86_64",
///     osType: "linux",
///     platform: "Ubuntu",
///     licenseType: "Auto",
///     imageName: name,
///     description: name,
///     diskDeviceMappings: [{
///         ossBucket: defaultBucket.id,
///         ossObject: defaultBucketObject.id,
///         diskImageSize: 5,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-image-import-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"{name}-{default['result']}")
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.id,
///     key="fc/hello.zip",
///     content="""    # -*- coding: utf-8 -*-
///     def handler(event, context):
///     print \"hello world\"
///     return 'hello world'
/// """)
/// default_image_import = alicloud.ecs.ImageImport("default",
///     architecture="x86_64",
///     os_type="linux",
///     platform="Ubuntu",
///     license_type="Auto",
///     image_name=name,
///     description=name,
///     disk_device_mappings=[{
///         "oss_bucket": default_bucket.id,
///         "oss_object": default_bucket_object.id,
///         "disk_image_size": 5,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-image-import-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"{name}-{@default.Result}",
///     });
///
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.Id,
///         Key = "fc/hello.zip",
///         Content = @"    # -*- coding: utf-8 -*-
///     def handler(event, context):
///     print \""hello world\""
///     return 'hello world'
/// ",
///     });
///
///     var defaultImageImport = new AliCloud.Ecs.ImageImport("default", new()
///     {
///         Architecture = "x86_64",
///         OsType = "linux",
///         Platform = "Ubuntu",
///         LicenseType = "Auto",
///         ImageName = name,
///         Description = name,
///         DiskDeviceMappings = new[]
///         {
///             new AliCloud.Ecs.Inputs.ImageImportDiskDeviceMappingArgs
///             {
///                 OssBucket = defaultBucket.Id,
///                 OssObject = defaultBucketObject.Id,
///                 DiskImageSize = 5,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-image-import-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucketObject, err := oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket:  defaultBucket.ID(),
/// 			Key:     pulumi.String("fc/hello.zip"),
/// 			Content: pulumi.String("    # -*- coding: utf-8 -*-\n    def handler(event, context):\n    print \\\"hello world\\\"\n    return 'hello world'\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewImageImport(ctx, "default", &ecs.ImageImportArgs{
/// 			Architecture: pulumi.String("x86_64"),
/// 			OsType:       pulumi.String("linux"),
/// 			Platform:     pulumi.String("Ubuntu"),
/// 			LicenseType:  pulumi.String("Auto"),
/// 			ImageName:    pulumi.String(name),
/// 			Description:  pulumi.String(name),
/// 			DiskDeviceMappings: ecs.ImageImportDiskDeviceMappingArray{
/// 				&ecs.ImageImportDiskDeviceMappingArgs{
/// 					OssBucket:     defaultBucket.ID(),
/// 					OssObject:     defaultBucketObject.ID(),
/// 					DiskImageSize: pulumi.Int(5),
/// 				},
/// 			},
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
/// import com.pulumi.alicloud.ecs.ImageImport;
/// import com.pulumi.alicloud.ecs.ImageImportArgs;
/// import com.pulumi.alicloud.ecs.inputs.ImageImportDiskDeviceMappingArgs;
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
///         final var name = config.get("name").orElse("terraform-image-import-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.id())
///             .key("fc/hello.zip")
///             .content("""
///     # -*- coding: utf-8 -*-
///     def handler(event, context):
///     print \"hello world\"
///     return 'hello world'
///             """)
///             .build());
///
///         var defaultImageImport = new ImageImport("defaultImageImport", ImageImportArgs.builder()
///             .architecture("x86_64")
///             .osType("linux")
///             .platform("Ubuntu")
///             .licenseType("Auto")
///             .imageName(name)
///             .description(name)
///             .diskDeviceMappings(ImageImportDiskDeviceMappingArgs.builder()
///                 .ossBucket(defaultBucket.id())
///                 .ossObject(defaultBucketObject.id())
///                 .diskImageSize(5)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-image-import-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: ${name}-${default.result}
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.id}
///       key: fc/hello.zip
///       content: |2
///             # -*- coding: utf-8 -*-
///             def handler(event, context):
///             print \"hello world\"
///             return 'hello world'
///   defaultImageImport:
///     type: alicloud:ecs:ImageImport
///     name: default
///     properties:
///       architecture: x86_64
///       osType: linux
///       platform: Ubuntu
///       licenseType: Auto
///       imageName: ${name}
///       description: ${name}
///       diskDeviceMappings:
///         - ossBucket: ${defaultBucket.id}
///           ossObject: ${defaultBucketObject.id}
///           diskImageSize: 5
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Image Import can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/imageImport:ImageImport example <id>
/// ```
class ImageImport extends pulumi.CustomResource {
  /// The architecture of the image. Default value: `x86_64`. Valid values: `x86_64`, `i386`.
  late final pulumi.Output<String?> architecture;

  /// The boot mode of the image. Valid values: `BIOS`, `UEFI`.
  late final pulumi.Output<String> bootMode;

  /// The description of the image. The `description` must be 2 to 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String?> description;

  /// The information about the custom image. See `disk_device_mapping` below.
  late final pulumi.Output<List<Map<String, dynamic>>> diskDeviceMappings;

  /// The name of the image. The `image_name` must be `2` to `128` characters in length. The `image_name` must start with a letter and cannot start with acs: or aliyun. The `image_name` cannot contain http:// or https://. The `image_name` can contain letters, digits, periods (.), colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String> imageName;

  /// The type of the license used to activate the operating system after the image is imported. Default value: `Auto`. Valid values: `Auto`, `Aliyun`, `BYOL`.
  late final pulumi.Output<String?> licenseType;

  /// The type of the operating system. Default value: `linux`. Valid values: `windows`, `linux`.
  late final pulumi.Output<String?> osType;

  /// The operating system platform. More valid values refer to [ImportImage OpenAPI](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/importimage).
  /// &gt; **NOTE:** Before provider version 1.197.0, the default value of `platform` is `Ubuntu`.
  late final pulumi.Output<String> platform;

  /// Creates a new [ImageImport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageImport]. {@macro pulumi_ecs_image_import_image_import_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageImport(
    String name, {
    ImageImportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/imageImport:ImageImport',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    architecture = registerOutput<String?>('architecture');
    bootMode = registerOutput<String>('bootMode');
    description = registerOutput<String?>('description');
    diskDeviceMappings = registerOutput<List<Map<String, dynamic>>>(
      'diskDeviceMappings',
    );
    imageName = registerOutput<String>('imageName');
    licenseType = registerOutput<String?>('licenseType');
    osType = registerOutput<String?>('osType');
    platform = registerOutput<String>('platform');
  }

  /// Gets an existing [ImageImport] resource's state with the given [name] and [id].
  static ImageImport get(
    String name,
    pulumi.Input<String> id, {
    ImageImportState? state,
  }) {
    return ImageImport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImageImport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/imageImport:ImageImport',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    architecture = registerOutput<String?>('architecture');
    bootMode = registerOutput<String>('bootMode');
    description = registerOutput<String?>('description');
    diskDeviceMappings = registerOutput<List<Map<String, dynamic>>>(
      'diskDeviceMappings',
    );
    imageName = registerOutput<String>('imageName');
    licenseType = registerOutput<String?>('licenseType');
    osType = registerOutput<String?>('osType');
    platform = registerOutput<String>('platform');
  }
}
