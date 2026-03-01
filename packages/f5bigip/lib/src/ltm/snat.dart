import 'package:pulumi/pulumi.dart' as pulumi;
import 'snat_args.dart';
import 'snat_origin.dart';

/// `f5bigip.ltm.Snat` Manages a SNAT configuration
///
/// For resources should be named with their `full path`. The full path is the combination of the `partition + name` of the resource.For example `/Common/test-snat`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const test_snat = new f5bigip.ltm.Snat("test-snat", {
///     name: "/Common/test-snat",
///     translation: "/Common/136.1.1.2",
///     sourceport: "preserve",
///     origins: [{
///         name: "0.0.0.0/0",
///     }],
///     vlans: ["/Common/internal"],
///     vlansdisabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_snat = f5bigip.ltm.Snat("test-snat",
///     name="/Common/test-snat",
///     translation="/Common/136.1.1.2",
///     sourceport="preserve",
///     origins=[{
///         "name": "0.0.0.0/0",
///     }],
///     vlans=["/Common/internal"],
///     vlansdisabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_snat = new F5BigIP.Ltm.Snat("test-snat", new()
///     {
///         Name = "/Common/test-snat",
///         Translation = "/Common/136.1.1.2",
///         Sourceport = "preserve",
///         Origins = new[]
///         {
///             new F5BigIP.Ltm.Inputs.SnatOriginArgs
///             {
///                 Name = "0.0.0.0/0",
///             },
///         },
///         Vlans = new[]
///         {
///             "/Common/internal",
///         },
///         Vlansdisabled = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewSnat(ctx, "test-snat", &ltm.SnatArgs{
/// 			Name:        pulumi.String("/Common/test-snat"),
/// 			Translation: pulumi.String("/Common/136.1.1.2"),
/// 			Sourceport:  pulumi.String("preserve"),
/// 			Origins: ltm.SnatOriginArray{
/// 				&ltm.SnatOriginArgs{
/// 					Name: pulumi.String("0.0.0.0/0"),
/// 				},
/// 			},
/// 			Vlans: pulumi.StringArray{
/// 				pulumi.String("/Common/internal"),
/// 			},
/// 			Vlansdisabled: pulumi.Bool(false),
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
/// import com.pulumi.f5bigip.ltm.Snat;
/// import com.pulumi.f5bigip.ltm.SnatArgs;
/// import com.pulumi.f5bigip.ltm.inputs.SnatOriginArgs;
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
///         var test_snat = new Snat("test-snat", SnatArgs.builder()
///             .name("/Common/test-snat")
///             .translation("/Common/136.1.1.2")
///             .sourceport("preserve")
///             .origins(SnatOriginArgs.builder()
///                 .name("0.0.0.0/0")
///                 .build())
///             .vlans("/Common/internal")
///             .vlansdisabled(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-snat:
///     type: f5bigip:ltm:Snat
///     properties:
///       name: /Common/test-snat
///       translation: /Common/136.1.1.2
///       sourceport: preserve
///       origins:
///         - name: 0.0.0.0/0
///       vlans:
///         - /Common/internal
///       vlansdisabled: false
/// ```
class Snat extends pulumi.CustomResource {
  /// Specifies whether to automatically map last hop for pools or not. The default is to use next level's default.
  late final pulumi.Output<String> autolasthop;
  /// Fullpath
  late final pulumi.Output<String?> fullPath;
  /// Enables or disables mirroring of SNAT connections.
  late final pulumi.Output<String> mirror;
  /// Name of the SNAT, name of SNAT should be full path. Full path is the combination of the `partition + SNAT name`,For example `/Common/test-snat`.
  late final pulumi.Output<String> name;
  /// Specifies, for each SNAT that you create, the origin addresses that are to be members of that SNAT. Specify origin addresses by their IP addresses and service ports
  late final pulumi.Output<List<SnatOrigin>> origins;
  /// Partition or path to which the SNAT belongs
  late final pulumi.Output<String?> partition;
  /// Specifies the name of a SNAT pool. You can only use this option when `automap` and `translation` are not used.
  late final pulumi.Output<String?> snatpool;
  /// Specifies how the SNAT object handles the client's source port. The default is `preserve`.
  late final pulumi.Output<String?> sourceport;
  /// Specifies the IP address configured for translation. Note that translated addresses are outside the traffic management system. You can only use this option when `automap` and `snatpool` are not used.
  late final pulumi.Output<String?> translation;
  /// Specifies the available VLANs or tunnels and those for which the SNAT is enabled or disabled.
  late final pulumi.Output<List<String>?> vlans;
  /// Specifies the VLANs or tunnels for which the SNAT is enabled or disabled. The default is `true`, vlandisabled on VLANS specified by `vlans`,if set to `false` vlanEnabled set on VLANS specified by `vlans` .
  late final pulumi.Output<bool?> vlansdisabled;

  /// Creates a new [Snat].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snat]. {@macro pulumi_ltm_snat_snat_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snat(
    String name, {
    SnatArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/snat:Snat',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autolasthop = registerOutput<String>('autolasthop');
    this.fullPath = registerOutput<String?>('fullPath');
    this.mirror = registerOutput<String>('mirror');
    this.name = registerOutput<String>('name');
    this.origins = registerOutput<List<SnatOrigin>>('origins');
    this.partition = registerOutput<String?>('partition');
    this.snatpool = registerOutput<String?>('snatpool');
    this.sourceport = registerOutput<String?>('sourceport');
    this.translation = registerOutput<String?>('translation');
    this.vlans = registerOutput<List<String>?>('vlans');
    this.vlansdisabled = registerOutput<bool?>('vlansdisabled');
  }
}
