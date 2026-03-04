import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_args.dart';
import 'security_policy_state.dart';

/// Provides a ALB Security Policy resource.
///
/// For information about ALB Security Policy and how to use it, see [What is Security Policy](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-createsecuritypolicy).
///
/// &gt; **NOTE:** Available since v1.130.0.
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
/// const _default = new alicloud.alb.SecurityPolicy("default", {
///     securityPolicyName: "tf_example",
///     tlsVersions: ["TLSv1.0"],
///     ciphers: [
///         "ECDHE-ECDSA-AES128-SHA",
///         "AES256-SHA",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.alb.SecurityPolicy("default",
///     security_policy_name="tf_example",
///     tls_versions=["TLSv1.0"],
///     ciphers=[
///         "ECDHE-ECDSA-AES128-SHA",
///         "AES256-SHA",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Alb.SecurityPolicy("default", new()
///     {
///         SecurityPolicyName = "tf_example",
///         TlsVersions = new[]
///         {
///             "TLSv1.0",
///         },
///         Ciphers = new[]
///         {
///             "ECDHE-ECDSA-AES128-SHA",
///             "AES256-SHA",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alb.NewSecurityPolicy(ctx, "default", &alb.SecurityPolicyArgs{
/// 			SecurityPolicyName: pulumi.String("tf_example"),
/// 			TlsVersions: pulumi.StringArray{
/// 				pulumi.String("TLSv1.0"),
/// 			},
/// 			Ciphers: pulumi.StringArray{
/// 				pulumi.String("ECDHE-ECDSA-AES128-SHA"),
/// 				pulumi.String("AES256-SHA"),
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
/// import com.pulumi.alicloud.alb.SecurityPolicy;
/// import com.pulumi.alicloud.alb.SecurityPolicyArgs;
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
///         var default_ = new SecurityPolicy("default", SecurityPolicyArgs.builder()
///             .securityPolicyName("tf_example")
///             .tlsVersions("TLSv1.0")
///             .ciphers(
///                 "ECDHE-ECDSA-AES128-SHA",
///                 "AES256-SHA")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:alb:SecurityPolicy
///     properties:
///       securityPolicyName: tf_example
///       tlsVersions:
///         - TLSv1.0
///       ciphers:
///         - ECDHE-ECDSA-AES128-SHA
///         - AES256-SHA
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ALB Security Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/securityPolicy:SecurityPolicy example <id>
/// ```
class SecurityPolicy extends pulumi.CustomResource {
  /// The supported cipher suites, which are determined by the TLS protocol version.The specified cipher suites must be supported by at least one TLS protocol version that you select.
  late final pulumi.Output<List<String>> ciphers;

  /// The dry run.
  late final pulumi.Output<bool?> dryRun;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The name of the resource. The name must be 2 to 128 characters in length and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  late final pulumi.Output<String> securityPolicyName;

  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The TLS protocol versions that are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  late final pulumi.Output<List<String>> tlsVersions;

  /// Creates a new [SecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPolicy]. {@macro pulumi_alb_security_policy_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPolicy(
    String name, {
    SecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/securityPolicy:SecurityPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ciphers = registerOutput<List<String>>('ciphers');
    dryRun = registerOutput<bool?>('dryRun');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityPolicyName = registerOutput<String>('securityPolicyName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tlsVersions = registerOutput<List<String>>('tlsVersions');
  }

  /// Gets an existing [SecurityPolicy] resource's state with the given [name] and [id].
  static SecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    SecurityPolicyState? state,
  }) {
    return SecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/securityPolicy:SecurityPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    ciphers = registerOutput<List<String>>('ciphers');
    dryRun = registerOutput<bool?>('dryRun');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityPolicyName = registerOutput<String>('securityPolicyName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tlsVersions = registerOutput<List<String>>('tlsVersions');
  }
}
