import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_args.dart';
import 'app_authorization_credential.dart';
import 'app_authorization_state.dart';
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
///     credential: {
///         apiKeyCredentials: [{
///             apiKey: "exampleapikeytoken",
///         }],
///     },
///     tenants: [{
///         tenantDisplayName: "example",
///         tenantIdentifier: "example",
///     }],
///     app: "TERRAFORMCLOUD",
///     appBundleArn: arn,
///     authType: "apiKey",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appfabric.AppAuthorization("example",
///     credential={
///         "api_key_credentials": [{
///             "api_key": "exampleapikeytoken",
///         }],
///     },
///     tenants=[{
///         "tenant_display_name": "example",
///         "tenant_identifier": "example",
///     }],
///     app="TERRAFORMCLOUD",
///     app_bundle_arn=arn,
///     auth_type="apiKey")
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
///         App = "TERRAFORMCLOUD",
///         AppBundleArn = arn,
///         AuthType = "apiKey",
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
/// 			App:          pulumi.String("TERRAFORMCLOUD"),
/// 			AppBundleArn: pulumi.Any(arn),
/// 			AuthType:     pulumi.String("apiKey"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_appfabric_appauthorization" "example" {
///   credential = {
///     api_key_credentials = [{
///       "apiKey" = "exampleapikeytoken"
///     }]
///   }
///   tenants {
///     tenant_display_name = "example"
///     tenant_identifier   = "example"
///   }
///   app            = "TERRAFORMCLOUD"
///   app_bundle_arn = arn
///   auth_type      = "apiKey"
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
/// import com.pulumi.aws.appfabric.inputs.AppAuthorizationCredentialApiKeyCredentialArgs;
/// import com.pulumi.aws.appfabric.inputs.AppAuthorizationTenantArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .credential(AppAuthorizationCredentialArgs.builder()
///                 .apiKeyCredentials(AppAuthorizationCredentialApiKeyCredentialArgs.builder()
///                     .apiKey("exampleapikeytoken")
///                     .build())
///                 .build())
///             .tenants(AppAuthorizationTenantArgs.builder()
///                 .tenantDisplayName("example")
///                 .tenantIdentifier("example")
///                 .build())
///             .app("TERRAFORMCLOUD")
///             .appBundleArn(arn)
///             .authType("apiKey")
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
///       credential:
///         apiKeyCredentials:
///           - apiKey: exampleapikeytoken
///       tenants:
///         - tenantDisplayName: example
///           tenantIdentifier: example
///       app: TERRAFORMCLOUD
///       appBundleArn: ${arn}
///       authType: apiKey
/// ```
class AppAuthorization extends pulumi.CustomResource {
  /// Name of the application. For valid values, see the [CreateAppAuthorization API reference](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html).
  late final pulumi.Output<String> app;
  /// ARN of the app bundle to use for the request.
  late final pulumi.Output<String> appBundleArn;
  /// ARN of the App Authorization.
  late final pulumi.Output<String> arn;
  /// Authorization type for the app authorization. Valid values are `oauth2` and `apiKey`.
  late final pulumi.Output<String> authType;
  /// Application URL for the OAuth flow.
  late final pulumi.Output<String> authUrl;
  /// Timestamp of when the app authorization was created.
  late final pulumi.Output<String> createdAt;
  /// Credentials for the application, such as an API key or OAuth2 client ID and secret. Specify credentials that match the authorization type for your request. For example, if the authorization type for your request is OAuth2 (`oauth2`), then you should provide only the OAuth2 credentials. See `credential` Block for details.
  late final pulumi.Output<AppAuthorizationCredential> credential;
  /// User persona of the app authorization.
  late final pulumi.Output<String> persona;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Information about an application tenant, such as the application display name and identifier. See `tenant` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<AppAuthorizationTenant>> tenants;
  late final pulumi.Output<AppAuthorizationTimeouts?> timeouts;
  /// Timestamp of when the app authorization was last updated.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    app = registerOutput<String>('app');
    appBundleArn = registerOutput<String>('appBundleArn');
    arn = registerOutput<String>('arn');
    authType = registerOutput<String>('authType');
    authUrl = registerOutput<String>('authUrl');
    createdAt = registerOutput<String>('createdAt');
    credential = registerOutput<AppAuthorizationCredential>('credential', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppAuthorizationCredential.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    persona = registerOutput<String>('persona');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenants = registerOutput<List<AppAuthorizationTenant>>('tenants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppAuthorizationTenant>(guardedValue, (value) => AppAuthorizationTenant.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<AppAuthorizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppAuthorizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [AppAuthorization] resource's state with the given [name] and [id].
  static AppAuthorization get(
    String name,
    pulumi.Input<String> id, {
    AppAuthorizationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppAuthorization._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppAuthorization._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appAuthorization:AppAuthorization',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    app = registerOutput<String>('app');
    appBundleArn = registerOutput<String>('appBundleArn');
    arn = registerOutput<String>('arn');
    authType = registerOutput<String>('authType');
    authUrl = registerOutput<String>('authUrl');
    createdAt = registerOutput<String>('createdAt');
    credential = registerOutput<AppAuthorizationCredential>('credential', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppAuthorizationCredential.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    persona = registerOutput<String>('persona');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenants = registerOutput<List<AppAuthorizationTenant>>('tenants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppAuthorizationTenant>(guardedValue, (value) => AppAuthorizationTenant.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<AppAuthorizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppAuthorizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [AppAuthorization] resource.
  AppAuthorization.reference(String urn)
    : super(
        'aws:appfabric/appAuthorization:AppAuthorization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    app = registerOutput<String>('app');
    appBundleArn = registerOutput<String>('appBundleArn');
    arn = registerOutput<String>('arn');
    authType = registerOutput<String>('authType');
    authUrl = registerOutput<String>('authUrl');
    createdAt = registerOutput<String>('createdAt');
    credential = registerOutput<AppAuthorizationCredential>('credential', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppAuthorizationCredential.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    persona = registerOutput<String>('persona');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenants = registerOutput<List<AppAuthorizationTenant>>('tenants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AppAuthorizationTenant>(guardedValue, (value) => AppAuthorizationTenant.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<AppAuthorizationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppAuthorizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
