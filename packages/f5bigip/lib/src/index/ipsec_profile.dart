import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_profile_args.dart';

/// `f5bigip.IpsecProfile` Manage IPSec Profiles on a BIG-IP
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const azurevWANProfile = new f5bigip.IpsecProfile("azurevWAN_profile", {
///     name: "/Common/Mytestipsecprofile",
///     description: "mytestipsecprofile",
///     trafficSelector: "test-trafficselector",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// azurev_wan_profile = f5bigip.IpsecProfile("azurevWAN_profile",
///     name="/Common/Mytestipsecprofile",
///     description="mytestipsecprofile",
///     traffic_selector="test-trafficselector")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azurevWANProfile = new F5BigIP.IpsecProfile("azurevWAN_profile", new()
///     {
///         Name = "/Common/Mytestipsecprofile",
///         Description = "mytestipsecprofile",
///         TrafficSelector = "test-trafficselector",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := f5bigip.NewIpsecProfile(ctx, "azurevWAN_profile", &f5bigip.IpsecProfileArgs{
/// 			Name:            pulumi.String("/Common/Mytestipsecprofile"),
/// 			Description:     pulumi.String("mytestipsecprofile"),
/// 			TrafficSelector: pulumi.String("test-trafficselector"),
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
/// import com.pulumi.f5bigip.IpsecProfile;
/// import com.pulumi.f5bigip.IpsecProfileArgs;
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
///         var azurevWANProfile = new IpsecProfile("azurevWANProfile", IpsecProfileArgs.builder()
///             .name("/Common/Mytestipsecprofile")
///             .description("mytestipsecprofile")
///             .trafficSelector("test-trafficselector")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   azurevWANProfile:
///     type: f5bigip:IpsecProfile
///     name: azurevWAN_profile
///     properties:
///       name: /Common/Mytestipsecprofile
///       description: mytestipsecprofile
///       trafficSelector: test-trafficselector
/// ```
class IpsecProfile extends pulumi.CustomResource {
  /// Specifies descriptive text that identifies the IPsec interface tunnel profile.
  late final pulumi.Output<String> description;
  /// Displays the name of the IPsec interface tunnel profile,it should be "full path".The full path is the combination of the partition + name of the IPSec profile.(For example `/Common/test-profile`)
  late final pulumi.Output<String> name;
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `/Common/ipsec` profile
  late final pulumi.Output<String?> parentProfile;
  /// Specifies the traffic selector for the IPsec interface tunnel to which the profile is applied
  late final pulumi.Output<String> trafficSelector;

  /// Creates a new [IpsecProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IpsecProfile]. {@macro pulumi_index_ipsec_profile_ipsec_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IpsecProfile(
    String name, {
    IpsecProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/ipsecProfile:IpsecProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.parentProfile = registerOutput<String?>('parentProfile');
    this.trafficSelector = registerOutput<String>('trafficSelector');
  }
}
