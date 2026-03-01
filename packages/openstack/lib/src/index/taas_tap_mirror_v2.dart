import 'package:pulumi/pulumi.dart' as pulumi;
import 'taas_tap_mirror_v2_args.dart';
import 'taas_tap_mirror_v2_directions.dart';

/// Manages a V2 Neutron Tap Mirror resource within OpenStack tap-as-a-service extension.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const tapMirror1 = new openstack.TaasTapMirrorV2("tap_mirror_1", {
///     mirrorType: "erspanv1",
///     portId: "a25290e9-1a54-4c26-a5b3-34458d122acc",
///     remoteIp: "172.18.1.15",
///     directions: {
///         "in": 1000,
///         out: 1001,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// tap_mirror1 = openstack.TaasTapMirrorV2("tap_mirror_1",
///     mirror_type="erspanv1",
///     port_id="a25290e9-1a54-4c26-a5b3-34458d122acc",
///     remote_ip="172.18.1.15",
///     directions={
///         "in_": 1000,
///         "out": 1001,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tapMirror1 = new OpenStack.TaasTapMirrorV2("tap_mirror_1", new()
///     {
///         MirrorType = "erspanv1",
///         PortId = "a25290e9-1a54-4c26-a5b3-34458d122acc",
///         RemoteIp = "172.18.1.15",
///         Directions = new OpenStack.Inputs.TaasTapMirrorV2DirectionsArgs
///         {
///             In = 1000,
///             Out = 1001,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := openstack.NewTaasTapMirrorV2(ctx, "tap_mirror_1", &openstack.TaasTapMirrorV2Args{
/// 			MirrorType: pulumi.String("erspanv1"),
/// 			PortId:     pulumi.String("a25290e9-1a54-4c26-a5b3-34458d122acc"),
/// 			RemoteIp:   pulumi.String("172.18.1.15"),
/// 			Directions: &openstack.TaasTapMirrorV2DirectionsArgs{
/// 				In:  pulumi.Int(1000),
/// 				Out: pulumi.Int(1001),
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
/// import com.pulumi.openstack.TaasTapMirrorV2;
/// import com.pulumi.openstack.TaasTapMirrorV2Args;
/// import com.pulumi.openstack.inputs.TaasTapMirrorV2DirectionsArgs;
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
///         var tapMirror1 = new TaasTapMirrorV2("tapMirror1", TaasTapMirrorV2Args.builder()
///             .mirrorType("erspanv1")
///             .portId("a25290e9-1a54-4c26-a5b3-34458d122acc")
///             .remoteIp("172.18.1.15")
///             .directions(TaasTapMirrorV2DirectionsArgs.builder()
///                 .in(1000)
///                 .out(1001)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tapMirror1:
///     type: openstack:TaasTapMirrorV2
///     name: tap_mirror_1
///     properties:
///       mirrorType: erspanv1
///       portId: a25290e9-1a54-4c26-a5b3-34458d122acc
///       remoteIp: 172.18.1.15
///       directions:
///         in: 1000
///         out: 1001
/// ```
///
///
/// ## Import
///
/// Tap Mirrors can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:index/taasTapMirrorV2:TaasTapMirrorV2 tap_mirror_1 0837b488-f0e2-4689-99b3-e3ed531f9b10
/// ```
class TaasTapMirrorV2 extends pulumi.CustomResource {
  /// The human-readable description for the Tap Mirror.
  /// Changing this updates the description of the existing Tap Mirror.
  late final pulumi.Output<String?> description;
  /// A block declaring the directions to be mirrored and their
  /// identifiers. One block has to be declared with at least one direction. Changing
  /// this creates a new Tap Mirror.
  late final pulumi.Output<TaasTapMirrorV2Directions> directions;
  /// The type of the mirroring, can be `gre` or `erspanv1`.
  /// Changing this creates a new Tap Mirror.
  late final pulumi.Output<String> mirrorType;
  /// The name of the Tap Mirror. Changing this updates the name of
  /// the existing Tap Mirror.
  late final pulumi.Output<String> name;
  /// The Port ID of the Tap Mirror, this will be the source of
  /// the mirrored traffic, and this traffic will be tunneled into the GRE or ERSPAN
  /// v1 tunnel. The tunnel itself is not starting from this port. Changing this
  /// creates a new Tap Mirror.
  late final pulumi.Output<String> portId;
  /// Id of the OpenStack project.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an endpoint group. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// group.
  late final pulumi.Output<String> region;
  /// The remote IP of the Tap Mirror, this will be the remote
  /// end of the GRE or ERSPAN v1 tunnel. Changing this creates a new Tap Mirror.
  late final pulumi.Output<String> remoteIp;
  /// The owner of the Tap Mirror. Required if admin wants to
  /// create a Tap Mirror for another project. Changing this creates a new Tap Mirror.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [TaasTapMirrorV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TaasTapMirrorV2]. {@macro pulumi_index_taas_tap_mirror_v2_taas_tap_mirror_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TaasTapMirrorV2(
    String name, {
    TaasTapMirrorV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:index/taasTapMirrorV2:TaasTapMirrorV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.directions = registerOutput<TaasTapMirrorV2Directions>('directions');
    this.mirrorType = registerOutput<String>('mirrorType');
    this.name = registerOutput<String>('name');
    this.portId = registerOutput<String>('portId');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.remoteIp = registerOutput<String>('remoteIp');
    this.tenantId = registerOutput<String>('tenantId');
  }
}
