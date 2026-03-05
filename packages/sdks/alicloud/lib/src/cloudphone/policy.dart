import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_net_redirect_policy.dart';
import 'policy_state.dart';

/// Provides a Cloud Phone Policy resource.
///
/// Cloud phone policy.
///
/// For information about Cloud Phone Policy and how to use it, see [What is Policy](https://next.api.alibabacloud.com/document/eds-aic/2023-09-30/CreatePolicyGroup).
///
/// &gt; **NOTE:** Available since v1.243.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.cloudphone.Policy("default", {
///     policyGroupName: "NewPolicyName",
///     resolutionWidth: 720,
///     lockResolution: "on",
///     cameraRedirect: "on",
///     resolutionHeight: 1280,
///     clipboard: "read",
///     netRedirectPolicy: {
///         netRedirect: "on",
///         customProxy: "on",
///         proxyType: "socks5",
///         hostAddr: "192.168.12.13",
///         port: "8888",
///         proxyUserName: "user1",
///         proxyPassword: "123456",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cloudphone.Policy("default",
///     policy_group_name="NewPolicyName",
///     resolution_width=720,
///     lock_resolution="on",
///     camera_redirect="on",
///     resolution_height=1280,
///     clipboard="read",
///     net_redirect_policy={
///         "net_redirect": "on",
///         "custom_proxy": "on",
///         "proxy_type": "socks5",
///         "host_addr": "192.168.12.13",
///         "port": "8888",
///         "proxy_user_name": "user1",
///         "proxy_password": "123456",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.CloudPhone.Policy("default", new()
///     {
///         PolicyGroupName = "NewPolicyName",
///         ResolutionWidth = 720,
///         LockResolution = "on",
///         CameraRedirect = "on",
///         ResolutionHeight = 1280,
///         Clipboard = "read",
///         NetRedirectPolicy = new AliCloud.cloudPhone.Inputs.PolicyNetRedirectPolicyArgs
///         {
///             NetRedirect = "on",
///             CustomProxy = "on",
///             ProxyType = "socks5",
///             HostAddr = "192.168.12.13",
///             Port = "8888",
///             ProxyUserName = "user1",
///             ProxyPassword = "123456",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudphone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := cloudphone.NewPolicy(ctx, "default", &cloudphone.PolicyArgs{
/// 			PolicyGroupName:  pulumi.String("NewPolicyName"),
/// 			ResolutionWidth:  pulumi.Int(720),
/// 			LockResolution:   pulumi.String("on"),
/// 			CameraRedirect:   pulumi.String("on"),
/// 			ResolutionHeight: pulumi.Int(1280),
/// 			Clipboard:        pulumi.String("read"),
/// 			NetRedirectPolicy: &cloudphone.PolicyNetRedirectPolicyArgs{
/// 				NetRedirect:   pulumi.String("on"),
/// 				CustomProxy:   pulumi.String("on"),
/// 				ProxyType:     pulumi.String("socks5"),
/// 				HostAddr:      pulumi.String("192.168.12.13"),
/// 				Port:          pulumi.String("8888"),
/// 				ProxyUserName: pulumi.String("user1"),
/// 				ProxyPassword: pulumi.String("123456"),
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
/// import com.pulumi.alicloud.cloudphone.Policy;
/// import com.pulumi.alicloud.cloudphone.PolicyArgs;
/// import com.pulumi.alicloud.cloudphone.inputs.PolicyNetRedirectPolicyArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Policy("default", PolicyArgs.builder()
///             .policyGroupName("NewPolicyName")
///             .resolutionWidth(720)
///             .lockResolution("on")
///             .cameraRedirect("on")
///             .resolutionHeight(1280)
///             .clipboard("read")
///             .netRedirectPolicy(PolicyNetRedirectPolicyArgs.builder()
///                 .netRedirect("on")
///                 .customProxy("on")
///                 .proxyType("socks5")
///                 .hostAddr("192.168.12.13")
///                 .port("8888")
///                 .proxyUserName("user1")
///                 .proxyPassword("123456")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:cloudphone:Policy
///     properties:
///       policyGroupName: NewPolicyName
///       resolutionWidth: '720'
///       lockResolution: on
///       cameraRedirect: on
///       resolutionHeight: '1280'
///       clipboard: read
///       netRedirectPolicy:
///         netRedirect: on
///         customProxy: on
///         proxyType: socks5
///         hostAddr: 192.168.12.13
///         port: '8888'
///         proxyUserName: user1
///         proxyPassword: '123456'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Phone Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudphone/policy:Policy example <id>
/// ```
class Policy extends pulumi.CustomResource {
  /// Whether to turn on local camera redirection.
  late final pulumi.Output<String> cameraRedirect;
  /// Clipboard permissions.
  late final pulumi.Output<String> clipboard;
  /// Whether to lock the resolution.
  late final pulumi.Output<String> lockResolution;
  /// Network redirection. See `net_redirect_policy` below.
  late final pulumi.Output<PolicyNetRedirectPolicy> netRedirectPolicy;
  /// The policy name.
  late final pulumi.Output<String> policyGroupName;
  /// The height of the resolution. Unit: Pixels.
  late final pulumi.Output<int> resolutionHeight;
  /// The width of the resolution. Unit: Pixels.
  late final pulumi.Output<int> resolutionWidth;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_cloudphone_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudphone/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cameraRedirect = registerOutput<String>('cameraRedirect');
    clipboard = registerOutput<String>('clipboard');
    lockResolution = registerOutput<String>('lockResolution');
    netRedirectPolicy = registerOutput<PolicyNetRedirectPolicy>('netRedirectPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyNetRedirectPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyGroupName = registerOutput<String>('policyGroupName');
    resolutionHeight = registerOutput<int>('resolutionHeight');
    resolutionWidth = registerOutput<int>('resolutionWidth');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudphone/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cameraRedirect = registerOutput<String>('cameraRedirect');
    clipboard = registerOutput<String>('clipboard');
    lockResolution = registerOutput<String>('lockResolution');
    netRedirectPolicy = registerOutput<PolicyNetRedirectPolicy>('netRedirectPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyNetRedirectPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyGroupName = registerOutput<String>('policyGroupName');
    resolutionHeight = registerOutput<int>('resolutionHeight');
    resolutionWidth = registerOutput<int>('resolutionWidth');
  }
}
