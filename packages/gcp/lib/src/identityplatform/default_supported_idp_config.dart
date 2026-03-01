import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_supported_idp_config_args.dart';

/// Configurations options for authenticating with a the standard set of Identity Toolkit-trusted IDPs.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Default Supported Idp Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const idpConfig = new gcp.identityplatform.DefaultSupportedIdpConfig("idp_config", {
///     enabled: true,
///     idpId: "playgames.google.com",
///     clientId: "client-id",
///     clientSecret: "secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// idp_config = gcp.identityplatform.DefaultSupportedIdpConfig("idp_config",
///     enabled=True,
///     idp_id="playgames.google.com",
///     client_id="client-id",
///     client_secret="secret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var idpConfig = new Gcp.IdentityPlatform.DefaultSupportedIdpConfig("idp_config", new()
///     {
///         Enabled = true,
///         IdpId = "playgames.google.com",
///         ClientId = "client-id",
///         ClientSecret = "secret",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/identityplatform"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identityplatform.NewDefaultSupportedIdpConfig(ctx, "idp_config", &identityplatform.DefaultSupportedIdpConfigArgs{
/// 			Enabled:      pulumi.Bool(true),
/// 			IdpId:        pulumi.String("playgames.google.com"),
/// 			ClientId:     pulumi.String("client-id"),
/// 			ClientSecret: pulumi.String("secret"),
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
/// import com.pulumi.gcp.identityplatform.DefaultSupportedIdpConfig;
/// import com.pulumi.gcp.identityplatform.DefaultSupportedIdpConfigArgs;
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
///         var idpConfig = new DefaultSupportedIdpConfig("idpConfig", DefaultSupportedIdpConfigArgs.builder()
///             .enabled(true)
///             .idpId("playgames.google.com")
///             .clientId("client-id")
///             .clientSecret("secret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   idpConfig:
///     type: gcp:identityplatform:DefaultSupportedIdpConfig
///     name: idp_config
///     properties:
///       enabled: true
///       idpId: playgames.google.com
///       clientId: client-id
///       clientSecret: secret
/// ```
///
///
/// ## Import
///
/// DefaultSupportedIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/defaultSupportedIdpConfigs/{{idp_id}}`
///
/// * `{{project}}/{{idp_id}}`
///
/// * `{{idp_id}}`
///
/// When using the `pulumi import` command, DefaultSupportedIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/defaultSupportedIdpConfig:DefaultSupportedIdpConfig default projects/{{project}}/defaultSupportedIdpConfigs/{{idp_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/defaultSupportedIdpConfig:DefaultSupportedIdpConfig default {{project}}/{{idp_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/defaultSupportedIdpConfig:DefaultSupportedIdpConfig default {{idp_id}}
/// ```
class DefaultSupportedIdpConfig extends pulumi.CustomResource {
  /// OAuth client ID
  late final pulumi.Output<String> clientId;
  /// OAuth client secret
  late final pulumi.Output<String> clientSecret;
  /// If this IDP allows the user to sign in
  late final pulumi.Output<bool?> enabled;
  /// ID of the IDP. Possible values include:
  /// * `apple.com`
  /// * `facebook.com`
  /// * `gc.apple.com`
  /// * `github.com`
  /// * `google.com`
  /// * `linkedin.com`
  /// * `microsoft.com`
  /// * `playgames.google.com`
  /// * `twitter.com`
  /// * `yahoo.com`
  late final pulumi.Output<String> idpId;
  /// The name of the DefaultSupportedIdpConfig resource
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [DefaultSupportedIdpConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultSupportedIdpConfig]. {@macro pulumi_identityplatform_default_supported_idp_config_default_supported_idp_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultSupportedIdpConfig(
    String name, {
    DefaultSupportedIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:identityplatform/defaultSupportedIdpConfig:DefaultSupportedIdpConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.enabled = registerOutput<bool?>('enabled');
    this.idpId = registerOutput<String>('idpId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
