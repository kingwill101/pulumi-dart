import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_args.dart';
import 'app_authorization_credential.dart';
import 'app_authorization_tenant.dart';
import 'app_authorization_timeouts.dart';

/// Resource for managing an AWS AppFabric App Authorization.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appfabric.AppAuthorization("example", {
///     app: "TERRAFORMCLOUD",
///     appBundleArn: arn,
///     authType: "apiKey",
///     credential: {
///         apiKeyCredentials: [{
///             apiKey: "exampleapikeytoken",
///         }],
///     },
///     tenants: [{
///         tenantDisplayName: "example",
///         tenantIdentifier: "example",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appfabric.AppAuthorization("example",
///     app="TERRAFORMCLOUD",
///     app_bundle_arn=arn,
///     auth_type="apiKey",
///     credential={
///         "api_key_credentials": [{
///             "api_key": "exampleapikeytoken",
///         }],
///     },
///     tenants=[{
///         "tenant_display_name": "example",
///         "tenant_identifier": "example",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppFabric.AppAuthorization("example", new()
///     {
///         App = "TERRAFORMCLOUD",
///         AppBundleArn = arn,
///         AuthType = "apiKey",
///         Credential = new Aws.AppFabric.Inputs.AppAuthorizationCredentialArgs
///         {
///             ApiKeyCredentials = new[]
///             {
///                 new Aws.AppFabric.Inputs.AppAuthorizationCredentialApiKeyCredentialArgs
///                 {
///                     ApiKey = "exampleapikeytoken",
///                 },
///             },
///         },
///         Tenants = new[]
///         {
///             new Aws.AppFabric.Inputs.AppAuthorizationTenantArgs
///             {
///                 TenantDisplayName = "example",
///                 TenantIdentifier = "example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appfabric"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appfabric.NewAppAuthorization(ctx, "example", &appfabric.AppAuthorizationArgs{
/// 			App:          pulumi.String("TERRAFORMCLOUD"),
/// 			AppBundleArn: pulumi.Any(arn),
/// 			AuthType:     pulumi.String("apiKey"),
/// 			Credential: &appfabric.AppAuthorizationCredentialArgs{
/// 				ApiKeyCredentials: appfabric.AppAuthorizationCredentialApiKeyCredentialArray{
/// 					&appfabric.AppAuthorizationCredentialApiKeyCredentialArgs{
/// 						ApiKey: pulumi.String("exampleapikeytoken"),
/// 					},
/// 				},
/// 			},
/// 			Tenants: appfabric.AppAuthorizationTenantArray{
/// 				&appfabric.AppAuthorizationTenantArgs{
/// 					TenantDisplayName: pulumi.String("example"),
/// 					TenantIdentifier:  pulumi.String("example"),
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
/// import com.pulumi.aws.appfabric.AppAuthorization;
/// import com.pulumi.aws.appfabric.AppAuthorizationArgs;
/// import com.pulumi.aws.appfabric.inputs.AppAuthorizationCredentialArgs;
/// import com.pulumi.aws.appfabric.inputs.AppAuthorizationTenantArgs;
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
///         var example = new AppAuthorization("example", AppAuthorizationArgs.builder()
///             .app("TERRAFORMCLOUD")
///             .appBundleArn(arn)
///             .authType("apiKey")
///             .credential(AppAuthorizationCredentialArgs.builder()
///                 .apiKeyCredentials(AppAuthorizationCredentialApiKeyCredentialArgs.builder()
///                     .apiKey("exampleapikeytoken")
///                     .build())
///                 .build())
///             .tenants(AppAuthorizationTenantArgs.builder()
///                 .tenantDisplayName("example")
///                 .tenantIdentifier("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appfabric:AppAuthorization
///     properties:
///       app: TERRAFORMCLOUD
///       appBundleArn: ${arn}
///       authType: apiKey
///       credential:
///         apiKeyCredentials:
///           - apiKey: exampleapikeytoken
///       tenants:
///         - tenantDisplayName: example
///           tenantIdentifier: example
/// ```
class AppAuthorization extends pulumi.CustomResource {
  /// The name of the application for valid values see https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html.
  late final pulumi.Output<String> app;
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final pulumi.Output<String> appBundleArn;
  /// ARN of the App Authorization. Do not begin the description with "An", "The", "Defines", "Indicates", or "Specifies," as these are verbose. In other words, "Indicates the amount of storage," can be rewritten as "Amount of storage," without losing any information.
  late final pulumi.Output<String> arn;
  /// The authorization type for the app authorization valid values are oauth2 and apiKey.
  late final pulumi.Output<String> authType;
  /// The application URL for the OAuth flow.
  late final pulumi.Output<String> authUrl;
  late final pulumi.Output<String> createdAt;
  /// Contains credentials for the application, such as an API key or OAuth2 client ID and secret.
  /// Specify credentials that match the authorization type for your request. For example, if the authorization type for your request is OAuth2 (oauth2), then you should provide only the OAuth2 credentials.
  late final pulumi.Output<AppAuthorizationCredential> credential;
  /// The user persona of the app authorization.
  late final pulumi.Output<String> persona;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Contains information about an application tenant, such as the application display name and identifier.
  late final pulumi.Output<List<AppAuthorizationTenant>> tenants;
  late final pulumi.Output<AppAuthorizationTimeouts?> timeouts;
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [AppAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppAuthorization]. {@macro pulumi_appfabric_app_authorization_app_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppAuthorization(
    String name, {
    AppAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appAuthorization:AppAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.authUrl = registerOutput<String>('authUrl');
    this.createdAt = registerOutput<String>('createdAt');
    this.credential = registerOutput<AppAuthorizationCredential>('credential');
    this.persona = registerOutput<String>('persona');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenants = registerOutput<List<AppAuthorizationTenant>>('tenants');
    this.timeouts = registerOutput<AppAuthorizationTimeouts?>('timeouts');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
