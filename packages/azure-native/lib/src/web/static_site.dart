import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_connection_overview_response.dart';
import 'managed_service_identity_response.dart';
import 'response_message_envelope_remote_private_endpoint_connection_response.dart';
import 'sku_description_response.dart';
import 'static_site_args.dart';
import 'static_site_build_properties_response.dart';
import 'static_site_linked_backend_response.dart';
import 'static_site_template_options_response.dart';
import 'static_site_user_provided_function_app_response.dart';

/// Static Site ARM resource.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a static site
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var staticSite = new AzureNative.Web.StaticSite("staticSite", new()
///     {
///         Branch = "master",
///         BuildProperties = new AzureNative.Web.Inputs.StaticSiteBuildPropertiesArgs
///         {
///             ApiLocation = "api",
///             AppArtifactLocation = "build",
///             AppLocation = "app",
///         },
///         Location = "West US 2",
///         Name = "testStaticSite0",
///         RepositoryToken = "repoToken123",
///         RepositoryUrl = "https://github.com/username/RepoName",
///         ResourceGroupName = "rg",
///         Sku = new AzureNative.Web.Inputs.SkuDescriptionArgs
///         {
///             Name = "Basic",
///             Tier = "Basic",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewStaticSite(ctx, "staticSite", &web.StaticSiteArgs{
/// 			Branch: pulumi.String("master"),
/// 			BuildProperties: &web.StaticSiteBuildPropertiesArgs{
/// 				ApiLocation:         pulumi.String("api"),
/// 				AppArtifactLocation: pulumi.String("build"),
/// 				AppLocation:         pulumi.String("app"),
/// 			},
/// 			Location:          pulumi.String("West US 2"),
/// 			Name:              pulumi.String("testStaticSite0"),
/// 			RepositoryToken:   pulumi.String("repoToken123"),
/// 			RepositoryUrl:     pulumi.String("https://github.com/username/RepoName"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Sku: &web.SkuDescriptionArgs{
/// 				Name: pulumi.String("Basic"),
/// 				Tier: pulumi.String("Basic"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.StaticSite;
/// import com.pulumi.azurenative.web.StaticSiteArgs;
/// import com.pulumi.azurenative.web.inputs.StaticSiteBuildPropertiesArgs;
/// import com.pulumi.azurenative.web.inputs.SkuDescriptionArgs;
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
///         var staticSite = new StaticSite("staticSite", StaticSiteArgs.builder()
///             .branch("master")
///             .buildProperties(StaticSiteBuildPropertiesArgs.builder()
///                 .apiLocation("api")
///                 .appArtifactLocation("build")
///                 .appLocation("app")
///                 .build())
///             .location("West US 2")
///             .name("testStaticSite0")
///             .repositoryToken("repoToken123")
///             .repositoryUrl("https://github.com/username/RepoName")
///             .resourceGroupName("rg")
///             .sku(SkuDescriptionArgs.builder()
///                 .name("Basic")
///                 .tier("Basic")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const staticSite = new azure_native.web.StaticSite("staticSite", {
///     branch: "master",
///     buildProperties: {
///         apiLocation: "api",
///         appArtifactLocation: "build",
///         appLocation: "app",
///     },
///     location: "West US 2",
///     name: "testStaticSite0",
///     repositoryToken: "repoToken123",
///     repositoryUrl: "https://github.com/username/RepoName",
///     resourceGroupName: "rg",
///     sku: {
///         name: "Basic",
///         tier: "Basic",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// static_site = azure_native.web.StaticSite("staticSite",
///     branch="master",
///     build_properties={
///         "api_location": "api",
///         "app_artifact_location": "build",
///         "app_location": "app",
///     },
///     location="West US 2",
///     name="testStaticSite0",
///     repository_token="repoToken123",
///     repository_url="https://github.com/username/RepoName",
///     resource_group_name="rg",
///     sku={
///         "name": "Basic",
///         "tier": "Basic",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   staticSite:
///     type: azure-native:web:StaticSite
///     properties:
///       branch: master
///       buildProperties:
///         apiLocation: api
///         appArtifactLocation: build
///         appLocation: app
///       location: West US 2
///       name: testStaticSite0
///       repositoryToken: repoToken123
///       repositoryUrl: https://github.com/username/RepoName
///       resourceGroupName: rg
///       sku:
///         name: Basic
///         tier: Basic
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:StaticSite testStaticSite0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/staticSites/{name}
/// ```
class StaticSite extends pulumi.CustomResource {
  /// <code>false</code> if config file is locked for this static web app; otherwise, <code>true</code>.
  late final pulumi.Output<bool?> allowConfigFileUpdates;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The target branch in the repository.
  late final pulumi.Output<String?> branch;
  /// Build properties to configure on the repository.
  late final pulumi.Output<StaticSiteBuildPropertiesResponse?> buildProperties;
  /// The content distribution endpoint for the static site.
  late final pulumi.Output<String> contentDistributionEndpoint;
  /// The custom domains associated with this static site.
  late final pulumi.Output<List<String>> customDomains;
  /// Database connections for the static site
  late final pulumi.Output<List<DatabaseConnectionOverviewResponse>> databaseConnections;
  /// The default autogenerated hostname for the static site.
  late final pulumi.Output<String> defaultHostname;
  /// State indicating the status of the enterprise grade CDN serving traffic to the static web app.
  late final pulumi.Output<String?> enterpriseGradeCdnStatus;
  /// Managed service identity.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Identity to use for Key Vault Reference authentication.
  late final pulumi.Output<String> keyVaultReferenceIdentity;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;
  /// Backends linked to the static side
  late final pulumi.Output<List<StaticSiteLinkedBackendResponse>> linkedBackends;
  /// Resource Location.
  late final pulumi.Output<String> location;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Private endpoint connections
  late final pulumi.Output<List<ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The provider that submitted the last deployment to the primary environment of the static site.
  late final pulumi.Output<String?> provider;
  /// State indicating whether public traffic are allowed or not for a static web app. Allowed Values: 'Enabled', 'Disabled' or an empty string.
  late final pulumi.Output<String?> publicNetworkAccess;
  /// A user's github repository token. This is used to setup the Github Actions workflow file and API secrets.
  late final pulumi.Output<String?> repositoryToken;
  /// URL for the repository of the static site.
  late final pulumi.Output<String?> repositoryUrl;
  /// Description of a SKU for a scalable resource.
  late final pulumi.Output<SkuDescriptionResponse?> sku;
  /// State indicating whether staging environments are allowed or not allowed for a static web app.
  late final pulumi.Output<String?> stagingEnvironmentPolicy;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Template options for generating a new repository.
  late final pulumi.Output<StaticSiteTemplateOptionsResponse?> templateProperties;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// User provided function apps registered with the static site
  late final pulumi.Output<List<StaticSiteUserProvidedFunctionAppResponse>> userProvidedFunctionApps;

  /// Creates a new [StaticSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticSite]. {@macro pulumi_web_static_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticSite(
    String name, {
    StaticSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:StaticSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowConfigFileUpdates = registerOutput<bool?>('allowConfigFileUpdates');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.branch = registerOutput<String?>('branch');
    this.buildProperties = registerOutput<StaticSiteBuildPropertiesResponse?>('buildProperties');
    this.contentDistributionEndpoint = registerOutput<String>('contentDistributionEndpoint');
    this.customDomains = registerOutput<List<String>>('customDomains');
    this.databaseConnections = registerOutput<List<DatabaseConnectionOverviewResponse>>('databaseConnections');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.enterpriseGradeCdnStatus = registerOutput<String?>('enterpriseGradeCdnStatus');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.keyVaultReferenceIdentity = registerOutput<String>('keyVaultReferenceIdentity');
    this.kind = registerOutput<String?>('kind');
    this.linkedBackends = registerOutput<List<StaticSiteLinkedBackendResponse>>('linkedBackends');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointConnections = registerOutput<List<ResponseMessageEnvelopeRemotePrivateEndpointConnectionResponse>>('privateEndpointConnections');
    this.provider = registerOutput<String?>('provider');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.repositoryToken = registerOutput<String?>('repositoryToken');
    this.repositoryUrl = registerOutput<String?>('repositoryUrl');
    this.sku = registerOutput<SkuDescriptionResponse?>('sku');
    this.stagingEnvironmentPolicy = registerOutput<String?>('stagingEnvironmentPolicy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.templateProperties = registerOutput<StaticSiteTemplateOptionsResponse?>('templateProperties');
    this.type = registerOutput<String>('type');
    this.userProvidedFunctionApps = registerOutput<List<StaticSiteUserProvidedFunctionAppResponse>>('userProvidedFunctionApps');
  }
}
