import 'package:pulumi/pulumi.dart' as pulumi;
import 'oidc_provider_args.dart';
import 'oidc_provider_state.dart';

/// Provides a IMS Oidc Provider resource.
///
/// OpenID Connect Provider.
///
/// For information about IMS Oidc Provider and how to use it, see [What is Oidc Provider](https://www.alibabacloud.com/help/en/ram/developer-reference/api-ims-2019-08-15-createoidcprovider).
///
/// &gt; **NOTE:** Available since v1.210.0.
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
/// const oidcProviderName = config.get("oidcProviderName") || "amp-resource-example-oidc-provider";
/// const _default = new alicloud.ims.OidcProvider("default", {
///     fingerprints: ["0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71"],
///     issuanceLimitTime: 12,
///     oidcProviderName: "tfaccims89018",
///     clientIds: [
///         "123",
///         "456",
///     ],
///     description: oidcProviderName,
///     issuerUrl: "https://oauth.aliyun.com",
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
/// oidc_provider_name = config.get("oidcProviderName")
/// if oidc_provider_name is None:
///     oidc_provider_name = "amp-resource-example-oidc-provider"
/// default = alicloud.ims.OidcProvider("default",
///     fingerprints=["0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71"],
///     issuance_limit_time=12,
///     oidc_provider_name="tfaccims89018",
///     client_ids=[
///         "123",
///         "456",
///     ],
///     description=oidc_provider_name,
///     issuer_url="https://oauth.aliyun.com")
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
///     var oidcProviderName = config.Get("oidcProviderName") ?? "amp-resource-example-oidc-provider";
///     var @default = new AliCloud.Ims.OidcProvider("default", new()
///     {
///         Fingerprints = new[]
///         {
///             "0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71",
///         },
///         IssuanceLimitTime = 12,
///         OidcProviderName = "tfaccims89018",
///         ClientIds = new[]
///         {
///             "123",
///             "456",
///         },
///         Description = oidcProviderName,
///         IssuerUrl = "https://oauth.aliyun.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ims"
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
/// 		oidcProviderName := "amp-resource-example-oidc-provider"
/// 		if param := cfg.Get("oidcProviderName"); param != "" {
/// 			oidcProviderName = param
/// 		}
/// 		_, err := ims.NewOidcProvider(ctx, "default", &ims.OidcProviderArgs{
/// 			Fingerprints: pulumi.StringArray{
/// 				pulumi.String("0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71"),
/// 			},
/// 			IssuanceLimitTime: pulumi.Int(12),
/// 			OidcProviderName:  pulumi.String("tfaccims89018"),
/// 			ClientIds: pulumi.StringArray{
/// 				pulumi.String("123"),
/// 				pulumi.String("456"),
/// 			},
/// 			Description: pulumi.String(oidcProviderName),
/// 			IssuerUrl:   pulumi.String("https://oauth.aliyun.com"),
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
/// import com.pulumi.alicloud.ims.OidcProvider;
/// import com.pulumi.alicloud.ims.OidcProviderArgs;
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
///         final var oidcProviderName = config.get("oidcProviderName").orElse("amp-resource-example-oidc-provider");
///         var default_ = new OidcProvider("default", OidcProviderArgs.builder()
///             .fingerprints("0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71")
///             .issuanceLimitTime(12)
///             .oidcProviderName("tfaccims89018")
///             .clientIds(
///                 "123",
///                 "456")
///             .description(oidcProviderName)
///             .issuerUrl("https://oauth.aliyun.com")
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
///   oidcProviderName:
///     type: string
///     default: amp-resource-example-oidc-provider
/// resources:
///   default:
///     type: alicloud:ims:OidcProvider
///     properties:
///       fingerprints:
///         - 0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71
///       issuanceLimitTime: '12'
///       oidcProviderName: tfaccims89018
///       clientIds:
///         - '123'
///         - '456'
///       description: ${oidcProviderName}
///       issuerUrl: https://oauth.aliyun.com
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// IMS Oidc Provider can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ims/oidcProvider:OidcProvider example <id>
/// ```
class OidcProvider extends pulumi.CustomResource {
  /// ARN of OIDC identity provider.
  late final pulumi.Output<String> arn;
  /// Client ID.
  late final pulumi.Output<List<String>?> clientIds;
  /// Creation Time (UTC time).
  late final pulumi.Output<String> createTime;
  /// Description of OIDC identity provider.
  late final pulumi.Output<String?> description;
  /// The authentication fingerprint of the HTTPS CA certificate.
  late final pulumi.Output<List<String>?> fingerprints;
  /// The earliest time when an external IdP is allowed to issue an ID Token. If the iat field in the ID Token is greater than the current time, the request is rejected.
  /// Unit: hours. Value range: 1~168.
  late final pulumi.Output<int> issuanceLimitTime;
  /// The issuer URL of the OIDC identity provider.
  late final pulumi.Output<String> issuerUrl;
  /// The name of the OIDC identity provider.
  late final pulumi.Output<String> oidcProviderName;

  /// Creates a new [OidcProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OidcProvider]. {@macro pulumi_ims_oidc_provider_oidc_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OidcProvider(
    String name, {
    OidcProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ims/oidcProvider:OidcProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clientIds = registerOutput<List<String>?>('clientIds');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    fingerprints = registerOutput<List<String>?>('fingerprints');
    issuanceLimitTime = registerOutput<int>('issuanceLimitTime');
    issuerUrl = registerOutput<String>('issuerUrl');
    oidcProviderName = registerOutput<String>('oidcProviderName');
  }

  /// Gets an existing [OidcProvider] resource's state with the given [name] and [id].
  static OidcProvider get(
    String name,
    pulumi.Input<String> id, {
    OidcProviderState? state,
  }) {
    return OidcProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OidcProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ims/oidcProvider:OidcProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clientIds = registerOutput<List<String>?>('clientIds');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    fingerprints = registerOutput<List<String>?>('fingerprints');
    issuanceLimitTime = registerOutput<int>('issuanceLimitTime');
    issuerUrl = registerOutput<String>('issuerUrl');
    oidcProviderName = registerOutput<String>('oidcProviderName');
  }
}
