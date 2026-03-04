import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_args.dart';
import 'mesh_spec.dart';
import 'mesh_state.dart';

/// Provides an AWS App Mesh service mesh resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const simple = new aws.appmesh.Mesh("simple", {name: "simpleapp"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// simple = aws.appmesh.Mesh("simple", name="simpleapp")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var simple = new Aws.AppMesh.Mesh("simple", new()
///     {
///         Name = "simpleapp",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appmesh.NewMesh(ctx, "simple", &appmesh.MeshArgs{
/// 			Name: pulumi.String("simpleapp"),
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
/// import com.pulumi.aws.appmesh.Mesh;
/// import com.pulumi.aws.appmesh.MeshArgs;
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
///         var simple = new Mesh("simple", MeshArgs.builder()
///             .name("simpleapp")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   simple:
///     type: aws:appmesh:Mesh
///     properties:
///       name: simpleapp
/// ```
///
///
/// ### Egress Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const simple = new aws.appmesh.Mesh("simple", {
///     name: "simpleapp",
///     spec: {
///         egressFilter: {
///             type: "ALLOW_ALL",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// simple = aws.appmesh.Mesh("simple",
///     name="simpleapp",
///     spec={
///         "egress_filter": {
///             "type": "ALLOW_ALL",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var simple = new Aws.AppMesh.Mesh("simple", new()
///     {
///         Name = "simpleapp",
///         Spec = new Aws.AppMesh.Inputs.MeshSpecArgs
///         {
///             EgressFilter = new Aws.AppMesh.Inputs.MeshSpecEgressFilterArgs
///             {
///                 Type = "ALLOW_ALL",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appmesh.NewMesh(ctx, "simple", &appmesh.MeshArgs{
/// 			Name: pulumi.String("simpleapp"),
/// 			Spec: &appmesh.MeshSpecArgs{
/// 				EgressFilter: &appmesh.MeshSpecEgressFilterArgs{
/// 					Type: pulumi.String("ALLOW_ALL"),
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
/// import com.pulumi.aws.appmesh.Mesh;
/// import com.pulumi.aws.appmesh.MeshArgs;
/// import com.pulumi.aws.appmesh.inputs.MeshSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.MeshSpecEgressFilterArgs;
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
///         var simple = new Mesh("simple", MeshArgs.builder()
///             .name("simpleapp")
///             .spec(MeshSpecArgs.builder()
///                 .egressFilter(MeshSpecEgressFilterArgs.builder()
///                     .type("ALLOW_ALL")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   simple:
///     type: aws:appmesh:Mesh
///     properties:
///       name: simpleapp
///       spec:
///         egressFilter:
///           type: ALLOW_ALL
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh service meshes using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/mesh:Mesh simple simpleapp
/// ```
class Mesh extends pulumi.CustomResource {
  /// ARN of the service mesh.
  late final pulumi.Output<String> arn;

  /// Creation date of the service mesh.
  late final pulumi.Output<String> createdDate;

  /// Last update date of the service mesh.
  late final pulumi.Output<String> lastUpdatedDate;

  /// AWS account ID of the service mesh's owner.
  late final pulumi.Output<String> meshOwner;

  /// Name to use for the service mesh. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Resource owner's AWS account ID.
  late final pulumi.Output<String> resourceOwner;

  /// Service mesh specification to apply.
  late final pulumi.Output<MeshSpec?> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Mesh].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Mesh]. {@macro pulumi_appmesh_mesh_mesh_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Mesh(String name, {MeshArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:appmesh/mesh:Mesh',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<MeshSpec?>('spec');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Mesh] resource's state with the given [name] and [id].
  static Mesh get(String name, pulumi.Input<String> id, {MeshState? state}) {
    return Mesh._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Mesh._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appmesh/mesh:Mesh',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<MeshSpec?>('spec');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
