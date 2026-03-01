import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_router_args.dart';
import 'virtual_router_spec.dart';

/// Provides an AWS App Mesh virtual router resource.
///
/// ## Breaking Changes
///
/// Because of backward incompatible API changes (read [here](https://github.com/awslabs/aws-app-mesh-examples/issues/92) and [here](https://github.com/awslabs/aws-app-mesh-examples/issues/94)), `aws.appmesh.VirtualRouter` resource definitions created with provider versions earlier than v2.3.0 will need to be modified:
///
/// * Remove service `service_names` from the `spec` argument. AWS has created a `aws.appmesh.VirtualService` resource for each service name. Import these resource using `pulumi import`.
///
/// * Add a `listener` configuration block to the `spec` argument.
///
/// The state associated with existing resources will automatically be migrated.
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appmesh.VirtualRouter;
/// import com.pulumi.aws.appmesh.VirtualRouterArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualRouterSpecArgs;
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
/// Using `pulumi import`, import App Mesh virtual routers using `mesh_name` together with the virtual router's `name`. For example:
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
  /// Virtual router specification to apply.
  late final pulumi.Output<VirtualRouterSpec> spec;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
    this.arn = registerOutput<String>('arn');
    this.createdDate = registerOutput<String>('createdDate');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.meshName = registerOutput<String>('meshName');
    this.meshOwner = registerOutput<String>('meshOwner');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceOwner = registerOutput<String>('resourceOwner');
    this.spec = registerOutput<VirtualRouterSpec>('spec');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
