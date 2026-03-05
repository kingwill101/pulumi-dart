import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_args.dart';
import 'route_server_state.dart';
import 'route_server_timeouts.dart';

/// Provides a resource for managing a VPC (Virtual Private Cloud) Route Server.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.vpc.RouteServer("test", {
///     amazonSideAsn: 65534,
///     tags: {
///         Name: "Test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpc.RouteServer("test",
///     amazon_side_asn=65534,
///     tags={
///         "Name": "Test",
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
///     var test = new Aws.Vpc.RouteServer("test", new()
///     {
///         AmazonSideAsn = 65534,
///         Tags =
///         {
///             { "Name", "Test" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.NewRouteServer(ctx, "test", &vpc.RouteServerArgs{
/// 			AmazonSideAsn: pulumi.Int(65534),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Test"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new RouteServer("test", RouteServerArgs.builder()
///             .amazonSideAsn(65534)
///             .tags(Map.of("Name", "Test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:vpc:RouteServer
///     properties:
///       amazonSideAsn: 65534
///       tags:
///         Name: Test
/// ```
///
///
/// ### Persist Route and SNS Notification
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.vpc.RouteServer("test", {
///     amazonSideAsn: 65534,
///     persistRoutes: "enable",
///     persistRoutesDuration: 2,
///     snsNotificationsEnabled: true,
///     tags: {
///         Name: "Main Route Server",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpc.RouteServer("test",
///     amazon_side_asn=65534,
///     persist_routes="enable",
///     persist_routes_duration=2,
///     sns_notifications_enabled=True,
///     tags={
///         "Name": "Main Route Server",
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
///     var test = new Aws.Vpc.RouteServer("test", new()
///     {
///         AmazonSideAsn = 65534,
///         PersistRoutes = "enable",
///         PersistRoutesDuration = 2,
///         SnsNotificationsEnabled = true,
///         Tags =
///         {
///             { "Name", "Main Route Server" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.NewRouteServer(ctx, "test", &vpc.RouteServerArgs{
/// 			AmazonSideAsn:           pulumi.Int(65534),
/// 			PersistRoutes:           pulumi.String("enable"),
/// 			PersistRoutesDuration:   pulumi.Int(2),
/// 			SnsNotificationsEnabled: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Main Route Server"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new RouteServer("test", RouteServerArgs.builder()
///             .amazonSideAsn(65534)
///             .persistRoutes("enable")
///             .persistRoutesDuration(2)
///             .snsNotificationsEnabled(true)
///             .tags(Map.of("Name", "Main Route Server"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:vpc:RouteServer
///     properties:
///       amazonSideAsn: 65534
///       persistRoutes: enable
///       persistRoutesDuration: 2
///       snsNotificationsEnabled: true
///       tags:
///         Name: Main Route Server
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC (Virtual Private Cloud) Route Server using the `route_server_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServer:RouteServer example rs-12345678
/// ```
class RouteServer extends pulumi.CustomResource {
  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the appliance. Valid values are from 1 to 4294967295.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> amazonSideAsn;
  /// The ARN of the route server.
  late final pulumi.Output<String> arn;
  /// Indicates whether routes should be persisted after all BGP sessions are terminated. Valid values are `enable`, `disable`, `reset`
  late final pulumi.Output<String> persistRoutes;
  /// The number of minutes a route server will wait after BGP is re-established to unpersist the routes in the FIB and RIB. Value must be in the range of 1-5. Required if `persist_routes` is enabled.
  late final pulumi.Output<int?> persistRoutesDuration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The unique identifier of the route server.
  late final pulumi.Output<String> routeServerId;
  /// Indicates whether SNS notifications should be enabled for route server events. Enabling SNS notifications persists BGP status changes to an SNS topic provisioned by AWS`.
  late final pulumi.Output<bool> snsNotificationsEnabled;
  /// The ARN of the SNS topic where notifications are published.
  late final pulumi.Output<String> snsTopicArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<RouteServerTimeouts?> timeouts;

  /// Creates a new [RouteServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteServer]. {@macro pulumi_vpc_route_server_route_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteServer(
    String name, {
    RouteServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServer:RouteServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amazonSideAsn = registerOutput<int>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    persistRoutes = registerOutput<String>('persistRoutes');
    persistRoutesDuration = registerOutput<int?>('persistRoutesDuration');
    region = registerOutput<String>('region');
    routeServerId = registerOutput<String>('routeServerId');
    snsNotificationsEnabled = registerOutput<bool>('snsNotificationsEnabled');
    snsTopicArn = registerOutput<String>('snsTopicArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<RouteServerTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteServerTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [RouteServer] resource's state with the given [name] and [id].
  static RouteServer get(
    String name,
    pulumi.Input<String> id, {
    RouteServerState? state,
  }) {
    return RouteServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServer:RouteServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amazonSideAsn = registerOutput<int>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    persistRoutes = registerOutput<String>('persistRoutes');
    persistRoutesDuration = registerOutput<int?>('persistRoutesDuration');
    region = registerOutput<String>('region');
    routeServerId = registerOutput<String>('routeServerId');
    snsNotificationsEnabled = registerOutput<bool>('snsNotificationsEnabled');
    snsTopicArn = registerOutput<String>('snsTopicArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<RouteServerTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteServerTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
