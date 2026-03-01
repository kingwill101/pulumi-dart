import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_args.dart';
import 'get_image_ids_args.dart';
import 'get_image_ids_result.dart';
import 'get_image_result.dart';

/// Use this data source to get the ID of an available OpenStack image.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const ubuntu = openstack.images.getImage({
///     name: "Ubuntu 16.04",
///     mostRecent: true,
///     properties: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// ubuntu = openstack.images.get_image(name="Ubuntu 16.04",
///     most_recent=True,
///     properties={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = OpenStack.Images.GetImage.Invoke(new()
///     {
///         Name = "Ubuntu 16.04",
///         MostRecent = true,
///         Properties =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/images"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := images.LookupImage(ctx, &images.LookupImageArgs{
/// 			Name:       pulumi.StringRef("Ubuntu 16.04"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Properties: map[string]interface{}{
/// 				"key": "value",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.openstack.images.ImagesFunctions;
/// import com.pulumi.openstack.images.inputs.GetImageArgs;
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
///         final var ubuntu = ImagesFunctions.getImage(GetImageArgs.builder()
///             .name("Ubuntu 16.04")
///             .mostRecent(true)
///             .properties(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ubuntu:
///     fn::invoke:
///       function: openstack:images:getImage
///       arguments:
///         name: Ubuntu 16.04
///         mostRecent: true
///         properties:
///           key: value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_images_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:images/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Use this data source to get a list of Openstack Image IDs matching the
/// specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const images = openstack.images.getImageIds({
///     nameRegex: "^Ubuntu 16\\.04.*-amd64",
///     sort: "updated_at",
///     properties: {
///         key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// images = openstack.images.get_image_ids(name_regex="^Ubuntu 16\\.04.*-amd64",
///     sort="updated_at",
///     properties={
///         "key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var images = OpenStack.Images.GetImageIds.Invoke(new()
///     {
///         NameRegex = "^Ubuntu 16\\.04.*-amd64",
///         Sort = "updated_at",
///         Properties =
///         {
///             { "key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/images"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := images.GetImageIds(ctx, &images.GetImageIdsArgs{
/// 			NameRegex: pulumi.StringRef("^Ubuntu 16\\.04.*-amd64"),
/// 			Sort:      pulumi.StringRef("updated_at"),
/// 			Properties: map[string]interface{}{
/// 				"key": "value",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.openstack.images.ImagesFunctions;
/// import com.pulumi.openstack.images.inputs.GetImageIdsArgs;
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
///         final var images = ImagesFunctions.getImageIds(GetImageIdsArgs.builder()
///             .nameRegex("^Ubuntu 16\\.04.*-amd64")
///             .sort("updated_at")
///             .properties(Map.of("key", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   images:
///     fn::invoke:
///       function: openstack:images:getImageIds
///       arguments:
///         nameRegex: ^Ubuntu 16\.04.*-amd64
///         sort: updated_at
///         properties:
///           key: value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_images_get_image_ids_get_image_ids_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageIdsResult> getImageIds(
  GetImageIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:images/getImageIds:getImageIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageIdsResult.fromMap(result);
}
