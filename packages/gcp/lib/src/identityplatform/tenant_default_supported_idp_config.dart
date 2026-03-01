import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_default_supported_idp_config_args.dart';

/// Configurations options for the tenant for authenticating with a the standard set of Identity Toolkit-trusted IDPs.
///
/// You must enable the
/// [Google Identity Platform](https://console.cloud.google.com/marketplace/details/google-cloud-platform/customer-identity) in
/// the marketplace prior to using this resource.
///
///
///
/// ## Example Usage
///
/// ### Identity Platform Tenant Default Supported Idp Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tenant = new gcp.identityplatform.Tenant("tenant", {displayName: "tenant"});
/// const idpConfig = new gcp.identityplatform.TenantDefaultSupportedIdpConfig("idp_config", {
///     enabled: true,
///     tenant: tenant.name,
///     idpId: "playgames.google.com",
///     clientId: "my-client-id",
///     clientSecret: "secret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tenant = gcp.identityplatform.Tenant("tenant", display_name="tenant")
/// idp_config = gcp.identityplatform.TenantDefaultSupportedIdpConfig("idp_config",
///     enabled=True,
///     tenant=tenant.name,
///     idp_id="playgames.google.com",
///     client_id="my-client-id",
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
///     var tenant = new Gcp.IdentityPlatform.Tenant("tenant", new()
///     {
///         DisplayName = "tenant",
///     });
///
///     var idpConfig = new Gcp.IdentityPlatform.TenantDefaultSupportedIdpConfig("idp_config", new()
///     {
///         Enabled = true,
///         Tenant = tenant.Name,
///         IdpId = "playgames.google.com",
///         ClientId = "my-client-id",
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
/// 		tenant, err := identityplatform.NewTenant(ctx, "tenant", &identityplatform.TenantArgs{
/// 			DisplayName: pulumi.String("tenant"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identityplatform.NewTenantDefaultSupportedIdpConfig(ctx, "idp_config", &identityplatform.TenantDefaultSupportedIdpConfigArgs{
/// 			Enabled:      pulumi.Bool(true),
/// 			Tenant:       tenant.Name,
/// 			IdpId:        pulumi.String("playgames.google.com"),
/// 			ClientId:     pulumi.String("my-client-id"),
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
/// import com.pulumi.gcp.identityplatform.Tenant;
/// import com.pulumi.gcp.identityplatform.TenantArgs;
/// import com.pulumi.gcp.identityplatform.TenantDefaultSupportedIdpConfig;
/// import com.pulumi.gcp.identityplatform.TenantDefaultSupportedIdpConfigArgs;
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
///         var tenant = new Tenant("tenant", TenantArgs.builder()
///             .displayName("tenant")
///             .build());
///
///         var idpConfig = new TenantDefaultSupportedIdpConfig("idpConfig", TenantDefaultSupportedIdpConfigArgs.builder()
///             .enabled(true)
///             .tenant(tenant.name())
///             .idpId("playgames.google.com")
///             .clientId("my-client-id")
///             .clientSecret("secret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tenant:
///     type: gcp:identityplatform:Tenant
///     properties:
///       displayName: tenant
///   idpConfig:
///     type: gcp:identityplatform:TenantDefaultSupportedIdpConfig
///     name: idp_config
///     properties:
///       enabled: true
///       tenant: ${tenant.name}
///       idpId: playgames.google.com
///       clientId: my-client-id
///       clientSecret: secret
/// ```
///
///
/// ## Import
///
/// TenantDefaultSupportedIdpConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/tenants/{{tenant}}/defaultSupportedIdpConfigs/{{idp_id}}`
///
/// * `{{project}}/{{tenant}}/{{idp_id}}`
///
/// * `{{tenant}}/{{idp_id}}`
///
/// When using the `pulumi import` command, TenantDefaultSupportedIdpConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default projects/{{project}}/tenants/{{tenant}}/defaultSupportedIdpConfigs/{{idp_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default {{project}}/{{tenant}}/{{idp_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig default {{tenant}}/{{idp_id}}
/// ```
class TenantDefaultSupportedIdpConfig extends pulumi.CustomResource {
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

  /// The name of the default supported IDP config resource
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The name of the tenant where this DefaultSupportedIdpConfig resource exists
  late final pulumi.Output<String> tenant;

  /// Creates a new [TenantDefaultSupportedIdpConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantDefaultSupportedIdpConfig]. {@macro pulumi_identityplatform_tenant_default_supported_idp_config_tenant_default_supported_idp_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantDefaultSupportedIdpConfig(
    String name, {
    TenantDefaultSupportedIdpConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:identityplatform/tenantDefaultSupportedIdpConfig:TenantDefaultSupportedIdpConfig',
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
    this.tenant = registerOutput<String>('tenant');
  }
}
