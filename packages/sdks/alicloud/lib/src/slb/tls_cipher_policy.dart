import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_cipher_policy_args.dart';
import 'tls_cipher_policy_state.dart';

/// Provides a SLB Tls Cipher Policy resource.
///
/// For information about SLB Tls Cipher Policy and how to use it, see [What is Tls Cipher Policy](https://www.alibabacloud.com/help/doc-detail/196714.htm).
///
/// &gt; **NOTE:** Available in v1.135.0+.
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
/// const example = new alicloud.slb.TlsCipherPolicy("example", {
///     tlsCipherPolicyName: "Test-example_value",
///     tlsVersions: ["TLSv1.2"],
///     ciphers: [
///         "AES256-SHA256",
///         "AES128-GCM-SHA256",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.slb.TlsCipherPolicy("example",
///     tls_cipher_policy_name="Test-example_value",
///     tls_versions=["TLSv1.2"],
///     ciphers=[
///         "AES256-SHA256",
///         "AES128-GCM-SHA256",
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
///     var example = new AliCloud.Slb.TlsCipherPolicy("example", new()
///     {
///         TlsCipherPolicyName = "Test-example_value",
///         TlsVersions = new[]
///         {
///             "TLSv1.2",
///         },
///         Ciphers = new[]
///         {
///             "AES256-SHA256",
///             "AES128-GCM-SHA256",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := slb.NewTlsCipherPolicy(ctx, "example", &slb.TlsCipherPolicyArgs{
/// 			TlsCipherPolicyName: pulumi.String("Test-example_value"),
/// 			TlsVersions: pulumi.StringArray{
/// 				pulumi.String("TLSv1.2"),
/// 			},
/// 			Ciphers: pulumi.StringArray{
/// 				pulumi.String("AES256-SHA256"),
/// 				pulumi.String("AES128-GCM-SHA256"),
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
/// import com.pulumi.alicloud.slb.TlsCipherPolicy;
/// import com.pulumi.alicloud.slb.TlsCipherPolicyArgs;
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
///         var example = new TlsCipherPolicy("example", TlsCipherPolicyArgs.builder()
///             .tlsCipherPolicyName("Test-example_value")
///             .tlsVersions("TLSv1.2")
///             .ciphers(
///                 "AES256-SHA256",
///                 "AES128-GCM-SHA256")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:slb:TlsCipherPolicy
///     properties:
///       tlsCipherPolicyName: Test-example_value
///       tlsVersions:
///         - TLSv1.2
///       ciphers:
///         - AES256-SHA256
///         - AES128-GCM-SHA256
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// SLB Tls Cipher Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/tlsCipherPolicy:TlsCipherPolicy example <id>
/// ```
class TlsCipherPolicy extends pulumi.CustomResource {
  /// The encryption algorithms supported. It depends on the value of `tls_versions`.
  late final pulumi.Output<List<String>> ciphers;
  /// TLS policy instance state.
  late final pulumi.Output<String> status;
  /// TLS policy name. Length is from 2 to 128, or in both the English and Chinese characters must be with an uppercase/lowercase letter or a Chinese character and the beginning, may contain numbers, in dot `.`, underscore `_` or dash `-`.
  late final pulumi.Output<String> tlsCipherPolicyName;
  /// The version of TLS protocol. You can find the corresponding value description in the document center [What is Tls Cipher Policy](https://www.alibabacloud.com/help/doc-detail/196714.htm).
  late final pulumi.Output<List<String>> tlsVersions;

  /// Creates a new [TlsCipherPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TlsCipherPolicy]. {@macro pulumi_slb_tls_cipher_policy_tls_cipher_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TlsCipherPolicy(
    String name, {
    TlsCipherPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/tlsCipherPolicy:TlsCipherPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ciphers = registerOutput<List<String>>('ciphers');
    status = registerOutput<String>('status');
    tlsCipherPolicyName = registerOutput<String>('tlsCipherPolicyName');
    tlsVersions = registerOutput<List<String>>('tlsVersions');
  }

  /// Gets an existing [TlsCipherPolicy] resource's state with the given [name] and [id].
  static TlsCipherPolicy get(
    String name,
    pulumi.Input<String> id, {
    TlsCipherPolicyState? state,
  }) {
    return TlsCipherPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TlsCipherPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/tlsCipherPolicy:TlsCipherPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ciphers = registerOutput<List<String>>('ciphers');
    status = registerOutput<String>('status');
    tlsCipherPolicyName = registerOutput<String>('tlsCipherPolicyName');
    tlsVersions = registerOutput<List<String>>('tlsVersions');
  }
}
