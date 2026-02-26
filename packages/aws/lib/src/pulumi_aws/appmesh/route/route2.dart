import 'package:pulumi/pulumi.dart';
import '../route_spec/route_spec.dart';
import 'route_args2.dart';

/// Provides an AWS App Mesh route resource.
///
/// ## Example Usage
///
/// ### HTTP Routing
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.Route("serviceb", {
/// name: "serviceB-route",
/// meshName: simple.id,
/// virtualRouterName: servicebAwsAppmeshVirtualRouter.name,
/// spec: {
/// httpRoute: {
/// match: {
/// prefix: "/",
/// },
/// action: {
/// weightedTargets: [
/// {
/// virtualNode: serviceb1.name,
/// weight: 90,
/// },
/// {
/// virtualNode: serviceb2.name,
/// weight: 10,
/// },
/// ],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.Route("serviceb",
/// name="serviceB-route",
/// mesh_name=simple["id"],
/// virtual_router_name=serviceb_aws_appmesh_virtual_router["name"],
/// spec={
/// "http_route": {
/// "match": {
/// "prefix": "/",
/// },
/// "action": {
/// "weighted_targets": [
/// {
/// "virtual_node": serviceb1["name"],
/// "weight": 90,
/// },
/// {
/// "virtual_node": serviceb2["name"],
/// "weight": 10,
/// },
/// ],
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
/// var serviceb = new Aws.AppMesh.Route("serviceb", new()
/// {
/// Name = "serviceB-route",
/// MeshName = simple.Id,
/// VirtualRouterName = servicebAwsAppmeshVirtualRouter.Name,
/// Spec = new Aws.AppMesh.Inputs.RouteSpecArgs
/// {
/// HttpRoute = new Aws.AppMesh.Inputs.RouteSpecHttpRouteArgs
/// {
/// Match = new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchArgs
/// {
/// Prefix = "/",
/// },
/// Action = new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionArgs
/// {
/// WeightedTargets = new[]
/// {
/// new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionWeightedTargetArgs
/// {
/// VirtualNode = serviceb1.Name,
/// Weight = 90,
/// },
/// new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionWeightedTargetArgs
/// {
/// VirtualNode = serviceb2.Name,
/// Weight = 10,
/// },
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
/// _, err := appmesh.NewRoute(ctx, "serviceb", &appmesh.RouteArgs{
/// Name:              pulumi.String("serviceB-route"),
/// MeshName:          pulumi.Any(simple.Id),
/// VirtualRouterName: pulumi.Any(servicebAwsAppmeshVirtualRouter.Name),
/// Spec: &appmesh.RouteSpecArgs{
/// HttpRoute: &appmesh.RouteSpecHttpRouteArgs{
/// Match: &appmesh.RouteSpecHttpRouteMatchArgs{
/// Prefix: pulumi.String("/"),
/// },
/// Action: &appmesh.RouteSpecHttpRouteActionArgs{
/// WeightedTargets: appmesh.RouteSpecHttpRouteActionWeightedTargetArray{
/// &appmesh.RouteSpecHttpRouteActionWeightedTargetArgs{
/// VirtualNode: pulumi.Any(serviceb1.Name),
/// Weight:      pulumi.Int(90),
/// },
/// &appmesh.RouteSpecHttpRouteActionWeightedTargetArgs{
/// VirtualNode: pulumi.Any(serviceb2.Name),
/// Weight:      pulumi.Int(10),
/// },
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
/// import com.pulumi.aws.appmesh.Route;
/// import com.pulumi.aws.appmesh.RouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteMatchArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionArgs;
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
/// var serviceb = new Route("serviceb", RouteArgs.builder()
/// .name("serviceB-route")
/// .meshName(simple.id())
/// .virtualRouterName(servicebAwsAppmeshVirtualRouter.name())
/// .spec(RouteSpecArgs.builder()
/// .httpRoute(RouteSpecHttpRouteArgs.builder()
/// .match(RouteSpecHttpRouteMatchArgs.builder()
/// .prefix("/")
/// .build())
/// .action(RouteSpecHttpRouteActionArgs.builder()
/// .weightedTargets(
/// RouteSpecHttpRouteActionWeightedTargetArgs.builder()
/// .virtualNode(serviceb1.name())
/// .weight(90)
/// .build(),
/// RouteSpecHttpRouteActionWeightedTargetArgs.builder()
/// .virtualNode(serviceb2.name())
/// .weight(10)
/// .build())
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
/// type: aws:appmesh:Route
/// properties:
/// name: serviceB-route
/// meshName: ${simple.id}
/// virtualRouterName: ${servicebAwsAppmeshVirtualRouter.name}
/// spec:
/// httpRoute:
/// match:
/// prefix: /
/// action:
/// weightedTargets:
/// - virtualNode: ${serviceb1.name}
/// weight: 90
/// - virtualNode: ${serviceb2.name}
/// weight: 10
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### HTTP Header Routing
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.Route("serviceb", {
/// name: "serviceB-route",
/// meshName: simple.id,
/// virtualRouterName: servicebAwsAppmeshVirtualRouter.name,
/// spec: {
/// httpRoute: {
/// match: {
/// method: "POST",
/// prefix: "/",
/// scheme: "https",
/// headers: [{
/// name: "clientRequestId",
/// match: {
/// prefix: "123",
/// },
/// }],
/// },
/// action: {
/// weightedTargets: [{
/// virtualNode: servicebAwsAppmeshVirtualNode.name,
/// weight: 100,
/// }],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.Route("serviceb",
/// name="serviceB-route",
/// mesh_name=simple["id"],
/// virtual_router_name=serviceb_aws_appmesh_virtual_router["name"],
/// spec={
/// "http_route": {
/// "match": {
/// "method": "POST",
/// "prefix": "/",
/// "scheme": "https",
/// "headers": [{
/// "name": "clientRequestId",
/// "match": {
/// "prefix": "123",
/// },
/// }],
/// },
/// "action": {
/// "weighted_targets": [{
/// "virtual_node": serviceb_aws_appmesh_virtual_node["name"],
/// "weight": 100,
/// }],
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
/// var serviceb = new Aws.AppMesh.Route("serviceb", new()
/// {
/// Name = "serviceB-route",
/// MeshName = simple.Id,
/// VirtualRouterName = servicebAwsAppmeshVirtualRouter.Name,
/// Spec = new Aws.AppMesh.Inputs.RouteSpecArgs
/// {
/// HttpRoute = new Aws.AppMesh.Inputs.RouteSpecHttpRouteArgs
/// {
/// Match = new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchArgs
/// {
/// Method = "POST",
/// Prefix = "/",
/// Scheme = "https",
/// Headers = new[]
/// {
/// new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchHeaderArgs
/// {
/// Name = "clientRequestId",
/// Match = new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchHeaderMatchArgs
/// {
/// Prefix = "123",
/// },
/// },
/// },
/// },
/// Action = new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionArgs
/// {
/// WeightedTargets = new[]
/// {
/// new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionWeightedTargetArgs
/// {
/// VirtualNode = servicebAwsAppmeshVirtualNode.Name,
/// Weight = 100,
/// },
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
/// _, err := appmesh.NewRoute(ctx, "serviceb", &appmesh.RouteArgs{
/// Name:              pulumi.String("serviceB-route"),
/// MeshName:          pulumi.Any(simple.Id),
/// VirtualRouterName: pulumi.Any(servicebAwsAppmeshVirtualRouter.Name),
/// Spec: &appmesh.RouteSpecArgs{
/// HttpRoute: &appmesh.RouteSpecHttpRouteArgs{
/// Match: &appmesh.RouteSpecHttpRouteMatchArgs{
/// Method: pulumi.String("POST"),
/// Prefix: pulumi.String("/"),
/// Scheme: pulumi.String("https"),
/// Headers: appmesh.RouteSpecHttpRouteMatchHeaderArray{
/// &appmesh.RouteSpecHttpRouteMatchHeaderArgs{
/// Name: pulumi.String("clientRequestId"),
/// Match: &appmesh.RouteSpecHttpRouteMatchHeaderMatchArgs{
/// Prefix: pulumi.String("123"),
/// },
/// },
/// },
/// },
/// Action: &appmesh.RouteSpecHttpRouteActionArgs{
/// WeightedTargets: appmesh.RouteSpecHttpRouteActionWeightedTargetArray{
/// &appmesh.RouteSpecHttpRouteActionWeightedTargetArgs{
/// VirtualNode: pulumi.Any(servicebAwsAppmeshVirtualNode.Name),
/// Weight:      pulumi.Int(100),
/// },
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
/// import com.pulumi.aws.appmesh.Route;
/// import com.pulumi.aws.appmesh.RouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteMatchArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionArgs;
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
/// var serviceb = new Route("serviceb", RouteArgs.builder()
/// .name("serviceB-route")
/// .meshName(simple.id())
/// .virtualRouterName(servicebAwsAppmeshVirtualRouter.name())
/// .spec(RouteSpecArgs.builder()
/// .httpRoute(RouteSpecHttpRouteArgs.builder()
/// .match(RouteSpecHttpRouteMatchArgs.builder()
/// .method("POST")
/// .prefix("/")
/// .scheme("https")
/// .headers(RouteSpecHttpRouteMatchHeaderArgs.builder()
/// .name("clientRequestId")
/// .match(RouteSpecHttpRouteMatchHeaderMatchArgs.builder()
/// .prefix("123")
/// .build())
/// .build())
/// .build())
/// .action(RouteSpecHttpRouteActionArgs.builder()
/// .weightedTargets(RouteSpecHttpRouteActionWeightedTargetArgs.builder()
/// .virtualNode(servicebAwsAppmeshVirtualNode.name())
/// .weight(100)
/// .build())
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
/// type: aws:appmesh:Route
/// properties:
/// name: serviceB-route
/// meshName: ${simple.id}
/// virtualRouterName: ${servicebAwsAppmeshVirtualRouter.name}
/// spec:
/// httpRoute:
/// match:
/// method: POST
/// prefix: /
/// scheme: https
/// headers:
/// - name: clientRequestId
/// match:
/// prefix: '123'
/// action:
/// weightedTargets:
/// - virtualNode: ${servicebAwsAppmeshVirtualNode.name}
/// weight: 100
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Retry Policy
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.Route("serviceb", {
/// name: "serviceB-route",
/// meshName: simple.id,
/// virtualRouterName: servicebAwsAppmeshVirtualRouter.name,
/// spec: {
/// httpRoute: {
/// match: {
/// prefix: "/",
/// },
/// retryPolicy: {
/// httpRetryEvents: ["server-error"],
/// maxRetries: 1,
/// perRetryTimeout: {
/// unit: "s",
/// value: 15,
/// },
/// },
/// action: {
/// weightedTargets: [{
/// virtualNode: servicebAwsAppmeshVirtualNode.name,
/// weight: 100,
/// }],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.Route("serviceb",
/// name="serviceB-route",
/// mesh_name=simple["id"],
/// virtual_router_name=serviceb_aws_appmesh_virtual_router["name"],
/// spec={
/// "http_route": {
/// "match": {
/// "prefix": "/",
/// },
/// "retry_policy": {
/// "http_retry_events": ["server-error"],
/// "max_retries": 1,
/// "per_retry_timeout": {
/// "unit": "s",
/// "value": 15,
/// },
/// },
/// "action": {
/// "weighted_targets": [{
/// "virtual_node": serviceb_aws_appmesh_virtual_node["name"],
/// "weight": 100,
/// }],
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
/// var serviceb = new Aws.AppMesh.Route("serviceb", new()
/// {
/// Name = "serviceB-route",
/// MeshName = simple.Id,
/// VirtualRouterName = servicebAwsAppmeshVirtualRouter.Name,
/// Spec = new Aws.AppMesh.Inputs.RouteSpecArgs
/// {
/// HttpRoute = new Aws.AppMesh.Inputs.RouteSpecHttpRouteArgs
/// {
/// Match = new Aws.AppMesh.Inputs.RouteSpecHttpRouteMatchArgs
/// {
/// Prefix = "/",
/// },
/// RetryPolicy = new Aws.AppMesh.Inputs.RouteSpecHttpRouteRetryPolicyArgs
/// {
/// HttpRetryEvents = new[]
/// {
/// "server-error",
/// },
/// MaxRetries = 1,
/// PerRetryTimeout = new Aws.AppMesh.Inputs.RouteSpecHttpRouteRetryPolicyPerRetryTimeoutArgs
/// {
/// Unit = "s",
/// Value = 15,
/// },
/// },
/// Action = new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionArgs
/// {
/// WeightedTargets = new[]
/// {
/// new Aws.AppMesh.Inputs.RouteSpecHttpRouteActionWeightedTargetArgs
/// {
/// VirtualNode = servicebAwsAppmeshVirtualNode.Name,
/// Weight = 100,
/// },
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
/// _, err := appmesh.NewRoute(ctx, "serviceb", &appmesh.RouteArgs{
/// Name:              pulumi.String("serviceB-route"),
/// MeshName:          pulumi.Any(simple.Id),
/// VirtualRouterName: pulumi.Any(servicebAwsAppmeshVirtualRouter.Name),
/// Spec: &appmesh.RouteSpecArgs{
/// HttpRoute: &appmesh.RouteSpecHttpRouteArgs{
/// Match: &appmesh.RouteSpecHttpRouteMatchArgs{
/// Prefix: pulumi.String("/"),
/// },
/// RetryPolicy: &appmesh.RouteSpecHttpRouteRetryPolicyArgs{
/// HttpRetryEvents: pulumi.StringArray{
/// pulumi.String("server-error"),
/// },
/// MaxRetries: pulumi.Int(1),
/// PerRetryTimeout: &appmesh.RouteSpecHttpRouteRetryPolicyPerRetryTimeoutArgs{
/// Unit:  pulumi.String("s"),
/// Value: pulumi.Int(15),
/// },
/// },
/// Action: &appmesh.RouteSpecHttpRouteActionArgs{
/// WeightedTargets: appmesh.RouteSpecHttpRouteActionWeightedTargetArray{
/// &appmesh.RouteSpecHttpRouteActionWeightedTargetArgs{
/// VirtualNode: pulumi.Any(servicebAwsAppmeshVirtualNode.Name),
/// Weight:      pulumi.Int(100),
/// },
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
/// import com.pulumi.aws.appmesh.Route;
/// import com.pulumi.aws.appmesh.RouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteMatchArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteRetryPolicyArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteRetryPolicyPerRetryTimeoutArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecHttpRouteActionArgs;
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
/// var serviceb = new Route("serviceb", RouteArgs.builder()
/// .name("serviceB-route")
/// .meshName(simple.id())
/// .virtualRouterName(servicebAwsAppmeshVirtualRouter.name())
/// .spec(RouteSpecArgs.builder()
/// .httpRoute(RouteSpecHttpRouteArgs.builder()
/// .match(RouteSpecHttpRouteMatchArgs.builder()
/// .prefix("/")
/// .build())
/// .retryPolicy(RouteSpecHttpRouteRetryPolicyArgs.builder()
/// .httpRetryEvents("server-error")
/// .maxRetries(1)
/// .perRetryTimeout(RouteSpecHttpRouteRetryPolicyPerRetryTimeoutArgs.builder()
/// .unit("s")
/// .value(15)
/// .build())
/// .build())
/// .action(RouteSpecHttpRouteActionArgs.builder()
/// .weightedTargets(RouteSpecHttpRouteActionWeightedTargetArgs.builder()
/// .virtualNode(servicebAwsAppmeshVirtualNode.name())
/// .weight(100)
/// .build())
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
/// type: aws:appmesh:Route
/// properties:
/// name: serviceB-route
/// meshName: ${simple.id}
/// virtualRouterName: ${servicebAwsAppmeshVirtualRouter.name}
/// spec:
/// httpRoute:
/// match:
/// prefix: /
/// retryPolicy:
/// httpRetryEvents:
/// - server-error
/// maxRetries: 1
/// perRetryTimeout:
/// unit: s
/// value: 15
/// action:
/// weightedTargets:
/// - virtualNode: ${servicebAwsAppmeshVirtualNode.name}
/// weight: 100
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### TCP Routing
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceb = new aws.appmesh.Route("serviceb", {
/// name: "serviceB-route",
/// meshName: simple.id,
/// virtualRouterName: servicebAwsAppmeshVirtualRouter.name,
/// spec: {
/// tcpRoute: {
/// action: {
/// weightedTargets: [{
/// virtualNode: serviceb1.name,
/// weight: 100,
/// }],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// serviceb = aws.appmesh.Route("serviceb",
/// name="serviceB-route",
/// mesh_name=simple["id"],
/// virtual_router_name=serviceb_aws_appmesh_virtual_router["name"],
/// spec={
/// "tcp_route": {
/// "action": {
/// "weighted_targets": [{
/// "virtual_node": serviceb1["name"],
/// "weight": 100,
/// }],
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
/// var serviceb = new Aws.AppMesh.Route("serviceb", new()
/// {
/// Name = "serviceB-route",
/// MeshName = simple.Id,
/// VirtualRouterName = servicebAwsAppmeshVirtualRouter.Name,
/// Spec = new Aws.AppMesh.Inputs.RouteSpecArgs
/// {
/// TcpRoute = new Aws.AppMesh.Inputs.RouteSpecTcpRouteArgs
/// {
/// Action = new Aws.AppMesh.Inputs.RouteSpecTcpRouteActionArgs
/// {
/// WeightedTargets = new[]
/// {
/// new Aws.AppMesh.Inputs.RouteSpecTcpRouteActionWeightedTargetArgs
/// {
/// VirtualNode = serviceb1.Name,
/// Weight = 100,
/// },
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
/// _, err := appmesh.NewRoute(ctx, "serviceb", &appmesh.RouteArgs{
/// Name:              pulumi.String("serviceB-route"),
/// MeshName:          pulumi.Any(simple.Id),
/// VirtualRouterName: pulumi.Any(servicebAwsAppmeshVirtualRouter.Name),
/// Spec: &appmesh.RouteSpecArgs{
/// TcpRoute: &appmesh.RouteSpecTcpRouteArgs{
/// Action: &appmesh.RouteSpecTcpRouteActionArgs{
/// WeightedTargets: appmesh.RouteSpecTcpRouteActionWeightedTargetArray{
/// &appmesh.RouteSpecTcpRouteActionWeightedTargetArgs{
/// VirtualNode: pulumi.Any(serviceb1.Name),
/// Weight:      pulumi.Int(100),
/// },
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
/// import com.pulumi.aws.appmesh.Route;
/// import com.pulumi.aws.appmesh.RouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecTcpRouteArgs;
/// import com.pulumi.aws.appmesh.inputs.RouteSpecTcpRouteActionArgs;
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
/// var serviceb = new Route("serviceb", RouteArgs.builder()
/// .name("serviceB-route")
/// .meshName(simple.id())
/// .virtualRouterName(servicebAwsAppmeshVirtualRouter.name())
/// .spec(RouteSpecArgs.builder()
/// .tcpRoute(RouteSpecTcpRouteArgs.builder()
/// .action(RouteSpecTcpRouteActionArgs.builder()
/// .weightedTargets(RouteSpecTcpRouteActionWeightedTargetArgs.builder()
/// .virtualNode(serviceb1.name())
/// .weight(100)
/// .build())
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
/// type: aws:appmesh:Route
/// properties:
/// name: serviceB-route
/// meshName: ${simple.id}
/// virtualRouterName: ${servicebAwsAppmeshVirtualRouter.name}
/// spec:
/// tcpRoute:
/// action:
/// weightedTargets:
/// - virtualNode: ${serviceb1.name}
/// weight: 100
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import App Mesh virtual routes using <span pulumi-lang-nodejs="`meshName`" pulumi-lang-dotnet="`MeshName`" pulumi-lang-go="`meshName`" pulumi-lang-python="`mesh_name`" pulumi-lang-yaml="`meshName`" pulumi-lang-java="`meshName`">`mesh_name`</span> and <span pulumi-lang-nodejs="`virtualRouterName`" pulumi-lang-dotnet="`VirtualRouterName`" pulumi-lang-go="`virtualRouterName`" pulumi-lang-python="`virtual_router_name`" pulumi-lang-yaml="`virtualRouterName`" pulumi-lang-java="`virtualRouterName`">`virtual_router_name`</span> together with the route's <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:appmesh/route:Route serviceb simpleapp/serviceB/serviceB-route
/// ```
class Route2 extends CustomResource {
  /// ARN of the route.
  late final Output<String> arn;

  /// Creation date of the route.
  late final Output<String> createdDate;

  /// Last update date of the route.
  late final Output<String> lastUpdatedDate;

  /// Name of the service mesh in which to create the route. Must be between 1 and 255 characters in length.
  late final Output<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> meshOwner;

  /// Name to use for the route. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource owner's AWS account ID.
  late final Output<String> resourceOwner;

  /// Route specification to apply.
  late final Output<RouteSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name of the virtual router in which to create the route. Must be between 1 and 255 characters in length.
  late final Output<String> virtualRouterName;

  Route2(
    String name, {
    RouteArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appmesh/route:Route',
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
    this.spec = Output.createUnknown<RouteSpec>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.virtualRouterName = Output.createUnknown<String>();
  }
}
