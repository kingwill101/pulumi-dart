import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_router_args.dart';
import 'virtual_router_spec.dart';
import 'virtual_router_state.dart';

/// Provides an AWS App Mesh virtual router resource.
///
/// &gt; **Note:** Because of backward incompatible API changes ([see issue](https://github.com/awslabs/aws-app-mesh-examples/issues/92), [and here](https://github.com/awslabs/aws-app-mesh-examples/issues/94)), resource definitions created with provider versions earlier than v2.3.0 must be modified: remove `serviceNames` from the `spec` argument (AWS created `aws.appmesh.VirtualService` resources for each — import them with `pulumi import`); add a `listener` configuration block to the `spec` argument. Existing Pulumi state is automatically migrated.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.VirtualRouter("serviceb", {
///     name: "serviceB",
///     meshName: simple.id,
///     spec: {
///         listeners: [{
///             portMapping: {
///                 port: 8080,
///                 protocol: "http",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.VirtualRouter("serviceb",
///     name="serviceB",
///     mesh_name=simple["id"],
///     spec={
///         "listeners": [{
///             "port_mapping": {
///                 "port": 8080,
///                 "protocol": "http",
///             },
///         }],
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
///     var serviceb = new Aws.AppMesh.VirtualRouter("serviceb", new()
///     {
///         Name = "serviceB",
///         MeshName = simple.Id,
///         Spec = new Aws.AppMesh.Inputs.VirtualRouterSpecArgs
///         {
///             Listeners = new[]
///             {
///                 new Aws.AppMesh.Inputs.VirtualRouterSpecListenerArgs
///                 {
///                     PortMapping = new Aws.AppMesh.Inputs.VirtualRouterSpecListenerPortMappingArgs
///                     {
///                         Port = 8080,
///                         Protocol = "http",
///                     },
///                 },
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
/// 		_, err := appmesh.NewVirtualRouter(ctx, "serviceb", &appmesh.VirtualRouterArgs{
/// 			Name:     pulumi.String("serviceB"),
/// 			MeshName: pulumi.Any(simple.Id),
/// 			Spec: &appmesh.VirtualRouterSpecArgs{
/// 				Listeners: appmesh.VirtualRouterSpecListenerArray{
/// 					&appmesh.VirtualRouterSpecListenerArgs{
/// 						PortMapping: &appmesh.VirtualRouterSpecListenerPortMappingArgs{
/// 							Port:     pulumi.Int(8080),
/// 							Protocol: pulumi.String("http"),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_appmesh_virtualrouter" "serviceb" {
///   name      = "serviceB"
///   mesh_name = simple.id
///   spec = {
///     listeners = [{
///       "portMapping" = {
///         "port"     = 8080
///         "protocol" = "http"
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.VirtualRouter;
/// import com.pulumi.aws.appmesh.VirtualRouterArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualRouterSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualRouterSpecListenerArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualRouterSpecListenerPortMappingArgs;
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
///         var serviceb = new VirtualRouter("serviceb", VirtualRouterArgs.builder()
///             .name("serviceB")
///             .meshName(simple.id())
///             .spec(VirtualRouterSpecArgs.builder()
///                 .listeners(VirtualRouterSpecListenerArgs.builder()
///                     .portMapping(VirtualRouterSpecListenerPortMappingArgs.builder()
///                         .port(8080)
///                         .protocol("http")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   serviceb:
///     type: aws:appmesh:VirtualRouter
///     properties:
///       name: serviceB
///       meshName: ${simple.id}
///       spec:
///         listeners:
///           - portMapping:
///               port: 8080
///               protocol: http
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual routers using `meshName` together with the virtual router's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualRouter:VirtualRouter serviceb simpleapp/serviceB
/// ```
class VirtualRouter extends pulumi.CustomResource {
  /// ARN of the virtual router.
  late final pulumi.Output<String> arn;
  /// Creation date of the virtual router.
  late final pulumi.Output<String> createdDate;
  /// Last update date of the virtual router.
  late final pulumi.Output<String> lastUpdatedDate;
  /// Name of the service mesh in which to create the virtual router. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> meshName;
  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final pulumi.Output<String> meshOwner;
  /// Name to use for the virtual router. Must be between 1 and 255 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource owner's AWS account ID.
  late final pulumi.Output<String> resourceOwner;
  /// Virtual router specification to apply. See `spec` Block for details.
  late final pulumi.Output<VirtualRouterSpec> spec;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VirtualRouter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualRouter]. {@macro pulumi_appmesh_virtual_router_virtual_router_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualRouter(
    String name, {
    VirtualRouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualRouter:VirtualRouter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshName = registerOutput<String>('meshName');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<VirtualRouterSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualRouterSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [VirtualRouter] resource's state with the given [name] and [id].
  static VirtualRouter get(
    String name,
    pulumi.Input<String> id, {
    VirtualRouterState? state,
  }) {
    return VirtualRouter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualRouter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualRouter:VirtualRouter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    meshName = registerOutput<String>('meshName');
    meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceOwner = registerOutput<String>('resourceOwner');
    spec = registerOutput<VirtualRouterSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualRouterSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
