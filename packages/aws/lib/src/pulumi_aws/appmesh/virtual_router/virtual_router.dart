import 'package:pulumi/pulumi.dart';
import '../virtual_router_spec/virtual_router_spec.dart';
import 'virtual_router_args.dart';

/// Provides an AWS App Mesh virtual router resource.
///
/// ## Breaking Changes
///
/// Because of backward incompatible API changes (read [here](https://github.com/awslabs/aws-app-mesh-examples/issues/92) and [here](https://github.com/awslabs/aws-app-mesh-examples/issues/94)), <span pulumi-lang-nodejs="`aws.appmesh.VirtualRouter`" pulumi-lang-dotnet="`aws.appmesh.VirtualRouter`" pulumi-lang-go="`appmesh.VirtualRouter`" pulumi-lang-python="`appmesh.VirtualRouter`" pulumi-lang-yaml="`aws.appmesh.VirtualRouter`" pulumi-lang-java="`aws.appmesh.VirtualRouter`">`aws.appmesh.VirtualRouter`</span> resource definitions created with provider versions earlier than v2.3.0 will need to be modified:
///
/// * Remove service <span pulumi-lang-nodejs="`serviceNames`" pulumi-lang-dotnet="`ServiceNames`" pulumi-lang-go="`serviceNames`" pulumi-lang-python="`service_names`" pulumi-lang-yaml="`serviceNames`" pulumi-lang-java="`serviceNames`">`service_names`</span> from the <span pulumi-lang-nodejs="`spec`" pulumi-lang-dotnet="`Spec`" pulumi-lang-go="`spec`" pulumi-lang-python="`spec`" pulumi-lang-yaml="`spec`" pulumi-lang-java="`spec`">`spec`</span> argument. AWS has created a <span pulumi-lang-nodejs="`aws.appmesh.VirtualService`" pulumi-lang-dotnet="`aws.appmesh.VirtualService`" pulumi-lang-go="`appmesh.VirtualService`" pulumi-lang-python="`appmesh.VirtualService`" pulumi-lang-yaml="`aws.appmesh.VirtualService`" pulumi-lang-java="`aws.appmesh.VirtualService`">`aws.appmesh.VirtualService`</span> resource for each service name. Import these resource using `pulumi import`.
///
/// * Add a <span pulumi-lang-nodejs="`listener`" pulumi-lang-dotnet="`Listener`" pulumi-lang-go="`listener`" pulumi-lang-python="`listener`" pulumi-lang-yaml="`listener`" pulumi-lang-java="`listener`">`listener`</span> configuration block to the <span pulumi-lang-nodejs="`spec`" pulumi-lang-dotnet="`Spec`" pulumi-lang-go="`spec`" pulumi-lang-python="`spec`" pulumi-lang-yaml="`spec`" pulumi-lang-java="`spec`">`spec`</span> argument.
///
/// The state associated with existing resources will automatically be migrated.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.VirtualRouter("serviceb", {
/// name: "serviceB",
/// meshName: simple.id,
/// spec: {
/// listeners: [{
/// portMapping: {
/// port: 8080,
/// protocol: "http",
/// },
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.VirtualRouter("serviceb",
/// name="serviceB",
/// mesh_name=simple["id"],
/// spec={
/// "listeners": [{
/// "port_mapping": {
/// "port": 8080,
/// "protocol": "http",
/// },
/// }],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var serviceb = new Aws.AppMesh.VirtualRouter("serviceb", new()
/// {
/// Name = "serviceB",
/// MeshName = simple.Id,
/// Spec = new Aws.AppMesh.Inputs.VirtualRouterSpecArgs
/// {
/// Listeners = new[]
/// {
/// new Aws.AppMesh.Inputs.VirtualRouterSpecListenerArgs
/// {
/// PortMapping = new Aws.AppMesh.Inputs.VirtualRouterSpecListenerPortMappingArgs
/// {
/// Port = 8080,
/// Protocol = "http",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appmesh"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appmesh.NewVirtualRouter(ctx, "serviceb", &appmesh.VirtualRouterArgs{
/// Name:     pulumi.String("serviceB"),
/// MeshName: pulumi.Any(simple.Id),
/// Spec: &appmesh.VirtualRouterSpecArgs{
/// Listeners: appmesh.VirtualRouterSpecListenerArray{
/// &appmesh.VirtualRouterSpecListenerArgs{
/// PortMapping: &appmesh.VirtualRouterSpecListenerPortMappingArgs{
/// Port:     pulumi.Int(8080),
/// Protocol: pulumi.String("http"),
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var serviceb = new VirtualRouter("serviceb", VirtualRouterArgs.builder()
/// .name("serviceB")
/// .meshName(simple.id())
/// .spec(VirtualRouterSpecArgs.builder()
/// .listeners(VirtualRouterSpecListenerArgs.builder()
/// .portMapping(VirtualRouterSpecListenerPortMappingArgs.builder()
/// .port(8080)
/// .protocol("http")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// serviceb:
/// type: aws:appmesh:VirtualRouter
/// properties:
/// name: serviceB
/// meshName: ${simple.id}
/// spec:
/// listeners:
/// - portMapping:
/// port: 8080
/// protocol: http
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual routers using <span pulumi-lang-nodejs="`meshName`" pulumi-lang-dotnet="`MeshName`" pulumi-lang-go="`meshName`" pulumi-lang-python="`mesh_name`" pulumi-lang-yaml="`meshName`" pulumi-lang-java="`meshName`">`mesh_name`</span> together with the virtual router's <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualRouter:VirtualRouter serviceb simpleapp/serviceB
/// ```
class VirtualRouter extends CustomResource {
  /// ARN of the virtual router.
  late final Output<String> arn;

  /// Creation date of the virtual router.
  late final Output<String> createdDate;

  /// Last update date of the virtual router.
  late final Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the virtual router. Must be between 1 and 255 characters in length.
  late final Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> meshOwner;

  /// Name to use for the virtual router. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource owner's AWS account ID.
  late final Output<String> resourceOwner;

  /// Virtual router specification to apply.
  late final Output<VirtualRouterSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  VirtualRouter(
    String name, {
    VirtualRouterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualRouter:VirtualRouter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
