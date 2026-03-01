import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_access_settings.dart';
import 'settings_application_settings.dart';
import 'settings_args.dart';

/// IAP settings - manage IAP settings
///
///
/// To get more information about Settings, see:
///
/// * [API documentation](https://cloud.google.com/iap/docs/reference/rest/v1/IapSettings)
/// * How-to Guides
/// * [Customizing IAP](https://cloud.google.com/iap/docs/customizing)
///
///
///
/// ## Example Usage
///
/// ### Iap Settings Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "iap-bs-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.RegionBackendService("default", {
///     name: "iap-settings-tf",
///     region: "us-central1",
///     healthChecks: defaultHealthCheck.id,
///     connectionDrainingTimeoutSec: 10,
///     sessionAffinity: "CLIENT_IP",
/// });
/// const iapSettings = new gcp.iap.Settings("iap_settings", {
///     name: pulumi.all([project, _default.name]).apply(([project, name]) => `projects/${project.number}/iap_web/compute-us-central1/services/${name}`),
///     accessSettings: {
///         identitySources: ["WORKFORCE_IDENTITY_FEDERATION"],
///         allowedDomainsSettings: {
///             domains: ["test.abc.com"],
///             enable: true,
///         },
///         corsSettings: {
///             allowHttpOptions: true,
///         },
///         reauthSettings: {
///             method: "SECURE_KEY",
///             maxAge: "305s",
///             policyType: "MINIMUM",
///         },
///         gcipSettings: {
///             loginPageUri: "https://test.com/?apiKey=abc",
///         },
///         oauthSettings: {
///             loginHint: "test",
///         },
///         workforceIdentitySettings: {
///             workforcePools: "wif-pool",
///             oauth2: {
///                 clientId: "test-client-id",
///                 clientSecret: "test-client-secret",
///             },
///         },
///     },
///     applicationSettings: {
///         cookieDomain: "test.abc.com",
///         csmSettings: {
///             rctokenAud: "test-aud-set",
///         },
///         accessDeniedPageSettings: {
///             accessDeniedPageUri: "test-uri",
///             generateTroubleshootingUri: true,
///             remediationTokenGenerationEnabled: false,
///         },
///         attributePropagationSettings: {
///             outputCredentials: ["HEADER"],
///             expression: "attributes.saml_attributes.filter(attribute, attribute.name in [\"test1\", \"test2\"])",
///             enable: false,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="iap-bs-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.RegionBackendService("default",
///     name="iap-settings-tf",
///     region="us-central1",
///     health_checks=default_health_check.id,
///     connection_draining_timeout_sec=10,
///     session_affinity="CLIENT_IP")
/// iap_settings = gcp.iap.Settings("iap_settings",
///     name=default.name.apply(lambda name: f"projects/{project.number}/iap_web/compute-us-central1/services/{name}"),
///     access_settings={
///         "identity_sources": ["WORKFORCE_IDENTITY_FEDERATION"],
///         "allowed_domains_settings": {
///             "domains": ["test.abc.com"],
///             "enable": True,
///         },
///         "cors_settings": {
///             "allow_http_options": True,
///         },
///         "reauth_settings": {
///             "method": "SECURE_KEY",
///             "max_age": "305s",
///             "policy_type": "MINIMUM",
///         },
///         "gcip_settings": {
///             "login_page_uri": "https://test.com/?apiKey=abc",
///         },
///         "oauth_settings": {
///             "login_hint": "test",
///         },
///         "workforce_identity_settings": {
///             "workforce_pools": "wif-pool",
///             "oauth2": {
///                 "client_id": "test-client-id",
///                 "client_secret": "test-client-secret",
///             },
///         },
///     },
///     application_settings={
///         "cookie_domain": "test.abc.com",
///         "csm_settings": {
///             "rctoken_aud": "test-aud-set",
///         },
///         "access_denied_page_settings": {
///             "access_denied_page_uri": "test-uri",
///             "generate_troubleshooting_uri": True,
///             "remediation_token_generation_enabled": False,
///         },
///         "attribute_propagation_settings": {
///             "output_credentials": ["HEADER"],
///             "expression": "attributes.saml_attributes.filter(attribute, attribute.name in [\"test1\", \"test2\"])",
///             "enable": False,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "iap-bs-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "iap-settings-tf",
///         Region = "us-central1",
///         HealthChecks = defaultHealthCheck.Id,
///         ConnectionDrainingTimeoutSec = 10,
///         SessionAffinity = "CLIENT_IP",
///     });
///
///     var iapSettings = new Gcp.Iap.Settings("iap_settings", new()
///     {
///         Name = Output.Tuple(project, @default.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/iap_web/compute-us-central1/services/{name}";
///         }),
///         AccessSettings = new Gcp.Iap.Inputs.SettingsAccessSettingsArgs
///         {
///             IdentitySources = new[]
///             {
///                 "WORKFORCE_IDENTITY_FEDERATION",
///             },
///             AllowedDomainsSettings = new Gcp.Iap.Inputs.SettingsAccessSettingsAllowedDomainsSettingsArgs
///             {
///                 Domains = new[]
///                 {
///                     "test.abc.com",
///                 },
///                 Enable = true,
///             },
///             CorsSettings = new Gcp.Iap.Inputs.SettingsAccessSettingsCorsSettingsArgs
///             {
///                 AllowHttpOptions = true,
///             },
///             ReauthSettings = new Gcp.Iap.Inputs.SettingsAccessSettingsReauthSettingsArgs
///             {
///                 Method = "SECURE_KEY",
///                 MaxAge = "305s",
///                 PolicyType = "MINIMUM",
///             },
///             GcipSettings = new Gcp.Iap.Inputs.SettingsAccessSettingsGcipSettingsArgs
///             {
///                 LoginPageUri = "https://test.com/?apiKey=abc",
///             },
///             OauthSettings = new Gcp.Iap.Inputs.SettingsAccessSettingsOauthSettingsArgs
///             {
///                 LoginHint = "test",
///             },
///             WorkforceIdentitySettings = new Gcp.Iap.Inputs.SettingsAccessSettingsWorkforceIdentitySettingsArgs
///             {
///                 WorkforcePools = "wif-pool",
///                 Oauth2 = new Gcp.Iap.Inputs.SettingsAccessSettingsWorkforceIdentitySettingsOauth2Args
///                 {
///                     ClientId = "test-client-id",
///                     ClientSecret = "test-client-secret",
///                 },
///             },
///         },
///         ApplicationSettings = new Gcp.Iap.Inputs.SettingsApplicationSettingsArgs
///         {
///             CookieDomain = "test.abc.com",
///             CsmSettings = new Gcp.Iap.Inputs.SettingsApplicationSettingsCsmSettingsArgs
///             {
///                 RctokenAud = "test-aud-set",
///             },
///             AccessDeniedPageSettings = new Gcp.Iap.Inputs.SettingsApplicationSettingsAccessDeniedPageSettingsArgs
///             {
///                 AccessDeniedPageUri = "test-uri",
///                 GenerateTroubleshootingUri = true,
///                 RemediationTokenGenerationEnabled = false,
///             },
///             AttributePropagationSettings = new Gcp.Iap.Inputs.SettingsApplicationSettingsAttributePropagationSettingsArgs
///             {
///                 OutputCredentials = new[]
///                 {
///                     "HEADER",
///                 },
///                 Expression = "attributes.saml_attributes.filter(attribute, attribute.name in [\"test1\", \"test2\"])",
///                 Enable = false,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("iap-bs-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                         pulumi.String("iap-settings-tf"),
/// 			Region:                       pulumi.String("us-central1"),
/// 			HealthChecks:                 defaultHealthCheck.ID(),
/// 			ConnectionDrainingTimeoutSec: pulumi.Int(10),
/// 			SessionAffinity:              pulumi.String("CLIENT_IP"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iap.NewSettings(ctx, "iap_settings", &iap.SettingsArgs{
/// 			Name: _default.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/iap_web/compute-us-central1/services/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			AccessSettings: &iap.SettingsAccessSettingsArgs{
/// 				IdentitySources: pulumi.StringArray{
/// 					pulumi.String("WORKFORCE_IDENTITY_FEDERATION"),
/// 				},
/// 				AllowedDomainsSettings: &iap.SettingsAccessSettingsAllowedDomainsSettingsArgs{
/// 					Domains: pulumi.StringArray{
/// 						pulumi.String("test.abc.com"),
/// 					},
/// 					Enable: pulumi.Bool(true),
/// 				},
/// 				CorsSettings: &iap.SettingsAccessSettingsCorsSettingsArgs{
/// 					AllowHttpOptions: pulumi.Bool(true),
/// 				},
/// 				ReauthSettings: &iap.SettingsAccessSettingsReauthSettingsArgs{
/// 					Method:     pulumi.String("SECURE_KEY"),
/// 					MaxAge:     pulumi.String("305s"),
/// 					PolicyType: pulumi.String("MINIMUM"),
/// 				},
/// 				GcipSettings: &iap.SettingsAccessSettingsGcipSettingsArgs{
/// 					LoginPageUri: pulumi.String("https://test.com/?apiKey=abc"),
/// 				},
/// 				OauthSettings: &iap.SettingsAccessSettingsOauthSettingsArgs{
/// 					LoginHint: pulumi.String("test"),
/// 				},
/// 				WorkforceIdentitySettings: &iap.SettingsAccessSettingsWorkforceIdentitySettingsArgs{
/// 					WorkforcePools: pulumi.String("wif-pool"),
/// 					Oauth2: &iap.SettingsAccessSettingsWorkforceIdentitySettingsOauth2Args{
/// 						ClientId:     pulumi.String("test-client-id"),
/// 						ClientSecret: pulumi.String("test-client-secret"),
/// 					},
/// 				},
/// 			},
/// 			ApplicationSettings: &iap.SettingsApplicationSettingsArgs{
/// 				CookieDomain: pulumi.String("test.abc.com"),
/// 				CsmSettings: &iap.SettingsApplicationSettingsCsmSettingsArgs{
/// 					RctokenAud: pulumi.String("test-aud-set"),
/// 				},
/// 				AccessDeniedPageSettings: &iap.SettingsApplicationSettingsAccessDeniedPageSettingsArgs{
/// 					AccessDeniedPageUri:               pulumi.String("test-uri"),
/// 					GenerateTroubleshootingUri:        pulumi.Bool(true),
/// 					RemediationTokenGenerationEnabled: pulumi.Bool(false),
/// 				},
/// 				AttributePropagationSettings: &iap.SettingsApplicationSettingsAttributePropagationSettingsArgs{
/// 					OutputCredentials: pulumi.StringArray{
/// 						pulumi.String("HEADER"),
/// 					},
/// 					Expression: pulumi.String("attributes.saml_attributes.filter(attribute, attribute.name in [\"test1\", \"test2\"])"),
/// 					Enable:     pulumi.Bool(false),
/// 				},
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.iap.Settings;
/// import com.pulumi.gcp.iap.SettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsAccessSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsAccessSettingsAllowedDomainsSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsAccessSettingsCorsSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsAccessSettingsReauthSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsAccessSettingsGcipSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsAccessSettingsOauthSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsAccessSettingsWorkforceIdentitySettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsAccessSettingsWorkforceIdentitySettingsOauth2Args;
/// import com.pulumi.gcp.iap.inputs.SettingsApplicationSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsApplicationSettingsCsmSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsApplicationSettingsAccessDeniedPageSettingsArgs;
/// import com.pulumi.gcp.iap.inputs.SettingsApplicationSettingsAttributePropagationSettingsArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("iap-bs-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new RegionBackendService("default", RegionBackendServiceArgs.builder()
///             .name("iap-settings-tf")
///             .region("us-central1")
///             .healthChecks(defaultHealthCheck.id())
///             .connectionDrainingTimeoutSec(10)
///             .sessionAffinity("CLIENT_IP")
///             .build());
///
///         var iapSettings = new Settings("iapSettings", SettingsArgs.builder()
///             .name(default_.name().applyValue(_name -> String.format("projects/%s/iap_web/compute-us-central1/services/%s", project.number(),_name)))
///             .accessSettings(SettingsAccessSettingsArgs.builder()
///                 .identitySources("WORKFORCE_IDENTITY_FEDERATION")
///                 .allowedDomainsSettings(SettingsAccessSettingsAllowedDomainsSettingsArgs.builder()
///                     .domains("test.abc.com")
///                     .enable(true)
///                     .build())
///                 .corsSettings(SettingsAccessSettingsCorsSettingsArgs.builder()
///                     .allowHttpOptions(true)
///                     .build())
///                 .reauthSettings(SettingsAccessSettingsReauthSettingsArgs.builder()
///                     .method("SECURE_KEY")
///                     .maxAge("305s")
///                     .policyType("MINIMUM")
///                     .build())
///                 .gcipSettings(SettingsAccessSettingsGcipSettingsArgs.builder()
///                     .loginPageUri("https://test.com/?apiKey=abc")
///                     .build())
///                 .oauthSettings(SettingsAccessSettingsOauthSettingsArgs.builder()
///                     .loginHint("test")
///                     .build())
///                 .workforceIdentitySettings(SettingsAccessSettingsWorkforceIdentitySettingsArgs.builder()
///                     .workforcePools("wif-pool")
///                     .oauth2(SettingsAccessSettingsWorkforceIdentitySettingsOauth2Args.builder()
///                         .clientId("test-client-id")
///                         .clientSecret("test-client-secret")
///                         .build())
///                     .build())
///                 .build())
///             .applicationSettings(SettingsApplicationSettingsArgs.builder()
///                 .cookieDomain("test.abc.com")
///                 .csmSettings(SettingsApplicationSettingsCsmSettingsArgs.builder()
///                     .rctokenAud("test-aud-set")
///                     .build())
///                 .accessDeniedPageSettings(SettingsApplicationSettingsAccessDeniedPageSettingsArgs.builder()
///                     .accessDeniedPageUri("test-uri")
///                     .generateTroubleshootingUri(true)
///                     .remediationTokenGenerationEnabled(false)
///                     .build())
///                 .attributePropagationSettings(SettingsApplicationSettingsAttributePropagationSettingsArgs.builder()
///                     .outputCredentials("HEADER")
///                     .expression("attributes.saml_attributes.filter(attribute, attribute.name in [\"test1\", \"test2\"])")
///                     .enable(false)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: iap-settings-tf
///       region: us-central1
///       healthChecks: ${defaultHealthCheck.id}
///       connectionDrainingTimeoutSec: 10
///       sessionAffinity: CLIENT_IP
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: iap-bs-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   iapSettings:
///     type: gcp:iap:Settings
///     name: iap_settings
///     properties:
///       name: projects/${project.number}/iap_web/compute-us-central1/services/${default.name}
///       accessSettings:
///         identitySources:
///           - WORKFORCE_IDENTITY_FEDERATION
///         allowedDomainsSettings:
///           domains:
///             - test.abc.com
///           enable: true
///         corsSettings:
///           allowHttpOptions: true
///         reauthSettings:
///           method: SECURE_KEY
///           maxAge: 305s
///           policyType: MINIMUM
///         gcipSettings:
///           loginPageUri: https://test.com/?apiKey=abc
///         oauthSettings:
///           loginHint: test
///         workforceIdentitySettings:
///           workforcePools: wif-pool
///           oauth2:
///             clientId: test-client-id
///             clientSecret: test-client-secret
///       applicationSettings:
///         cookieDomain: test.abc.com
///         csmSettings:
///           rctokenAud: test-aud-set
///         accessDeniedPageSettings:
///           accessDeniedPageUri: test-uri
///           generateTroubleshootingUri: true
///           remediationTokenGenerationEnabled: false
///         attributePropagationSettings:
///           outputCredentials:
///             - HEADER
///           expression: attributes.saml_attributes.filter(attribute, attribute.name in ["test1", "test2"])
///           enable: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Settings can be imported using any of these accepted formats:
///
/// * `{{name}}/iapSettings`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Settings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/settings:Settings default {{name}}/iapSettings
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/settings:Settings default {{name}}
/// ```
class Settings extends pulumi.CustomResource {
  /// Top level wrapper for all access related setting in IAP.
  /// Structure is documented below.
  late final pulumi.Output<SettingsAccessSettings?> accessSettings;
  /// Top level wrapper for all application related settings in IAP.
  /// Structure is documented below.
  late final pulumi.Output<SettingsApplicationSettings?> applicationSettings;
  /// The resource name of the IAP protected resource. Name can have below resources:
  /// * organizations/{organization_id}
  /// * folders/{folder_id}
  /// * projects/{project_id}
  /// * projects/{project_id}/iap_web
  /// * projects/{project_id}/iap_web/compute
  /// * projects/{project_id}/iap_web/compute-{region}
  /// * projects/{project_id}/iap_web/compute/services/{service_id}
  /// * projects/{project_id}/iap_web/compute-{region}/services/{service_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}/services/{service_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}/services/{service_id}/version/{version_id}
  late final pulumi.Output<String> name;

  /// Creates a new [Settings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Settings]. {@macro pulumi_iap_settings_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Settings(
    String name, {
    SettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/settings:Settings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessSettings = registerOutput<SettingsAccessSettings?>('accessSettings');
    this.applicationSettings = registerOutput<SettingsApplicationSettings?>('applicationSettings');
    this.name = registerOutput<String>('name');
  }
}
