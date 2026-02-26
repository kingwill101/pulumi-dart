import 'package:pulumi/pulumi.dart';
import '../route_server_timeouts/route_server_timeouts.dart';
import 'route_server_args.dart';

/// Provides a resource for managing a VPC (Virtual Private Cloud) Route Server.
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
/// const test = new aws.vpc.RouteServer("test", {
/// amazonSideAsn: 65534,
/// tags: {
/// Name: "Test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpc.RouteServer("test",
/// amazon_side_asn=65534,
/// tags={
/// "Name": "Test",
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
/// var test = new Aws.Vpc.RouteServer("test", new()
/// {
/// AmazonSideAsn = 65534,
/// Tags =
/// {
/// { "Name", "Test" },
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
/// _, err := vpc.NewRouteServer(ctx, "test", &vpc.RouteServerArgs{
/// AmazonSideAsn: pulumi.Int(65534),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Test"),
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
/// import com.pulumi.aws.vpc.RouteServer;
/// import com.pulumi.aws.vpc.RouteServerArgs;
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
/// var test = new RouteServer("test", RouteServerArgs.builder()
/// .amazonSideAsn(65534)
/// .tags(Map.of("Name", "Test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:vpc:RouteServer
/// properties:
/// amazonSideAsn: 65534
/// tags:
/// Name: Test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Persist Route and SNS Notification
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.vpc.RouteServer("test", {
/// amazonSideAsn: 65534,
/// persistRoutes: "enable",
/// persistRoutesDuration: 2,
/// snsNotificationsEnabled: true,
/// tags: {
/// Name: "Main Route Server",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpc.RouteServer("test",
/// amazon_side_asn=65534,
/// persist_routes="enable",
/// persist_routes_duration=2,
/// sns_notifications_enabled=True,
/// tags={
/// "Name": "Main Route Server",
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
/// var test = new Aws.Vpc.RouteServer("test", new()
/// {
/// AmazonSideAsn = 65534,
/// PersistRoutes = "enable",
/// PersistRoutesDuration = 2,
/// SnsNotificationsEnabled = true,
/// Tags =
/// {
/// { "Name", "Main Route Server" },
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
/// _, err := vpc.NewRouteServer(ctx, "test", &vpc.RouteServerArgs{
/// AmazonSideAsn:           pulumi.Int(65534),
/// PersistRoutes:           pulumi.String("enable"),
/// PersistRoutesDuration:   pulumi.Int(2),
/// SnsNotificationsEnabled: pulumi.Bool(true),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Main Route Server"),
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
/// import com.pulumi.aws.vpc.RouteServer;
/// import com.pulumi.aws.vpc.RouteServerArgs;
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
/// var test = new RouteServer("test", RouteServerArgs.builder()
/// .amazonSideAsn(65534)
/// .persistRoutes("enable")
/// .persistRoutesDuration(2)
/// .snsNotificationsEnabled(true)
/// .tags(Map.of("Name", "Main Route Server"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:vpc:RouteServer
/// properties:
/// amazonSideAsn: 65534
/// persistRoutes: enable
/// persistRoutesDuration: 2
/// snsNotificationsEnabled: true
/// tags:
/// Name: Main Route Server
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC (Virtual Private Cloud) Route Server using the <span pulumi-lang-nodejs="`routeServerId`" pulumi-lang-dotnet="`RouteServerId`" pulumi-lang-go="`routeServerId`" pulumi-lang-python="`route_server_id`" pulumi-lang-yaml="`routeServerId`" pulumi-lang-java="`routeServerId`">`route_server_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServer:RouteServer example rs-12345678
/// ```
class RouteServer extends CustomResource {
  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  ///
  /// The following arguments are optional:
  late final Output<int> amazonSideAsn;

  /// The ARN of the route server.
  late final Output<String> arn;

  /// Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>, <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`reset`" pulumi-lang-dotnet="`Reset`" pulumi-lang-go="`reset`" pulumi-lang-python="`reset`" pulumi-lang-yaml="`reset`" pulumi-lang-java="`reset`">`reset`</span>
  late final Output<String> persistRoutes;

  /// The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if <span pulumi-lang-nodejs="`persistRoutes`" pulumi-lang-dotnet="`PersistRoutes`" pulumi-lang-go="`persistRoutes`" pulumi-lang-python="`persist_routes`" pulumi-lang-yaml="`persistRoutes`" pulumi-lang-java="`persistRoutes`">`persist_routes`</span> is enabled.
  late final Output<int?> persistRoutesDuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The unique identifier of the route server.
  late final Output<String> routeServerId;

  /// Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  late final Output<bool> snsNotificationsEnabled;

  /// The ARN of the SNS topic where notifications are published.
  late final Output<String> snsTopicArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<RouteServerTimeouts?> timeouts;

  RouteServer(
    String name, {
    RouteServerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServer:RouteServer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amazonSideAsn = registerOutput<int>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.persistRoutes = registerOutput<String>('persistRoutes');
    this.persistRoutesDuration = registerOutput<int?>('persistRoutesDuration');
    this.region = registerOutput<String>('region');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.snsNotificationsEnabled =
        registerOutput<bool>('snsNotificationsEnabled');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<RouteServerTimeouts?>('timeouts');
  }
}
