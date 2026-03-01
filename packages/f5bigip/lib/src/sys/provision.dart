import 'package:pulumi/pulumi.dart' as pulumi;
import 'provision_args.dart';

/// `f5bigip.sys.Provision` Manage BIG-IP module provisioning. This resource will only provision at the standard levels of Dedicated, Nominal, and Minimum.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const gtm = new f5bigip.sys.Provision("gtm", {
///     name: "gtm",
///     cpuRatio: 0,
///     diskRatio: 0,
///     level: "nominal",
///     memoryRatio: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// gtm = f5bigip.sys.Provision("gtm",
///     name="gtm",
///     cpu_ratio=0,
///     disk_ratio=0,
///     level="nominal",
///     memory_ratio=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gtm = new F5BigIP.Sys.Provision("gtm", new()
///     {
///         Name = "gtm",
///         CpuRatio = 0,
///         DiskRatio = 0,
///         Level = "nominal",
///         MemoryRatio = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/sys"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sys.NewProvision(ctx, "gtm", &sys.ProvisionArgs{
/// 			Name:        pulumi.String("gtm"),
/// 			CpuRatio:    pulumi.Int(0),
/// 			DiskRatio:   pulumi.Int(0),
/// 			Level:       pulumi.String("nominal"),
/// 			MemoryRatio: pulumi.Int(0),
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
/// import com.pulumi.f5bigip.sys.Provision;
/// import com.pulumi.f5bigip.sys.ProvisionArgs;
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
///         var gtm = new Provision("gtm", ProvisionArgs.builder()
///             .name("gtm")
///             .cpuRatio(0)
///             .diskRatio(0)
///             .level("nominal")
///             .memoryRatio(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   gtm:
///     type: f5bigip:sys:Provision
///     properties:
///       name: gtm
///       cpuRatio: 0
///       diskRatio: 0
///       level: nominal
///       memoryRatio: 0
/// ```
class Provision extends pulumi.CustomResource {
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  late final pulumi.Output<int?> cpuRatio;
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  late final pulumi.Output<int?> diskRatio;
  late final pulumi.Output<String> fullPath;
  /// Sets the provisioning level for the requested modules. Changing the level for one module may require modifying the level of another module. For example, changing one module to `dedicated` requires setting all others to `none`. Setting the level of a module to `none` means the module is not activated.
  /// default is `nominal`
  /// possible options:
  /// * nominal
  /// * minimum
  /// * none
  /// * dedicated
  late final pulumi.Output<String?> level;
  /// Use this option only when the level option is set to custom.F5 Networks recommends that you do not modify this option. The default value is none
  late final pulumi.Output<int?> memoryRatio;
  /// Name of module to provision in BIG-IP.
  /// possible options:
  /// * afm
  /// * am
  /// * apm
  /// * cgnat
  /// * asm
  /// * avr
  /// * dos
  /// * fps
  /// * gtm
  /// * ilx
  /// * lc
  /// * ltm
  /// * pem
  /// * sslo
  /// * swg
  /// * urldb
  late final pulumi.Output<String> name;

  /// Creates a new [Provision].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Provision]. {@macro pulumi_sys_provision_provision_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Provision(
    String name, {
    ProvisionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:sys/provision:Provision',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cpuRatio = registerOutput<int?>('cpuRatio');
    this.diskRatio = registerOutput<int?>('diskRatio');
    this.fullPath = registerOutput<String>('fullPath');
    this.level = registerOutput<String?>('level');
    this.memoryRatio = registerOutput<int?>('memoryRatio');
    this.name = registerOutput<String>('name');
  }
}
