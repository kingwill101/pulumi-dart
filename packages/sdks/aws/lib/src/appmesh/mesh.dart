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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_appmesh_mesh" "simple" {
///   name = "simpleapp"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///     spec: {
///         egressFilter: {
///             type: "ALLOW_ALL",
///         },
///     },
///     name: "simpleapp",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// simple = aws.appmesh.Mesh("simple",
///     spec={
///         "egress_filter": {
///             "type": "ALLOW_ALL",
///         },
///     },
///     name="simpleapp")
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
///         Spec = new Aws.AppMesh.Inputs.MeshSpecArgs
///         {
///             EgressFilter = new Aws.AppMesh.Inputs.MeshSpecEgressFilterArgs
///             {
///                 Type = "ALLOW_ALL",
///             },
///         },
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
/// 			Spec: &appmesh.MeshSpecArgs{
/// 				EgressFilter: &appmesh.MeshSpecEgressFilterArgs{
/// 					Type: pulumi.String("ALLOW_ALL"),
/// 				},
/// 			},
/// 			Name: pulumi.String("simpleapp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_appmesh_mesh" "simple" {
///   spec = {
///     egress_filter = {
///       type = "ALLOW_ALL"
///     }
///   }
///   name = "simpleapp"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .spec(MeshSpecArgs.builder()
///                 .egressFilter(MeshSpecEgressFilterArgs.builder()
///                     .type("ALLOW_ALL")
///                     .build())
///                 .build())
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
///       spec:
///         egressFilter:
///           type: ALLOW_ALL
///       name: simpleapp
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
  /// Service mesh specification to apply. See `spec` Block for details.
  late final pulumi.Output<MeshSpec?> spec;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Mesh].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Mesh]. {@macro pulumi_appmesh_mesh_mesh_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Mesh(
    String name, {
    MeshArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/mesh:Mesh',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<MeshSpec?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MeshSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Mesh] resource's state with the given [name] and [id].
  static Mesh get(
    String name,
    pulumi.Input<String> id, {
    MeshState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Mesh._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    spec = registerOutput<MeshSpec?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MeshSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Mesh] resource.
  Mesh.reference(String urn)
    : super(
        'aws:appmesh/mesh:Mesh',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<MeshSpec?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MeshSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
