import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_fast_l4_args.dart';

/// `f5bigip.ltm.ProfileFastL4` Configures a custom LTM fastL4 profile for use by health checks.
///
/// Resources should be named with their `full path`. The full path is the combination of the `partition + name` of the resource (For example `/Common/my-fastl4profile`) or  `partition + directory + name` of the resource  (example: `/Common/test/my-fastl4profile`)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const profileFastl4 = new f5bigip.ltm.ProfileFastL4("profile_fastl4", {
///     name: "/Common/sjfastl4profile",
///     defaultsFrom: "/Common/fastL4",
///     clientTimeout: 40,
///     explicitflowMigration: "enabled",
///     hardwareSyncookie: "enabled",
///     idleTimeout: "200",
///     iptosToclient: "pass-through",
///     iptosToserver: "pass-through",
///     keepaliveInterval: "disabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// profile_fastl4 = f5bigip.ltm.ProfileFastL4("profile_fastl4",
///     name="/Common/sjfastl4profile",
///     defaults_from="/Common/fastL4",
///     client_timeout=40,
///     explicitflow_migration="enabled",
///     hardware_syncookie="enabled",
///     idle_timeout="200",
///     iptos_toclient="pass-through",
///     iptos_toserver="pass-through",
///     keepalive_interval="disabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profileFastl4 = new F5BigIP.Ltm.ProfileFastL4("profile_fastl4", new()
///     {
///         Name = "/Common/sjfastl4profile",
///         DefaultsFrom = "/Common/fastL4",
///         ClientTimeout = 40,
///         ExplicitflowMigration = "enabled",
///         HardwareSyncookie = "enabled",
///         IdleTimeout = "200",
///         IptosToclient = "pass-through",
///         IptosToserver = "pass-through",
///         KeepaliveInterval = "disabled",
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
/// 		_, err := ltm.NewProfileFastL4(ctx, "profile_fastl4", &ltm.ProfileFastL4Args{
/// 			Name:                  pulumi.String("/Common/sjfastl4profile"),
/// 			DefaultsFrom:          pulumi.String("/Common/fastL4"),
/// 			ClientTimeout:         pulumi.Int(40),
/// 			ExplicitflowMigration: pulumi.String("enabled"),
/// 			HardwareSyncookie:     pulumi.String("enabled"),
/// 			IdleTimeout:           pulumi.String("200"),
/// 			IptosToclient:         pulumi.String("pass-through"),
/// 			IptosToserver:         pulumi.String("pass-through"),
/// 			KeepaliveInterval:     pulumi.String("disabled"),
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
/// import com.pulumi.f5bigip.ltm.ProfileFastL4;
/// import com.pulumi.f5bigip.ltm.ProfileFastL4Args;
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
///         var profileFastl4 = new ProfileFastL4("profileFastl4", ProfileFastL4Args.builder()
///             .name("/Common/sjfastl4profile")
///             .defaultsFrom("/Common/fastL4")
///             .clientTimeout(40)
///             .explicitflowMigration("enabled")
///             .hardwareSyncookie("enabled")
///             .idleTimeout("200")
///             .iptosToclient("pass-through")
///             .iptosToserver("pass-through")
///             .keepaliveInterval("disabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   profileFastl4:
///     type: f5bigip:ltm:ProfileFastL4
///     name: profile_fastl4
///     properties:
///       name: /Common/sjfastl4profile
///       defaultsFrom: /Common/fastL4
///       clientTimeout: 40
///       explicitflowMigration: enabled
///       hardwareSyncookie: enabled
///       idleTimeout: '200'
///       iptosToclient: pass-through
///       iptosToserver: pass-through
///       keepaliveInterval: disabled
/// ```
///
///
/// ## Import
///
/// BIG-IP LTM fastl4 profiles can be imported using the `name`, e.g.
///
/// ```sh
/// $ pulumi import f5bigip:ltm/profileFastL4:ProfileFastL4 test-fastl4 /Common/test-fastl4
/// ```
class ProfileFastL4 extends pulumi.CustomResource {
  /// Specifies late binding client timeout in seconds. This setting specifies the number of seconds allowed for a client to transmit enough data to select a server when late binding is enabled. If it expires timeout-recovery mode will dictate what action to take.
  late final pulumi.Output<int> clientTimeout;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String> defaultsFrom;
  /// Enables or disables late binding explicit flow migration that allows iRules to control when flows move from software to hardware. Explicit flow migration is disabled by default hence BIG-IP automatically migrates flows from software to hardware.
  late final pulumi.Output<String> explicitflowMigration;
  /// Enables or disables hardware SYN cookie support when PVA10 is present on the system. Note that when you set the hardware syncookie option to enabled, you may also want to set the following bigdb database variables using the "/sys modify db" command, based on your requirements: pva.SynCookies.Full.ConnectionThreshold (default: 500000), pva.SynCookies.Assist.ConnectionThreshold (default: 500000) pva.SynCookies.ClientWindow (default: 0). The default value is disabled.
  late final pulumi.Output<String> hardwareSyncookie;
  /// Specifies an idle timeout in seconds. This setting specifies the number of seconds that a connection is idle before the connection is eligible for deletion.When you specify an idle timeout for the Fast L4 profile, the value must be greater than the bigdb database variable Pva.Scrub time in msec for it to work properly.The default value is 300 seconds.
  late final pulumi.Output<String> idleTimeout;
  /// Specifies an IP ToS number for the client side. This option specifies the Type of Service level that the traffic management system assigns to IP packets when sending them to clients. The default value is 65535 (pass-through), which indicates, do not modify.
  late final pulumi.Output<String> iptosToclient;
  /// Specifies an IP ToS number for the server side. This setting specifies the Type of Service level that the traffic management system assigns to IP packets when sending them to servers. The default value is 65535 (pass-through), which indicates, do not modify.
  late final pulumi.Output<String> iptosToserver;
  /// Specifies the keep alive probe interval, in seconds. The default value is disabled (0 seconds).
  late final pulumi.Output<String> keepaliveInterval;
  /// Enables intelligent selection of a back-end server or pool, using an iRule to make the selection. The default is `disabled`.
  late final pulumi.Output<String> lateBinding;
  /// Specifies, when checked (enabled), that the system closes a loosely-initiated connection when the system receives the first FIN packet from either the client or the server. The default is disabled.
  late final pulumi.Output<String> looseClose;
  /// Specifies, when checked (enabled), that the system initializes a connection when it receives any TCP packet, rather that requiring a SYN packet for connection initiation. The default is disabled. We recommend that if you enable the Loose Initiation option, you also enable the Loose Close option.
  late final pulumi.Output<String> looseInitiation;
  /// Name of the LTM fastL4 Profile.The full path is the combination of the `partition + name` of the resource (For example `/Common/my-fastl4profile`) or  `partition + directory + name` of the resource  (example: `/Common/test/my-fastl4profile`)
  late final pulumi.Output<String> name;
  /// name of partition
  late final pulumi.Output<String> partition;
  /// Specifies the amount of data the BIG-IP system can accept without acknowledging the server. The default is 0 (zero).
  late final pulumi.Output<int> receiveWindowsize;
  /// Specifies the acceptable duration for a TCP handshake, that is, the maximum idle time between a client synchronization (SYN) and a client acknowledgment (ACK).The default is `5 seconds`.
  late final pulumi.Output<String> tcpHandshakeTimeout;

