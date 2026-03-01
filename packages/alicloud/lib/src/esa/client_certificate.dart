import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_certificate_args.dart';

/// Provides a ESA Client Certificate resource.
///
///
///
/// For information about ESA Client Certificate and how to use it, see [What is Client Certificate](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateClientCertificate).
///
/// > **NOTE:** Available since v1.244.0.
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
/// const defaultClientCertificate = new alicloud.esa.ClientCertificate("default", {
///     siteId: _default.then(_default => _default.sites?.[0]?.id),
///     pkeyType: "RSA",
///     validityDays: "365",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan",
///     site_name="gositecdn.cn")
/// default_client_certificate = alicloud.esa.ClientCertificate("default",
///     site_id=default.sites[0].id,
///     pkey_type="RSA",
///     validity_days="365")
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
///     var defaultClientCertificate = new AliCloud.Esa.ClientCertificate("default", new()
///     {
///         SiteId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.Id)),
///         PkeyType = "RSA",
///         ValidityDays = "365",
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
/// 		_, err = esa.NewClientCertificate(ctx, "default", &esa.ClientCertificateArgs{
/// 			SiteId:       pulumi.Int(_default.Sites[0].Id),
/// 			PkeyType:     pulumi.String("RSA"),
/// 			ValidityDays: pulumi.String("365"),
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
/// import com.pulumi.alicloud.esa.ClientCertificate;
/// import com.pulumi.alicloud.esa.ClientCertificateArgs;
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
///         var defaultClientCertificate = new ClientCertificate("defaultClientCertificate", ClientCertificateArgs.builder()
///             .siteId(default_.sites()[0].id())
///             .pkeyType("RSA")
///             .validityDays("365")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultClientCertificate:
///     type: alicloud:esa:ClientCertificate
///     name: default
///     properties:
///       siteId: ${default.sites[0].id}
///       pkeyType: RSA
///       validityDays: '365'
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
/// ESA Client Certificate can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/clientCertificate:ClientCertificate example <site_id>:<client_cert_id>
/// ```
class ClientCertificate extends pulumi.CustomResource {
  /// ClientCertificate Id
  late final pulumi.Output<String> clientCertId;
  /// The time when the certificate was created.
  late final pulumi.Output<String> createTime;
  /// Certificate signing request content.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> csr;
  /// The private key algorithm type.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> pkeyType;
  /// Site Id
  late final pulumi.Output<String> siteId;
  /// The certificate status. Valid values: `revoked`, `active`.
  late final pulumi.Output<String> status;
  /// Certificate validity period.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String> validityDays;

  /// Creates a new [ClientCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientCertificate]. {@macro pulumi_esa_client_certificate_client_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientCertificate(
    String name, {
    ClientCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/clientCertificate:ClientCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientCertId = registerOutput<String>('clientCertId');
    this.createTime = registerOutput<String>('createTime');
    this.csr = registerOutput<String?>('csr');
    this.pkeyType = registerOutput<String?>('pkeyType');
    this.siteId = registerOutput<String>('siteId');
    this.status = registerOutput<String>('status');
    this.validityDays = registerOutput<String>('validityDays');
  }
}
