import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';

/// Provides a ESA Certificate resource.
///
///
///
/// For information about ESA Certificate and how to use it, see [What is Certificate](https://next.api.alibabacloud.com/document/ESA/2024-09-10/SetCertificate).
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
/// const defaultCertificate = new alicloud.esa.Certificate("default", {
///     createdType: "free",
///     domains: "101.gositecdn.cn",
///     siteId: _default.then(_default => _default.sites?.[0]?.id),
///     type: "lets_encrypt",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan",
///     site_name="gositecdn.cn")
/// default_certificate = alicloud.esa.Certificate("default",
///     created_type="free",
///     domains="101.gositecdn.cn",
///     site_id=default.sites[0].id,
///     type="lets_encrypt")
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
///     var defaultCertificate = new AliCloud.Esa.Certificate("default", new()
///     {
///         CreatedType = "free",
///         Domains = "101.gositecdn.cn",
///         SiteId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.Id)),
///         Type = "lets_encrypt",
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
/// 		_, err = esa.NewCertificate(ctx, "default", &esa.CertificateArgs{
/// 			CreatedType: pulumi.String("free"),
/// 			Domains:     pulumi.String("101.gositecdn.cn"),
/// 			SiteId:      pulumi.Int(_default.Sites[0].Id),
/// 			Type:        pulumi.String("lets_encrypt"),
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
/// import com.pulumi.alicloud.esa.Certificate;
/// import com.pulumi.alicloud.esa.CertificateArgs;
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
///         var defaultCertificate = new Certificate("defaultCertificate", CertificateArgs.builder()
///             .createdType("free")
///             .domains("101.gositecdn.cn")
///             .siteId(default_.sites()[0].id())
///             .type("lets_encrypt")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultCertificate:
///     type: alicloud:esa:Certificate
///     name: default
///     properties:
///       createdType: free
///       domains: 101.gositecdn.cn
///       siteId: ${default.sites[0].id}
///       type: lets_encrypt
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
/// ESA Certificate can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/certificate:Certificate example <site_id>:<cert_id>
/// ```
class Certificate extends pulumi.CustomResource {
  /// Cloud certificate ID.
  late final pulumi.Output<String?> casId;
  /// The certificate Id.
  late final pulumi.Output<String> certId;
  /// The certificate name.
  late final pulumi.Output<String> certName;
  /// Certificate content.
  late final pulumi.Output<String> certificate;
  /// Creation time.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> createdType;
  /// A list of domain names. Multiple domain names are separated by commas.
  late final pulumi.Output<String?> domains;
  late final pulumi.Output<String?> privateKey;
  /// Region. This parameter is required if the type is CAS.
  /// For accounts on the Chinese site, this parameter value is: cn-hangzhou
  /// For accounts on the international site, this parameter value is: ap-southeast-1
  late final pulumi.Output<String> region;
  /// The site ID, which can be obtained by calling the ListSites interface.
  late final pulumi.Output<String> siteId;
  /// Certificate status.(within 30 days).- issued.- applying.- application failed.- canceled.
  late final pulumi.Output<String> status;
  /// Certificate type. Possible values: lets_encrypt: Let's Encrypt certificate;
  late final pulumi.Output<String> type;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_esa_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.casId = registerOutput<String?>('casId');
    this.certId = registerOutput<String>('certId');
    this.certName = registerOutput<String>('certName');
    this.certificate = registerOutput<String>('certificate');
    this.createTime = registerOutput<String>('createTime');
    this.createdType = registerOutput<String>('createdType');
    this.domains = registerOutput<String?>('domains');
    this.privateKey = registerOutput<String?>('privateKey');
    this.region = registerOutput<String>('region');
    this.siteId = registerOutput<String>('siteId');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
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
          'alicloud:esa/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.casId = registerOutput<String?>('casId');
    this.certId = registerOutput<String>('certId');
    this.certName = registerOutput<String>('certName');
    this.certificate = registerOutput<String>('certificate');
    this.createTime = registerOutput<String>('createTime');
    this.createdType = registerOutput<String>('createdType');
    this.domains = registerOutput<String?>('domains');
    this.privateKey = registerOutput<String?>('privateKey');
    this.region = registerOutput<String>('region');
    this.siteId = registerOutput<String>('siteId');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
  }
}
