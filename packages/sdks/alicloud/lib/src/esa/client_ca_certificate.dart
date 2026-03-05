import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_ca_certificate_args.dart';
import 'client_ca_certificate_state.dart';

/// Provides a ESA Client Ca Certificate resource.
///
///
///
/// For information about ESA Client Ca Certificate and how to use it, see [What is Client Ca Certificate](https://next.api.alibabacloud.com/document/ESA/2024-09-10/UploadClientCaCertificate).
///
/// &gt; **NOTE:** Available since v1.244.0.
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
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
///     siteName: "gositecdn.cn",
/// });
/// const defaultClientCaCertificate = new alicloud.esa.ClientCaCertificate("default", {
///     certificate: `-----BEGIN CERTIFICATE-----
/// ****-----END CERTIFICATE-----`,
///     clientCaCertName: "example",
///     siteId: _default.then(_default => _default.sites?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan",
///     site_name="gositecdn.cn")
/// default_client_ca_certificate = alicloud.esa.ClientCaCertificate("default",
///     certificate="""-----BEGIN CERTIFICATE-----
/// ****-----END CERTIFICATE-----""",
///     client_ca_cert_name="example",
///     site_id=default.sites[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///         SiteName = "gositecdn.cn",
///     });
///
///     var defaultClientCaCertificate = new AliCloud.Esa.ClientCaCertificate("default", new()
///     {
///         Certificate = @"-----BEGIN CERTIFICATE-----
/// ****-----END CERTIFICATE-----",
///         ClientCaCertName = "example",
///         SiteId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 			SiteName:          pulumi.StringRef("gositecdn.cn"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewClientCaCertificate(ctx, "default", &esa.ClientCaCertificateArgs{
/// 			Certificate:      pulumi.String("-----BEGIN CERTIFICATE-----\n****-----END CERTIFICATE-----"),
/// 			ClientCaCertName: pulumi.String("example"),
/// 			SiteId:           pulumi.Int(_default.Sites[0].Id),
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
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.alicloud.esa.ClientCaCertificate;
/// import com.pulumi.alicloud.esa.ClientCaCertificateArgs;
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
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .siteName("gositecdn.cn")
///             .build());
///
///         var defaultClientCaCertificate = new ClientCaCertificate("defaultClientCaCertificate", ClientCaCertificateArgs.builder()
///             .certificate("""
/// -----BEGIN CERTIFICATE-----
/// ****-----END CERTIFICATE-----            """)
///             .clientCaCertName("example")
///             .siteId(default_.sites()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultClientCaCertificate:
///     type: alicloud:esa:ClientCaCertificate
///     name: default
///     properties:
///       certificate: |-
///         -----BEGIN CERTIFICATE-----
///         ****-----END CERTIFICATE-----
///       clientCaCertName: example
///       siteId: ${default.sites[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
///         siteName: gositecdn.cn
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Client Ca Certificate can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/clientCaCertificate:ClientCaCertificate example <site_id>:<client_ca_cert_id>
/// ```
class ClientCaCertificate extends pulumi.CustomResource {
  /// Certificate content.
  late final pulumi.Output<String> certificate;
  /// ClientCaCertificate Id
  late final pulumi.Output<String> clientCaCertId;
  /// The certificate name.
  late final pulumi.Output<String?> clientCaCertName;
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// Site Id
  late final pulumi.Output<String> siteId;
  /// Certificate status.
  late final pulumi.Output<String> status;

  /// Creates a new [ClientCaCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientCaCertificate]. {@macro pulumi_esa_client_ca_certificate_client_ca_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientCaCertificate(
    String name, {
    ClientCaCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/clientCaCertificate:ClientCaCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    clientCaCertId = registerOutput<String>('clientCaCertId');
    clientCaCertName = registerOutput<String?>('clientCaCertName');
    createTime = registerOutput<String>('createTime');
    siteId = registerOutput<String>('siteId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ClientCaCertificate] resource's state with the given [name] and [id].
  static ClientCaCertificate get(
    String name,
    pulumi.Input<String> id, {
    ClientCaCertificateState? state,
  }) {
    return ClientCaCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClientCaCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/clientCaCertificate:ClientCaCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    clientCaCertId = registerOutput<String>('clientCaCertId');
    clientCaCertName = registerOutput<String?>('clientCaCertName');
    createTime = registerOutput<String>('createTime');
    siteId = registerOutput<String>('siteId');
    status = registerOutput<String>('status');
  }
}
