import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_response.dart';
import 'server_args.dart';
import 'server_external_administrator_response.dart';
import 'server_private_endpoint_connection_response.dart';

/// An Azure SQL Database server.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2015-05-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// **Warning:** when `AzureADOnlyAuthentication` is enabled, the Azure SQL API rejects any `AdministratorLoginPassword`, even if it is the same as the current one.
///
/// According to the Azure team, this API design owes to the following reasons:
/// - Changing the password is not allowed when Entra-only authentication is enabled because it could lead to invalid templates.
/// - Any updates containing the same, unchanged password are also rejected because different behavior for same vs different passwords would be a vector for brute forcing the password.
///
/// To work around this, you can comment out `AdministratorLoginPassword` when enabling `AzureADOnlyAuthentication`. To update the password, you can disable `AzureADOnlyAuthentication` and re-enable it after the update.
///
/// For more details and discussion please see [this issue](https://github.com/pulumi/pulumi-azure-native/issues/2937).
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create server
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.Sql.Server("server", new()
///     {
///         AdministratorLogin = "dummylogin",
///         AdministratorLoginPassword = "PLACEHOLDER",
///         Administrators = new AzureNative.Sql.Inputs.ServerExternalAdministratorArgs
///         {
///             AzureADOnlyAuthentication = true,
///             Login = "bob@contoso.com",
///             PrincipalType = AzureNative.Sql.PrincipalType.User,
///             Sid = "00000011-1111-2222-2222-123456789111",
///             TenantId = "00000011-1111-2222-2222-123456789111",
///         },
///         IsIPv6Enabled = AzureNative.Sql.ServerNetworkAccessFlag.Enabled,
///         Location = "Japan East",
///         PublicNetworkAccess = AzureNative.Sql.ServerPublicNetworkAccessFlag.Enabled,
///         ResourceGroupName = "sqlcrudtest-7398",
///         RestrictOutboundNetworkAccess = AzureNative.Sql.ServerNetworkAccessFlag.Enabled,
///         ServerName = "sqlcrudtest-4645",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewServer(ctx, "server", &sql.ServerArgs{
/// 			AdministratorLogin:         pulumi.String("dummylogin"),
/// 			AdministratorLoginPassword: pulumi.String("PLACEHOLDER"),
/// 			Administrators: &sql.ServerExternalAdministratorArgs{
/// 				AzureADOnlyAuthentication: pulumi.Bool(true),
/// 				Login:                     pulumi.String("bob@contoso.com"),
/// 				PrincipalType:             pulumi.String(sql.PrincipalTypeUser),
/// 				Sid:                       pulumi.String("00000011-1111-2222-2222-123456789111"),
/// 				TenantId:                  pulumi.String("00000011-1111-2222-2222-123456789111"),
/// 			},
/// 			IsIPv6Enabled:                 pulumi.String(sql.ServerNetworkAccessFlagEnabled),
/// 			Location:                      pulumi.String("Japan East"),
/// 			PublicNetworkAccess:           pulumi.String(sql.ServerPublicNetworkAccessFlagEnabled),
/// 			ResourceGroupName:             pulumi.String("sqlcrudtest-7398"),
/// 			RestrictOutboundNetworkAccess: pulumi.String(sql.ServerNetworkAccessFlagEnabled),
/// 			ServerName:                    pulumi.String("sqlcrudtest-4645"),
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
/// import com.pulumi.azurenative.sql.Server;
/// import com.pulumi.azurenative.sql.ServerArgs;
/// import com.pulumi.azurenative.sql.inputs.ServerExternalAdministratorArgs;
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
///         var server = new Server("server", ServerArgs.builder()
///             .administratorLogin("dummylogin")
///             .administratorLoginPassword("PLACEHOLDER")
///             .administrators(ServerExternalAdministratorArgs.builder()
///                 .azureADOnlyAuthentication(true)
///                 .login("bob@contoso.com")
///                 .principalType("User")
///                 .sid("00000011-1111-2222-2222-123456789111")
///                 .tenantId("00000011-1111-2222-2222-123456789111")
///                 .build())
///             .isIPv6Enabled("Enabled")
///             .location("Japan East")
///             .publicNetworkAccess("Enabled")
///             .resourceGroupName("sqlcrudtest-7398")
///             .restrictOutboundNetworkAccess("Enabled")
///             .serverName("sqlcrudtest-4645")
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
/// const server = new azure_native.sql.Server("server", {
///     administratorLogin: "dummylogin",
///     administratorLoginPassword: "PLACEHOLDER",
///     administrators: {
///         azureADOnlyAuthentication: true,
///         login: "bob@contoso.com",
///         principalType: azure_native.sql.PrincipalType.User,
///         sid: "00000011-1111-2222-2222-123456789111",
///         tenantId: "00000011-1111-2222-2222-123456789111",
///     },
///     isIPv6Enabled: azure_native.sql.ServerNetworkAccessFlag.Enabled,
///     location: "Japan East",
///     publicNetworkAccess: azure_native.sql.ServerPublicNetworkAccessFlag.Enabled,
///     resourceGroupName: "sqlcrudtest-7398",
///     restrictOutboundNetworkAccess: azure_native.sql.ServerNetworkAccessFlag.Enabled,
///     serverName: "sqlcrudtest-4645",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.sql.Server("server",
///     administrator_login="dummylogin",
///     administrator_login_password="PLACEHOLDER",
///     administrators={
///         "azure_ad_only_authentication": True,
///         "login": "bob@contoso.com",
///         "principal_type": azure_native.sql.PrincipalType.USER,
///         "sid": "00000011-1111-2222-2222-123456789111",
///         "tenant_id": "00000011-1111-2222-2222-123456789111",
///     },
///     is_i_pv6_enabled=azure_native.sql.ServerNetworkAccessFlag.ENABLED,
///     location="Japan East",
///     public_network_access=azure_native.sql.ServerPublicNetworkAccessFlag.ENABLED,
///     resource_group_name="sqlcrudtest-7398",
///     restrict_outbound_network_access=azure_native.sql.ServerNetworkAccessFlag.ENABLED,
///     server_name="sqlcrudtest-4645")
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:sql:Server
///     properties:
///       administratorLogin: dummylogin
///       administratorLoginPassword: PLACEHOLDER
///       administrators:
///         azureADOnlyAuthentication: true
///         login: bob@contoso.com
///         principalType: User
///         sid: 00000011-1111-2222-2222-123456789111
///         tenantId: 00000011-1111-2222-2222-123456789111
///       isIPv6Enabled: Enabled
///       location: Japan East
///       publicNetworkAccess: Enabled
///       resourceGroupName: sqlcrudtest-7398
///       restrictOutboundNetworkAccess: Enabled
///       serverName: sqlcrudtest-4645
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
/// $ pulumi import azure-native:sql:Server sqlcrudtest-4645 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}
/// ```
class Server extends pulumi.CustomResource {
  /// Administrator username for the server. Once created it cannot be changed.
  late final pulumi.Output<String?> administratorLogin;
  /// The Azure Active Directory administrator of the server. This can only be used at server create time. If used for server update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  late final pulumi.Output<ServerExternalAdministratorResponse?> administrators;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Status of external governance.
  late final pulumi.Output<String> externalGovernanceStatus;
  /// The Client id used for cross tenant CMK scenario
  late final pulumi.Output<String?> federatedClientId;
  /// The fully qualified domain name of the server.
  late final pulumi.Output<String> fullyQualifiedDomainName;
  /// The Azure Active Directory identity of the server.
  late final pulumi.Output<ResourceIdentityResponse?> identity;
  /// Whether or not to enable IPv6 support for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  late final pulumi.Output<String?> isIPv6Enabled;
  /// A CMK URI of the key to use for encryption.
  late final pulumi.Output<String?> keyId;
  /// Kind of sql server. This is metadata used for the Azure portal experience.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Minimal TLS version. Allowed values: 'None', 1.0', '1.1', '1.2', '1.3'
  late final pulumi.Output<String?> minimalTlsVersion;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The resource id of a user assigned identity to be used by default.
  late final pulumi.Output<String?> primaryUserAssignedIdentityId;
  /// List of private endpoint connections on a server
  late final pulumi.Output<List<ServerPrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// Whether or not public endpoint access is allowed for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled' or 'SecuredByPerimeter'
  late final pulumi.Output<String?> publicNetworkAccess;
  /// Whether or not to restrict outbound network access for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  late final pulumi.Output<String?> restrictOutboundNetworkAccess;
  /// The state of the server.
  late final pulumi.Output<String> state;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// The version of the server.
  late final pulumi.Output<String?> version;
  /// Whether or not existing server has a workspace created and if it allows connection from workspace
  late final pulumi.Output<String> workspaceFeature;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_sql_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(
    String name, {
    ServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:Server',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administratorLogin = registerOutput<String?>('administratorLogin');
    this.administrators = registerOutput<ServerExternalAdministratorResponse?>('administrators');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.externalGovernanceStatus = registerOutput<String>('externalGovernanceStatus');
    this.federatedClientId = registerOutput<String?>('federatedClientId');
    this.fullyQualifiedDomainName = registerOutput<String>('fullyQualifiedDomainName');
    this.identity = registerOutput<ResourceIdentityResponse?>('identity');
    this.isIPv6Enabled = registerOutput<String?>('isIPv6Enabled');
    this.keyId = registerOutput<String?>('keyId');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.minimalTlsVersion = registerOutput<String?>('minimalTlsVersion');
    this.name = registerOutput<String>('name');
    this.primaryUserAssignedIdentityId = registerOutput<String?>('primaryUserAssignedIdentityId');
    this.privateEndpointConnections = registerOutput<List<ServerPrivateEndpointConnectionResponse>>('privateEndpointConnections');
    this.publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    this.restrictOutboundNetworkAccess = registerOutput<String?>('restrictOutboundNetworkAccess');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String?>('version');
    this.workspaceFeature = registerOutput<String>('workspaceFeature');
  }
}
