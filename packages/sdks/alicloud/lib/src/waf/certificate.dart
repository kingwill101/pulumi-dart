import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';

/// Provides a WAF Certificate resource.
///
/// For information about WAF Certificate and how to use it, see [What is Certificate](https://www.alibabacloud.com/help/doc-detail/28517.htm).
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
/// const _default = new alicloud.waf.Certificate("default", {
///     certificateName: "your_certificate_name",
///     instanceId: "your_instance_id",
///     domain: "your_domain_name",
///     privateKey: "your_private_key",
///     certificate: "your_certificate",
/// });
/// const default2 = new alicloud.waf.Certificate("default2", {
///     instanceId: "your_instance_id",
///     domain: "your_domain_name",
///     certificateId: "your_certificate_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.waf.Certificate("default",
///     certificate_name="your_certificate_name",
///     instance_id="your_instance_id",
///     domain="your_domain_name",
///     private_key="your_private_key",
///     certificate="your_certificate")
/// default2 = alicloud.waf.Certificate("default2",
///     instance_id="your_instance_id",
///     domain="your_domain_name",
///     certificate_id="your_certificate_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Waf.Certificate("default", new()
///     {
///         CertificateName = "your_certificate_name",
///         InstanceId = "your_instance_id",
///         Domain = "your_domain_name",
///         PrivateKey = "your_private_key",
///         CertificateContents = "your_certificate",
///     });
///
///     var default2 = new AliCloud.Waf.Certificate("default2", new()
///     {
///         InstanceId = "your_instance_id",
///         Domain = "your_domain_name",
///         CertificateId = "your_certificate_id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.NewCertificate(ctx, "default", &waf.CertificateArgs{
/// 			CertificateName: pulumi.String("your_certificate_name"),
/// 			InstanceId:      pulumi.String("your_instance_id"),
/// 			Domain:          pulumi.String("your_domain_name"),
/// 			PrivateKey:      pulumi.String("your_private_key"),
/// 			Certificate:     pulumi.String("your_certificate"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = waf.NewCertificate(ctx, "default2", &waf.CertificateArgs{
/// 			InstanceId:    pulumi.String("your_instance_id"),
/// 			Domain:        pulumi.String("your_domain_name"),
/// 			CertificateId: pulumi.String("your_certificate_id"),
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
/// import com.pulumi.alicloud.waf.Certificate;
/// import com.pulumi.alicloud.waf.CertificateArgs;
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
///         var default_ = new Certificate("default", CertificateArgs.builder()
///             .certificateName("your_certificate_name")
///             .instanceId("your_instance_id")
///             .domain("your_domain_name")
///             .privateKey("your_private_key")
///             .certificate("your_certificate")
///             .build());
///
///         var default2 = new Certificate("default2", CertificateArgs.builder()
///             .instanceId("your_instance_id")
///             .domain("your_domain_name")
///             .certificateId("your_certificate_id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:waf:Certificate
///     properties:
///       certificateName: your_certificate_name
///       instanceId: your_instance_id
///       domain: your_domain_name
///       privateKey: your_private_key
///       certificate: your_certificate
///   default2:
///     type: alicloud:waf:Certificate
///     properties:
///       instanceId: your_instance_id
///       domain: your_domain_name
///       certificateId: your_certificate_id
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// WAF Certificate can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:waf/certificate:Certificate example <instance_id>:<domain>:<certificate_id>
/// ```
class Certificate extends pulumi.CustomResource {
  /// Certificate file content.
  late final pulumi.Output<String?> certificate;
  /// The certificate id is automatically generated when you upload your certificate content.**NOTE:** you can also use Certificate ID saved in SSL.
  late final pulumi.Output<String> certificateId;
  /// Certificate file name.
  late final pulumi.Output<String> certificateName;
  /// The domain that you want to add to WAF.
  late final pulumi.Output<String> domain;
  /// The ID of the WAF instance.
  late final pulumi.Output<String> instanceId;
  /// The private key.
  late final pulumi.Output<String?> privateKey;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_waf_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:waf/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String?>('certificate');
    certificateId = registerOutput<String>('certificateId');
    certificateName = registerOutput<String>('certificateName');
    domain = registerOutput<String>('domain');
    instanceId = registerOutput<String>('instanceId');
    privateKey = registerOutput<String?>('privateKey');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:waf/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String?>('certificate');
    certificateId = registerOutput<String>('certificateId');
    certificateName = registerOutput<String>('certificateName');
    domain = registerOutput<String>('domain');
    instanceId = registerOutput<String>('instanceId');
    privateKey = registerOutput<String?>('privateKey');
  }
}
