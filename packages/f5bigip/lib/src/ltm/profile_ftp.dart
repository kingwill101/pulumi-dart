import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_ftp_args.dart';

/// `f5bigip.ltm.ProfileFtp` Configures a custom profile_ftp.
///
/// Resources should be named with their "full path". The full path is the combination of the partition + name (example: /Common/my-pool ) or  partition + directory + name of the resource  (example: /Common/test/my-pool )
///
/// ## Example Usage
///
/// ### For Bigip versions (14.x - 16.x)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const sanjose_ftp_profile = new f5bigip.ltm.ProfileFtp("sanjose-ftp-profile", {
///     name: "/Common/sanjose-ftp-profile",
///     defaultsFrom: "/Common/ftp",
///     port: 2020,
///     description: "test-tftp-profile",
///     ftpsMode: "allow",
///     enforceTlssessionReuse: "enabled",
///     allowActiveMode: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// sanjose_ftp_profile = f5bigip.ltm.ProfileFtp("sanjose-ftp-profile",
///     name="/Common/sanjose-ftp-profile",
///     defaults_from="/Common/ftp",
///     port=2020,
///     description="test-tftp-profile",
///     ftps_mode="allow",
///     enforce_tlssession_reuse="enabled",
///     allow_active_mode="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sanjose_ftp_profile = new F5BigIP.Ltm.ProfileFtp("sanjose-ftp-profile", new()
///     {
///         Name = "/Common/sanjose-ftp-profile",
///         DefaultsFrom = "/Common/ftp",
///         Port = 2020,
///         Description = "test-tftp-profile",
///         FtpsMode = "allow",
///         EnforceTlssessionReuse = "enabled",
///         AllowActiveMode = "enabled",
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
/// 		_, err := ltm.NewProfileFtp(ctx, "sanjose-ftp-profile", &ltm.ProfileFtpArgs{
/// 			Name:                   pulumi.String("/Common/sanjose-ftp-profile"),
/// 			DefaultsFrom:           pulumi.String("/Common/ftp"),
/// 			Port:                   pulumi.Int(2020),
/// 			Description:            pulumi.String("test-tftp-profile"),
/// 			FtpsMode:               pulumi.String("allow"),
/// 			EnforceTlssessionReuse: pulumi.String("enabled"),
/// 			AllowActiveMode:        pulumi.String("enabled"),
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
/// import com.pulumi.f5bigip.ltm.ProfileFtp;
/// import com.pulumi.f5bigip.ltm.ProfileFtpArgs;
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
///         var sanjose_ftp_profile = new ProfileFtp("sanjose-ftp-profile", ProfileFtpArgs.builder()
///             .name("/Common/sanjose-ftp-profile")
///             .defaultsFrom("/Common/ftp")
///             .port(2020)
///             .description("test-tftp-profile")
///             .ftpsMode("allow")
///             .enforceTlssessionReuse("enabled")
///             .allowActiveMode("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sanjose-ftp-profile:
///     type: f5bigip:ltm:ProfileFtp
///     properties:
///       name: /Common/sanjose-ftp-profile
///       defaultsFrom: /Common/ftp
///       port: 2020
///       description: test-tftp-profile
///       ftpsMode: allow
///       enforceTlssessionReuse: enabled
///       allowActiveMode: enabled
/// ```
///
///
/// ### For Bigip versions (12.x - 13.x)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const sanjose_ftp_profile = new f5bigip.ltm.ProfileFtp("sanjose-ftp-profile", {
///     name: "/Common/sanjose-ftp-profile",
///     defaultsFrom: "/Common/ftp",
///     port: 2020,
///     description: "test-tftp-profile",
///     allowFtps: "enabled",
///     translateExtended: "enabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// sanjose_ftp_profile = f5bigip.ltm.ProfileFtp("sanjose-ftp-profile",
///     name="/Common/sanjose-ftp-profile",
///     defaults_from="/Common/ftp",
///     port=2020,
///     description="test-tftp-profile",
///     allow_ftps="enabled",
///     translate_extended="enabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sanjose_ftp_profile = new F5BigIP.Ltm.ProfileFtp("sanjose-ftp-profile", new()
///     {
///         Name = "/Common/sanjose-ftp-profile",
///         DefaultsFrom = "/Common/ftp",
///         Port = 2020,
///         Description = "test-tftp-profile",
///         AllowFtps = "enabled",
///         TranslateExtended = "enabled",
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
/// 		_, err := ltm.NewProfileFtp(ctx, "sanjose-ftp-profile", &ltm.ProfileFtpArgs{
/// 			Name:              pulumi.String("/Common/sanjose-ftp-profile"),
/// 			DefaultsFrom:      pulumi.String("/Common/ftp"),
/// 			Port:              pulumi.Int(2020),
/// 			Description:       pulumi.String("test-tftp-profile"),
/// 			AllowFtps:         pulumi.String("enabled"),
/// 			TranslateExtended: pulumi.String("enabled"),
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
/// import com.pulumi.f5bigip.ltm.ProfileFtp;
/// import com.pulumi.f5bigip.ltm.ProfileFtpArgs;
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
///         var sanjose_ftp_profile = new ProfileFtp("sanjose-ftp-profile", ProfileFtpArgs.builder()
///             .name("/Common/sanjose-ftp-profile")
///             .defaultsFrom("/Common/ftp")
///             .port(2020)
///             .description("test-tftp-profile")
///             .allowFtps("enabled")
///             .translateExtended("enabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sanjose-ftp-profile:
///     type: f5bigip:ltm:ProfileFtp
///     properties:
///       name: /Common/sanjose-ftp-profile
///       defaultsFrom: /Common/ftp
///       port: 2020
///       description: test-tftp-profile
///       allowFtps: enabled
///       translateExtended: enabled
/// ```
///
///
///
/// ## Common Arguments for all versions
///
/// * `security` - (Optional)Specifies, when checked (enabled), that the system inspects FTP traffic for security vulnerabilities using an FTP security profile. This option is available only on systems licensed for BIG-IP ASM.
///
/// * `port` - (Optional)Allows you to configure the FTP service to run on an alternate port. The default is 20.
///
/// * `log_profile` - (Optional)Configures the ALG log profile that controls logging
///
/// * `log_publisher` - (Optional)Configures the log publisher that handles events logging for this profile
///
/// *  `inherit_parent_profile` - (Optional)Enables the FTP data channel to inherit the TCP profile used by the control channel.If disabled,the data channel uses FastL4 only.
///
/// * `description` - (Optional)User defined description for FTP profile
class ProfileFtp extends pulumi.CustomResource {
  /// Specifies, when selected (enabled), that the system allows FTP Active Transfer mode. The default value is enabled.
  late final pulumi.Output<String?> allowActiveMode;
  /// Allows explicit FTPS negotiation
  late final pulumi.Output<String?> allowFtps;
  /// The application service to which the object belongs.
  late final pulumi.Output<String?> appService;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  late final pulumi.Output<String> defaultsFrom;
  /// User defined description
  late final pulumi.Output<String?> description;
  /// Specifies, when selected (enabled), that the system enforces the data connection to reuse a TLS session. The default value is unchecked (disabled).
  late final pulumi.Output<String?> enforceTlssessionReuse;
  /// Allows explicit FTPS negotiation
  late final pulumi.Output<String?> ftpsMode;
  /// Enables the FTP data channel to inherit the TCP profile used by the control channel.If disabled,the data channel uses FastL4 only.
  late final pulumi.Output<String?> inheritParentProfile;
  /// inherent vlan list
  late final pulumi.Output<String?> inheritVlanList;
  /// Configures the ALG log profile that controls logging
  late final pulumi.Output<String> logProfile;
  /// Configures the log publisher that handles events logging for this profile
  late final pulumi.Output<String> logPublisher;
  /// Name of the profile_ftp
  late final pulumi.Output<String> name;
  /// Displays the administrative partition within which this profile resides
  late final pulumi.Output<String> partition;
  /// Specifies a service for the data channel port used for this FTP profile. The default port is ftp-data.
  late final pulumi.Output<int?> port;
  /// Enables secure FTP traffic for the BIG-IP Application Security Manager. You can set the security option only if the system is licensed for the BIG-IP Application Security Manager. The default value is disabled.
  late final pulumi.Output<String> security;
  /// This setting is enabled by default, and thus, automatically translates RFC 2428 extended requests EPSV and EPRT to PASV and PORT when communicating with IPv4 servers.
  late final pulumi.Output<String?> translateExtended;

  /// Creates a new [ProfileFtp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProfileFtp]. {@macro pulumi_ltm_profile_ftp_profile_ftp_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProfileFtp(
    String name, {
    ProfileFtpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ltm/profileFtp:ProfileFtp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowActiveMode = registerOutput<String?>('allowActiveMode');
    this.allowFtps = registerOutput<String?>('allowFtps');
    this.appService = registerOutput<String?>('appService');
    this.defaultsFrom = registerOutput<String>('defaultsFrom');
    this.description = registerOutput<String?>('description');
    this.enforceTlssessionReuse = registerOutput<String?>('enforceTlssessionReuse');
    this.ftpsMode = registerOutput<String?>('ftpsMode');
    this.inheritParentProfile = registerOutput<String?>('inheritParentProfile');
    this.inheritVlanList = registerOutput<String?>('inheritVlanList');
    this.logProfile = registerOutput<String>('logProfile');
    this.logPublisher = registerOutput<String>('logPublisher');
    this.name = registerOutput<String>('name');
    this.partition = registerOutput<String>('partition');
    this.port = registerOutput<int?>('port');
    this.security = registerOutput<String>('security');
    this.translateExtended = registerOutput<String?>('translateExtended');
  }
}
