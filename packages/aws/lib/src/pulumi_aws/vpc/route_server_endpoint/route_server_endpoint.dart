import 'package:pulumi/pulumi.dart';
import '../route_server_endpoint_timeouts/route_server_endpoint_timeouts.dart';
import 'route_server_endpoint_args.dart';

/// Provides a resource for managing a VPC (Virtual Private Cloud) Route Server Endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.vpc.RouteServerEndpoint("test", {
/// routeServerId: example.routeServerId,
/// subnetId: main.id,
/// tags: {
/// Name: "Endpoint A",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpc.RouteServerEndpoint("test",
/// route_server_id=example["routeServerId"],
/// subnet_id=main["id"],
/// tags={
/// "Name": "Endpoint A",
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
/// var test = new Aws.Vpc.RouteServerEndpoint("test", new()
/// {
/// RouteServerId = example.RouteServerId,
/// SubnetId = main.Id,
/// Tags =
/// {
/// { "Name", "Endpoint A" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpc.NewRouteServerEndpoint(ctx, "test", &vpc.RouteServerEndpointArgs{
/// RouteServerId: pulumi.Any(example.RouteServerId),
/// SubnetId:      pulumi.Any(main.Id),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Endpoint A"),
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
/// import com.pulumi.aws.vpc.RouteServerEndpoint;
/// import com.pulumi.aws.vpc.RouteServerEndpointArgs;
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
/// var test = new RouteServerEndpoint("test", RouteServerEndpointArgs.builder()
/// .routeServerId(example.routeServerId())
/// .subnetId(main.id())
/// .tags(Map.of("Name", "Endpoint A"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:vpc:RouteServerEndpoint
/// properties:
/// routeServerId: ${example.routeServerId}
/// subnetId: ${main.id}
/// tags:
/// Name: Endpoint A
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC (Virtual Private Cloud) Route Server Endpoint using the <span pulumi-lang-nodejs="`routeServerEndpointId`" pulumi-lang-dotnet="`RouteServerEndpointId`" pulumi-lang-go="`routeServerEndpointId`" pulumi-lang-python="`route_server_endpoint_id`" pulumi-lang-yaml="`routeServerEndpointId`" pulumi-lang-java="`routeServerEndpointId`">`route_server_endpoint_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerEndpoint:RouteServerEndpoint example rse-12345678
/// ```
class RouteServerEndpoint extends CustomResource {
  /// The ARN of the route server endpoint.
  late final Output<String> arn;

  /// The IP address of the Elastic network interface for the endpoint.
  late final Output<String> eniAddress;

  /// The ID of the Elastic network interface for the endpoint.
  late final Output<String> eniId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The unique identifier of the route server endpoint.
  late final Output<String> routeServerEndpointId;

  /// The ID of the route server for which to create an endpoint.
  late final Output<String> routeServerId;

  /// The ID of the subnet in which to create the route server endpoint.
  ///
  /// The following arguments are optional:
  late final Output<String> subnetId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<RouteServerEndpointTimeouts?> timeouts;

  /// The ID of the VPC containing the endpoint.
  late final Output<String> vpcId;

  RouteServerEndpoint(
    String name, {
    RouteServerEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerEndpoint:RouteServerEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.eniAddress = Output.createUnknown<String>();
    this.eniId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.routeServerEndpointId = Output.createUnknown<String>();
    this.routeServerId = Output.createUnknown<String>();
    this.subnetId = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<RouteServerEndpointTimeouts?>();
    this.vpcId = Output.createUnknown<String>();
  }
}
