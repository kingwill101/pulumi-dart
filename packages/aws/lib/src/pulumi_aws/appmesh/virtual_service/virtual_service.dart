import 'package:pulumi/pulumi.dart';
import '../virtual_service_spec/virtual_service_spec.dart';
import 'virtual_service_args.dart';

/// Provides an AWS App Mesh virtual service resource.
///
/// ## Example Usage
///
/// ### Virtual Node Provider
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const servicea = new aws.appmesh.VirtualService("servicea", {
/// name: "servicea.simpleapp.local",
/// meshName: simple.id,
/// spec: {
/// provider: {
/// virtualNode: {
/// virtualNodeName: serviceb1.name,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// servicea = aws.appmesh.VirtualService("servicea",
/// name="servicea.simpleapp.local",
/// mesh_name=simple["id"],
/// spec={
/// "provider": {
/// "virtual_node": {
/// "virtual_node_name": serviceb1["name"],
/// },
/// },
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
/// var servicea = new Aws.AppMesh.VirtualService("servicea", new()
/// {
/// Name = "servicea.simpleapp.local",
/// MeshName = simple.Id,
/// Spec = new Aws.AppMesh.Inputs.VirtualServiceSpecArgs
/// {
/// Provider = new Aws.AppMesh.Inputs.VirtualServiceSpecProviderArgs
/// {
/// VirtualNode = new Aws.AppMesh.Inputs.VirtualServiceSpecProviderVirtualNodeArgs
/// {
/// VirtualNodeName = serviceb1.Name,
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
/// _, err := appmesh.NewVirtualService(ctx, "servicea", &appmesh.VirtualServiceArgs{
/// Name:     pulumi.String("servicea.simpleapp.local"),
/// MeshName: pulumi.Any(simple.Id),
/// Spec: &appmesh.VirtualServiceSpecArgs{
/// Provider: &appmesh.VirtualServiceSpecProviderArgs{
/// VirtualNode: &appmesh.VirtualServiceSpecProviderVirtualNodeArgs{
/// VirtualNodeName: pulumi.Any(serviceb1.Name),
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
/// import com.pulumi.aws.appmesh.VirtualService;
/// import com.pulumi.aws.appmesh.VirtualServiceArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualServiceSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualServiceSpecProviderArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualServiceSpecProviderVirtualNodeArgs;
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
/// var servicea = new VirtualService("servicea", VirtualServiceArgs.builder()
/// .name("servicea.simpleapp.local")
/// .meshName(simple.id())
/// .spec(VirtualServiceSpecArgs.builder()
/// .provider(VirtualServiceSpecProviderArgs.builder()
/// .virtualNode(VirtualServiceSpecProviderVirtualNodeArgs.builder()
/// .virtualNodeName(serviceb1.name())
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
/// servicea:
/// type: aws:appmesh:VirtualService
/// properties:
/// name: servicea.simpleapp.local
/// meshName: ${simple.id}
/// spec:
/// provider:
/// virtualNode:
/// virtualNodeName: ${serviceb1.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Virtual Router Provider
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const servicea = new aws.appmesh.VirtualService("servicea", {
/// name: "servicea.simpleapp.local",
/// meshName: simple.id,
/// spec: {
/// provider: {
/// virtualRouter: {
/// virtualRouterName: serviceb.name,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// servicea = aws.appmesh.VirtualService("servicea",
/// name="servicea.simpleapp.local",
/// mesh_name=simple["id"],
/// spec={
/// "provider": {
/// "virtual_router": {
/// "virtual_router_name": serviceb["name"],
/// },
/// },
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
/// var servicea = new Aws.AppMesh.VirtualService("servicea", new()
/// {
/// Name = "servicea.simpleapp.local",
/// MeshName = simple.Id,
/// Spec = new Aws.AppMesh.Inputs.VirtualServiceSpecArgs
/// {
/// Provider = new Aws.AppMesh.Inputs.VirtualServiceSpecProviderArgs
/// {
/// VirtualRouter = new Aws.AppMesh.Inputs.VirtualServiceSpecProviderVirtualRouterArgs
/// {
/// VirtualRouterName = serviceb.Name,
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
/// _, err := appmesh.NewVirtualService(ctx, "servicea", &appmesh.VirtualServiceArgs{
/// Name:     pulumi.String("servicea.simpleapp.local"),
/// MeshName: pulumi.Any(simple.Id),
/// Spec: &appmesh.VirtualServiceSpecArgs{
/// Provider: &appmesh.VirtualServiceSpecProviderArgs{
/// VirtualRouter: &appmesh.VirtualServiceSpecProviderVirtualRouterArgs{
/// VirtualRouterName: pulumi.Any(serviceb.Name),
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
/// import com.pulumi.aws.appmesh.VirtualService;
/// import com.pulumi.aws.appmesh.VirtualServiceArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualServiceSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualServiceSpecProviderArgs;
/// import com.pulumi.aws.appmesh.inputs.VirtualServiceSpecProviderVirtualRouterArgs;
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
/// var servicea = new VirtualService("servicea", VirtualServiceArgs.builder()
/// .name("servicea.simpleapp.local")
/// .meshName(simple.id())
/// .spec(VirtualServiceSpecArgs.builder()
/// .provider(VirtualServiceSpecProviderArgs.builder()
/// .virtualRouter(VirtualServiceSpecProviderVirtualRouterArgs.builder()
/// .virtualRouterName(serviceb.name())
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
/// servicea:
/// type: aws:appmesh:VirtualService
/// properties:
/// name: servicea.simpleapp.local
/// meshName: ${simple.id}
/// spec:
/// provider:
/// virtualRouter:
/// virtualRouterName: ${serviceb.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual services using <span pulumi-lang-nodejs="`meshName`" pulumi-lang-dotnet="`MeshName`" pulumi-lang-go="`meshName`" pulumi-lang-python="`mesh_name`" pulumi-lang-yaml="`meshName`" pulumi-lang-java="`meshName`">`mesh_name`</span> together with the virtual service's <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/virtualService:VirtualService servicea simpleapp/servicea.simpleapp.local
/// ```
class VirtualService extends CustomResource {
  /// ARN of the virtual service.
  late final Output<String> arn;

  /// Creation date of the virtual service.
  late final Output<String> createdDate;

  /// Last update date of the virtual service.
  late final Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the virtual service. Must be between 1 and 255 characters in length.
  late final Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> meshOwner;

  /// Name to use for the virtual service. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource owner's AWS account ID.
  late final Output<String> resourceOwner;

  /// Virtual service specification to apply.
  late final Output<VirtualServiceSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  VirtualService(
    String name, {
    VirtualServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/virtualService:VirtualService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdDate = Output.createUnknown<String>();
    this.lastUpdatedDate = Output.createUnknown<String>();
    this.meshName = Output.createUnknown<String>();
    this.meshOwner = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceOwner = Output.createUnknown<String>();
    this.spec = Output.createUnknown<VirtualServiceSpec>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
