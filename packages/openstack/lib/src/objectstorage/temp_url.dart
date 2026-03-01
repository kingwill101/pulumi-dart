import 'package:pulumi/pulumi.dart' as pulumi;
import 'temp_url_args.dart';

/// Use this resource to generate an OpenStack Object Storage temporary URL.
///
/// The temporary URL will be valid for as long as TTL is set to (in seconds).
/// Once the URL has expired, it will no longer be valid, but the resource
/// will remain in place. If you wish to automatically regenerate a URL, set
/// the `regenerate` argument to `true`. This will create a new resource with
/// a new ID and URL.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const container1 = new openstack.objectstorage.Container("container_1", {
///     name: "test",
///     metadata: {
///         "Temp-URL-Key": "testkey",
///     },
/// });
/// const object1 = new openstack.objectstorage.ContainerObject("object_1", {
///     containerName: container1.name,
///     name: "test",
///     content: "Hello, world!",
/// });
/// const objTempurl = new openstack.objectstorage.TempUrl("obj_tempurl", {
///     container: container1.name,
///     object: object1.name,
///     method: "post",
///     ttl: 20,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// container1 = openstack.objectstorage.Container("container_1",
///     name="test",
///     metadata={
///         "Temp-URL-Key": "testkey",
///     })
/// object1 = openstack.objectstorage.ContainerObject("object_1",
///     container_name=container1.name,
///     name="test",
///     content="Hello, world!")
/// obj_tempurl = openstack.objectstorage.TempUrl("obj_tempurl",
///     container=container1.name,
///     object=object1.name,
///     method="post",
///     ttl=20)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var container1 = new OpenStack.ObjectStorage.Container("container_1", new()
///     {
///         Name = "test",
///         Metadata =
///         {
///             { "Temp-URL-Key", "testkey" },
///         },
///     });
///
///     var object1 = new OpenStack.ObjectStorage.ContainerObject("object_1", new()
///     {
///         ContainerName = container1.Name,
///         Name = "test",
///         Content = "Hello, world!",
///     });
///
///     var objTempurl = new OpenStack.ObjectStorage.TempUrl("obj_tempurl", new()
///     {
///         Container = container1.Name,
///         Object = object1.Name,
///         Method = "post",
///         Ttl = 20,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/objectstorage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		container1, err := objectstorage.NewContainer(ctx, "container_1", &objectstorage.ContainerArgs{
/// 			Name: pulumi.String("test"),
/// 			Metadata: pulumi.StringMap{
/// 				"Temp-URL-Key": pulumi.String("testkey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object1, err := objectstorage.NewContainerObject(ctx, "object_1", &objectstorage.ContainerObjectArgs{
/// 			ContainerName: container1.Name,
/// 			Name:          pulumi.String("test"),
/// 			Content:       pulumi.String("Hello, world!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = objectstorage.NewTempUrl(ctx, "obj_tempurl", &objectstorage.TempUrlArgs{
/// 			Container: container1.Name,
/// 			Object:    object1.Name,
/// 			Method:    pulumi.String("post"),
/// 			Ttl:       pulumi.Int(20),
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
/// import com.pulumi.openstack.objectstorage.Container;
/// import com.pulumi.openstack.objectstorage.ContainerArgs;
/// import com.pulumi.openstack.objectstorage.ContainerObject;
/// import com.pulumi.openstack.objectstorage.ContainerObjectArgs;
/// import com.pulumi.openstack.objectstorage.TempUrl;
/// import com.pulumi.openstack.objectstorage.TempUrlArgs;
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
///         var container1 = new Container("container1", ContainerArgs.builder()
///             .name("test")
///             .metadata(Map.of("Temp-URL-Key", "testkey"))
///             .build());
///
///         var object1 = new ContainerObject("object1", ContainerObjectArgs.builder()
///             .containerName(container1.name())
///             .name("test")
///             .content("Hello, world!")
///             .build());
///
///         var objTempurl = new TempUrl("objTempurl", TempUrlArgs.builder()
///             .container(container1.name())
///             .object(object1.name())
///             .method("post")
///             .ttl(20)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   container1:
///     type: openstack:objectstorage:Container
///     name: container_1
///     properties:
///       name: test
///       metadata:
///         Temp-URL-Key: testkey
///   object1:
///     type: openstack:objectstorage:ContainerObject
///     name: object_1
///     properties:
///       containerName: ${container1.name}
///       name: test
///       content: Hello, world!
///   objTempurl:
///     type: openstack:objectstorage:TempUrl
///     name: obj_tempurl
///     properties:
///       container: ${container1.name}
///       object: ${object1.name}
///       method: post
///       ttl: 20
/// ```
class TempUrl extends pulumi.CustomResource {
  /// The container name the object belongs to.
  late final pulumi.Output<String> container;
  /// The digest to use when generating the tempurl.
  /// Supported values are `sha1`, `sha256` and `sha512`. Default is `sha1`.
  late final pulumi.Output<String?> digest;
  /// The key to use when generating the tempurl. If not
  /// provided, the key will be read from the container or account metadata.
  late final pulumi.Output<String?> key;
  /// The method allowed when accessing this URL.
  /// Valid values are `GET`, and `POST`. Default is `GET`.
  late final pulumi.Output<String?> method;
  /// The object name the tempurl is for.
  late final pulumi.Output<String> object;
  /// Whether to automatically regenerate the URL when
  /// it has expired. If set to true, this will create a new resource with a new
  /// ID and new URL. Defaults to false.
  late final pulumi.Output<bool?> regenerate;
  /// The region the tempurl is located in.
  late final pulumi.Output<String> region;
  /// Split is the string on which to split the object URL.
  /// Default is `/v1/`.
  late final pulumi.Output<String?> split;
  /// The TTL, in seconds, for the URL. For how long it should
  /// be valid.
  late final pulumi.Output<int> ttl;
  /// The URL
  late final pulumi.Output<String> url;

  /// Creates a new [TempUrl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TempUrl]. {@macro pulumi_objectstorage_temp_url_temp_url_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TempUrl(
    String name, {
    TempUrlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:objectstorage/tempUrl:TempUrl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.container = registerOutput<String>('container');
    this.digest = registerOutput<String?>('digest');
    this.key = registerOutput<String?>('key');
    this.method = registerOutput<String?>('method');
    this.object = registerOutput<String>('object');
    this.regenerate = registerOutput<bool?>('regenerate');
    this.region = registerOutput<String>('region');
    this.split = registerOutput<String?>('split');
    this.ttl = registerOutput<int>('ttl');
    this.url = registerOutput<String>('url');
  }
}
