import 'package:pulumi/pulumi.dart';
import '../gateway_route_spec/gateway_route_spec.dart';
import 'gateway_route_args.dart';

/// Provides an AWS App Mesh gateway route resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appmesh.GatewayRoute("example", {
/// name: "example-gateway-route",
/// meshName: "example-service-mesh",
/// virtualGatewayName: exampleAwsAppmeshVirtualGateway.name,
/// spec: {
/// httpRoute: {
/// action: {
/// target: {
/// virtualService: {
/// virtualServiceName: exampleAwsAppmeshVirtualService.name,
/// },
/// },
/// },
/// match: {
/// prefix: "/",
/// },
/// },
/// },
/// tags: {
/// Environment: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appmesh.GatewayRoute("example",
/// name="example-gateway-route",
/// mesh_name="example-service-mesh",
/// virtual_gateway_name=example_aws_appmesh_virtual_gateway["name"],
/// spec={
/// "http_route": {
/// "action": {
/// "target": {
/// "virtual_service": {
/// "virtual_service_name": example_aws_appmesh_virtual_service["name"],
/// },
/// },
/// },
/// "match": {
/// "prefix": "/",
/// },
/// },
/// },
/// tags={
/// "Environment": "test",
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
/// var example = new Aws.AppMesh.GatewayRoute("example", new()
/// {
/// Name = "example-gateway-route",
/// MeshName = "example-service-mesh",
/// VirtualGatewayName = exampleAwsAppmeshVirtualGateway.Name,
/// Spec = new Aws.AppMesh.Inputs.GatewayRouteSpecArgs
/// {
/// HttpRoute = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteArgs
/// {
/// Action = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteActionArgs
/// {
/// Target = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteActionTargetArgs
/// {
/// VirtualService = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteActionTargetVirtualServiceArgs
/// {
/// VirtualServiceName = exampleAwsAppmeshVirtualService.Name,
/// },
/// },
/// },
/// Match = new Aws.AppMesh.Inputs.GatewayRouteSpecHttpRouteMatchArgs
/// {
/// Prefix = "/",
/// },
/// },
/// },
/// Tags =
/// {
/// { "Environment", "test" },
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
/// _, err := appmesh.NewGatewayRoute(ctx, "example", &appmesh.GatewayRouteArgs{
/// Name:               pulumi.String("example-gateway-route"),
/// MeshName:           pulumi.String("example-service-mesh"),
/// VirtualGatewayName: pulumi.Any(exampleAwsAppmeshVirtualGateway.Name),
/// Spec: &appmesh.GatewayRouteSpecArgs{
/// HttpRoute: &appmesh.GatewayRouteSpecHttpRouteArgs{
/// Action: &appmesh.GatewayRouteSpecHttpRouteActionArgs{
/// Target: &appmesh.GatewayRouteSpecHttpRouteActionTargetArgs{
/// VirtualService: &appmesh.GatewayRouteSpecHttpRouteActionTargetVirtualServiceArgs{
/// VirtualServiceName: pulumi.Any(exampleAwsAppmeshVirtualService.Name),
/// },
/// },
/// },
/// Match: &appmesh.GatewayRouteSpecHttpRouteMatchArgs{
/// Prefix: pulumi.String("/"),
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("test"),
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
/// import com.pulumi.aws.appmesh.GatewayRoute;
/// import com.pulumi.aws.appmesh.GatewayRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteActionArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteActionTargetArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteActionTargetVirtualServiceArgs;
/// import com.pulumi.aws.appmesh.inputs.GatewayRouteSpecHttpRouteMatchArgs;
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
/// var example = new GatewayRoute("example", GatewayRouteArgs.builder()
/// .name("example-gateway-route")
/// .meshName("example-service-mesh")
/// .virtualGatewayName(exampleAwsAppmeshVirtualGateway.name())
/// .spec(GatewayRouteSpecArgs.builder()
/// .httpRoute(GatewayRouteSpecHttpRouteArgs.builder()
/// .action(GatewayRouteSpecHttpRouteActionArgs.builder()
/// .target(GatewayRouteSpecHttpRouteActionTargetArgs.builder()
/// .virtualService(GatewayRouteSpecHttpRouteActionTargetVirtualServiceArgs.builder()
/// .virtualServiceName(exampleAwsAppmeshVirtualService.name())
/// .build())
/// .build())
/// .build())
/// .match(GatewayRouteSpecHttpRouteMatchArgs.builder()
/// .prefix("/")
/// .build())
/// .build())
/// .build())
/// .tags(Map.of("Environment", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appmesh:GatewayRoute
/// properties:
/// name: example-gateway-route
/// meshName: example-service-mesh
/// virtualGatewayName: ${exampleAwsAppmeshVirtualGateway.name}
/// spec:
/// httpRoute:
/// action:
/// target:
/// virtualService:
/// virtualServiceName: ${exampleAwsAppmeshVirtualService.name}
/// match:
/// prefix: /
/// tags:
/// Environment: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh gateway routes using <span pulumi-lang-nodejs="`meshName`" pulumi-lang-dotnet="`MeshName`" pulumi-lang-go="`meshName`" pulumi-lang-python="`mesh_name`" pulumi-lang-yaml="`meshName`" pulumi-lang-java="`meshName`">`mesh_name`</span> and <span pulumi-lang-nodejs="`virtualGatewayName`" pulumi-lang-dotnet="`VirtualGatewayName`" pulumi-lang-go="`virtualGatewayName`" pulumi-lang-python="`virtual_gateway_name`" pulumi-lang-yaml="`virtualGatewayName`" pulumi-lang-java="`virtualGatewayName`">`virtual_gateway_name`</span> together with the gateway route's <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/gatewayRoute:GatewayRoute example mesh/gw1/example-gateway-route
/// ```
class GatewayRoute extends CustomResource {
  /// ARN of the gateway route.
  late final Output<String> arn;

  /// Creation date of the gateway route.
  late final Output<String> createdDate;

  /// Last update date of the gateway route.
  late final Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length.
  late final Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> meshOwner;

  /// Name to use for the gateway route. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource owner's AWS account ID.
  late final Output<String> resourceOwner;

  /// Gateway route specification to apply.
  late final Output<GatewayRouteSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length.
  late final Output<String> virtualGatewayName;

  GatewayRoute(
    String name, {
    GatewayRouteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/gatewayRoute:GatewayRoute',
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
    this.spec = Output.createUnknown<GatewayRouteSpec>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.virtualGatewayName = Output.createUnknown<String>();
  }
}
