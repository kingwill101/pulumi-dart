import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_peer_args.dart';
import 'route_server_peer_bgp_options.dart';
import 'route_server_peer_state.dart';
import 'route_server_peer_timeouts.dart';

/// Provides a resource for managing a VPC (Virtual Private Cloud) Route Server Peer.
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
/// const test = new aws.vpc.RouteServerPeer("test", {
///     routeServerEndpointId: example.routeServerEndpointId,
///     peerAddress: "10.0.1.250",
///     bgpOptions: {
///         peerAsn: 65200,
///     },
///     tags: {
///         Name: "Appliance 1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpc.RouteServerPeer("test",
///     route_server_endpoint_id=example["routeServerEndpointId"],
///     peer_address="10.0.1.250",
///     bgp_options={
///         "peer_asn": 65200,
///     },
///     tags={
///         "Name": "Appliance 1",
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
///     var test = new Aws.Vpc.RouteServerPeer("test", new()
///     {
///         RouteServerEndpointId = example.RouteServerEndpointId,
///         PeerAddress = "10.0.1.250",
///         BgpOptions = new Aws.Vpc.Inputs.RouteServerPeerBgpOptionsArgs
///         {
///             PeerAsn = 65200,
///         },
///         Tags =
///         {
///             { "Name", "Appliance 1" },
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
/// 		_, err := vpc.NewRouteServerPeer(ctx, "test", &vpc.RouteServerPeerArgs{
/// 			RouteServerEndpointId: pulumi.Any(example.RouteServerEndpointId),
/// 			PeerAddress:           pulumi.String("10.0.1.250"),
/// 			BgpOptions: &vpc.RouteServerPeerBgpOptionsArgs{
/// 				PeerAsn: pulumi.Int(65200),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Appliance 1"),
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
/// import com.pulumi.aws.vpc.RouteServerPeer;
/// import com.pulumi.aws.vpc.RouteServerPeerArgs;
/// import com.pulumi.aws.vpc.inputs.RouteServerPeerBgpOptionsArgs;
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
///         var test = new RouteServerPeer("test", RouteServerPeerArgs.builder()
///             .routeServerEndpointId(example.routeServerEndpointId())
///             .peerAddress("10.0.1.250")
///             .bgpOptions(RouteServerPeerBgpOptionsArgs.builder()
///                 .peerAsn(65200)
///                 .build())
///             .tags(Map.of("Name", "Appliance 1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:vpc:RouteServerPeer
///     properties:
///       routeServerEndpointId: ${example.routeServerEndpointId}
///       peerAddress: 10.0.1.250
///       bgpOptions:
///         peerAsn: 65200
///       tags:
///         Name: Appliance 1
/// ```
///
///
/// ### Complete Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.vpc.RouteServer("test", {
///     amazonSideAsn: 4294967294,
///     tags: {
///         Name: "Test",
///     },
/// });
/// const testVpcRouteServerAssociation = new aws.index.VpcRouteServerAssociation("test", {
///     routeServerId: test.routeServerId,
///     vpcId: testAwsVpc.id,
/// });
/// const testRouteServerEndpoint = new aws.vpc.RouteServerEndpoint("test", {
///     routeServerId: test.routeServerId,
///     subnetId: testAwsSubnet.id,
///     tags: {
///         Name: "Test Endpoint",
///     },
/// }, {
///     dependsOn: [testVpcRouteServerAssociation],
/// });
/// const testRouteServerPropagation = new aws.vpc.RouteServerPropagation("test", {
///     routeServerId: test.routeServerId,
///     routeTableId: testAwsRouteTable.id,
/// }, {
///     dependsOn: [testVpcRouteServerAssociation],
/// });
/// const testRouteServerPeer = new aws.vpc.RouteServerPeer("test", {
///     routeServerEndpointId: testRouteServerEndpoint.routeServerEndpointId,
///     peerAddress: "10.0.1.250",
///     bgpOptions: {
///         peerAsn: 65000,
///         peerLivenessDetection: "bgp-keepalive",
///     },
///     tags: {
///         Name: "Test Appliance",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpc.RouteServer("test",
///     amazon_side_asn=4294967294,
///     tags={
///         "Name": "Test",
///     })
/// test_vpc_route_server_association = aws.index.VpcRouteServerAssociation("test",
///     route_server_id=test.route_server_id,
///     vpc_id=test_aws_vpc.id)
/// test_route_server_endpoint = aws.vpc.RouteServerEndpoint("test",
///     route_server_id=test.route_server_id,
///     subnet_id=test_aws_subnet["id"],
///     tags={
///         "Name": "Test Endpoint",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[test_vpc_route_server_association]))
/// test_route_server_propagation = aws.vpc.RouteServerPropagation("test",
///     route_server_id=test.route_server_id,
///     route_table_id=test_aws_route_table["id"],
///     opts = pulumi.ResourceOptions(depends_on=[test_vpc_route_server_association]))
/// test_route_server_peer = aws.vpc.RouteServerPeer("test",
///     route_server_endpoint_id=test_route_server_endpoint.route_server_endpoint_id,
///     peer_address="10.0.1.250",
///     bgp_options={
///         "peer_asn": 65000,
///         "peer_liveness_detection": "bgp-keepalive",
///     },
///     tags={
///         "Name": "Test Appliance",
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
///         AmazonSideAsn = 4294967294,
///         Tags =
///         {
///             { "Name", "Test" },
///         },
///     });
///
///     var testVpcRouteServerAssociation = new Aws.Index.VpcRouteServerAssociation("test", new()
///     {
///         RouteServerId = test.RouteServerId,
///         VpcId = testAwsVpc.Id,
///     });
///
///     var testRouteServerEndpoint = new Aws.Vpc.RouteServerEndpoint("test", new()
///     {
///         RouteServerId = test.RouteServerId,
///         SubnetId = testAwsSubnet.Id,
///         Tags =
///         {
///             { "Name", "Test Endpoint" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testVpcRouteServerAssociation,
///         },
///     });
///
///     var testRouteServerPropagation = new Aws.Vpc.RouteServerPropagation("test", new()
///     {
///         RouteServerId = test.RouteServerId,
///         RouteTableId = testAwsRouteTable.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testVpcRouteServerAssociation,
///         },
///     });
///
///     var testRouteServerPeer = new Aws.Vpc.RouteServerPeer("test", new()
///     {
///         RouteServerEndpointId = testRouteServerEndpoint.RouteServerEndpointId,
///         PeerAddress = "10.0.1.250",
///         BgpOptions = new Aws.Vpc.Inputs.RouteServerPeerBgpOptionsArgs
///         {
///             PeerAsn = 65000,
///             PeerLivenessDetection = "bgp-keepalive",
///         },
///         Tags =
///         {
///             { "Name", "Test Appliance" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := vpc.NewRouteServer(ctx, "test", &vpc.RouteServerArgs{
/// 			AmazonSideAsn: pulumi.Int(4294967294),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVpcRouteServerAssociation, err := aws.NewVpcRouteServerAssociation(ctx, "test", &aws.VpcRouteServerAssociationArgs{
/// 			RouteServerId: test.RouteServerId,
/// 			VpcId:         testAwsVpc.Id,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testRouteServerEndpoint, err := vpc.NewRouteServerEndpoint(ctx, "test", &vpc.RouteServerEndpointArgs{
/// 			RouteServerId: test.RouteServerId,
/// 			SubnetId:      pulumi.Any(testAwsSubnet.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Test Endpoint"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testVpcRouteServerAssociation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewRouteServerPropagation(ctx, "test", &vpc.RouteServerPropagationArgs{
/// 			RouteServerId: test.RouteServerId,
/// 			RouteTableId:  pulumi.Any(testAwsRouteTable.Id),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testVpcRouteServerAssociation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewRouteServerPeer(ctx, "test", &vpc.RouteServerPeerArgs{
/// 			RouteServerEndpointId: testRouteServerEndpoint.RouteServerEndpointId,
/// 			PeerAddress:           pulumi.String("10.0.1.250"),
/// 			BgpOptions: &vpc.RouteServerPeerBgpOptionsArgs{
/// 				PeerAsn:               pulumi.Int(65000),
/// 				PeerLivenessDetection: pulumi.String("bgp-keepalive"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Test Appliance"),
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
/// import com.pulumi.aws.VpcRouteServerAssociation;
/// import com.pulumi.aws.VpcRouteServerAssociationArgs;
/// import com.pulumi.aws.vpc.RouteServerEndpoint;
/// import com.pulumi.aws.vpc.RouteServerEndpointArgs;
/// import com.pulumi.aws.vpc.RouteServerPropagation;
/// import com.pulumi.aws.vpc.RouteServerPropagationArgs;
/// import com.pulumi.aws.vpc.RouteServerPeer;
/// import com.pulumi.aws.vpc.RouteServerPeerArgs;
/// import com.pulumi.aws.vpc.inputs.RouteServerPeerBgpOptionsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .amazonSideAsn(4294967294)
///             .tags(Map.of("Name", "Test"))
///             .build());
///
///         var testVpcRouteServerAssociation = new VpcRouteServerAssociation("testVpcRouteServerAssociation", VpcRouteServerAssociationArgs.builder()
///             .routeServerId(test.routeServerId())
///             .vpcId(testAwsVpc.id())
///             .build());
///
///         var testRouteServerEndpoint = new RouteServerEndpoint("testRouteServerEndpoint", RouteServerEndpointArgs.builder()
///             .routeServerId(test.routeServerId())
///             .subnetId(testAwsSubnet.id())
///             .tags(Map.of("Name", "Test Endpoint"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testVpcRouteServerAssociation)
///                 .build());
///
///         var testRouteServerPropagation = new RouteServerPropagation("testRouteServerPropagation", RouteServerPropagationArgs.builder()
///             .routeServerId(test.routeServerId())
///             .routeTableId(testAwsRouteTable.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testVpcRouteServerAssociation)
///                 .build());
///
///         var testRouteServerPeer = new RouteServerPeer("testRouteServerPeer", RouteServerPeerArgs.builder()
///             .routeServerEndpointId(testRouteServerEndpoint.routeServerEndpointId())
///             .peerAddress("10.0.1.250")
///             .bgpOptions(RouteServerPeerBgpOptionsArgs.builder()
///                 .peerAsn(65000)
///                 .peerLivenessDetection("bgp-keepalive")
///                 .build())
///             .tags(Map.of("Name", "Test Appliance"))
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
///       amazonSideAsn: 4.294967294e+09
///       tags:
///         Name: Test
///   testVpcRouteServerAssociation:
///     type: aws:VpcRouteServerAssociation
///     name: test
///     properties:
///       routeServerId: ${test.routeServerId}
///       vpcId: ${testAwsVpc.id}
///   testRouteServerEndpoint:
///     type: aws:vpc:RouteServerEndpoint
///     name: test
///     properties:
///       routeServerId: ${test.routeServerId}
///       subnetId: ${testAwsSubnet.id}
///       tags:
///         Name: Test Endpoint
///     options:
///       dependsOn:
///         - ${testVpcRouteServerAssociation}
///   testRouteServerPropagation:
///     type: aws:vpc:RouteServerPropagation
///     name: test
///     properties:
///       routeServerId: ${test.routeServerId}
///       routeTableId: ${testAwsRouteTable.id}
///     options:
///       dependsOn:
///         - ${testVpcRouteServerAssociation}
///   testRouteServerPeer:
///     type: aws:vpc:RouteServerPeer
///     name: test
///     properties:
///       routeServerEndpointId: ${testRouteServerEndpoint.routeServerEndpointId}
///       peerAddress: 10.0.1.250
///       bgpOptions:
///         peerAsn: 65000
///         peerLivenessDetection: bgp-keepalive
///       tags:
///         Name: Test Appliance
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC (Virtual Private Cloud) Route Server using the `route_server_peer_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/routeServerPeer:RouteServerPeer example rsp-12345678
/// ```
class RouteServerPeer extends pulumi.CustomResource {
  /// The ARN of the route server peer.
  late final pulumi.Output<String> arn;
  /// The BGP options for the peer, including ASN (Autonomous System Number) and BFD (Bidrectional Forwarding Detection) settings. Configuration block with BGP Options configuration Detailed below
  late final pulumi.Output<RouteServerPeerBgpOptions> bgpOptions;
  /// The IP address of the Elastic network interface for the route server endpoint.
  late final pulumi.Output<String> endpointEniAddress;
  /// The ID of the Elastic network interface for the route server endpoint.
  late final pulumi.Output<String> endpointEniId;
  /// The IPv4 address of the peer device.
  late final pulumi.Output<String> peerAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the route server endpoint for which to create a peer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> routeServerEndpointId;
  /// The ID of the route server associated with this peer.
  late final pulumi.Output<String> routeServerId;
  /// The unique identifier of the route server peer.
  late final pulumi.Output<String> routeServerPeerId;
  /// The ID of the subnet containing the route server peer.
  late final pulumi.Output<String> subnetId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<RouteServerPeerTimeouts?> timeouts;
  /// The ID of the VPC containing the route server peer.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [RouteServerPeer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteServerPeer]. {@macro pulumi_vpc_route_server_peer_route_server_peer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteServerPeer(
    String name, {
    RouteServerPeerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerPeer:RouteServerPeer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bgpOptions = registerOutput<RouteServerPeerBgpOptions>('bgpOptions');
    this.endpointEniAddress = registerOutput<String>('endpointEniAddress');
    this.endpointEniId = registerOutput<String>('endpointEniId');
    this.peerAddress = registerOutput<String>('peerAddress');
    this.region = registerOutput<String>('region');
    this.routeServerEndpointId = registerOutput<String>('routeServerEndpointId');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.routeServerPeerId = registerOutput<String>('routeServerPeerId');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<RouteServerPeerTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [RouteServerPeer] resource's state with the given [name] and [id].
  static RouteServerPeer get(
    String name,
    pulumi.Input<String> id, {
    RouteServerPeerState? state,
  }) {
    return RouteServerPeer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteServerPeer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/routeServerPeer:RouteServerPeer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bgpOptions = registerOutput<RouteServerPeerBgpOptions>('bgpOptions');
    this.endpointEniAddress = registerOutput<String>('endpointEniAddress');
    this.endpointEniId = registerOutput<String>('endpointEniId');
    this.peerAddress = registerOutput<String>('peerAddress');
    this.region = registerOutput<String>('region');
    this.routeServerEndpointId = registerOutput<String>('routeServerEndpointId');
    this.routeServerId = registerOutput<String>('routeServerId');
    this.routeServerPeerId = registerOutput<String>('routeServerPeerId');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<RouteServerPeerTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