  /// Creates a new [ProfileFastL4].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileFastL4]. {@macro pulumi_ltm_profile_fast_l4_profile_fast_l4_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileFastL4(
    String name, {
    ProfileFastL4Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileFastL4:ProfileFastL4',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientTimeout = registerOutput<int>('clientTimeout');
    this.defaultsFrom = registerOutput<String>('defaultsFrom');
    this.explicitflowMigration = registerOutput<String>('explicitflowMigration');
    this.hardwareSyncookie = registerOutput<String>('hardwareSyncookie');
    this.idleTimeout = registerOutput<String>('idleTimeout');
    this.iptosToclient = registerOutput<String>('iptosToclient');
    this.iptosToserver = registerOutput<String>('iptosToserver');
    this.keepaliveInterval = registerOutput<String>('keepaliveInterval');
    this.lateBinding = registerOutput<String>('lateBinding');
    this.looseClose = registerOutput<String>('looseClose');
    this.looseInitiation = registerOutput<String>('looseInitiation');
    this.name = registerOutput<String>('name');
    this.partition = registerOutput<String>('partition');
    this.receiveWindowsize = registerOutput<int>('receiveWindowsize');
    this.tcpHandshakeTimeout = registerOutput<String>('tcpHandshakeTimeout');
  }
}
