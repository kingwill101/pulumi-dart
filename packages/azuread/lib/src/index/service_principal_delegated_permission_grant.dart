import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_principal_delegated_permission_grant_args.dart';

/// Manages a delegated permission grant for a service principal, on behalf of a single user, or all users.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application role: `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one the following directory role: `Global Administrator`
///
/// ## Example Usage
///
/// *Delegated permission grant for all users*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const wellKnown = azuread.getApplicationPublishedAppIds({});
/// const msgraph = new azuread.ServicePrincipal("msgraph", {
///     clientId: wellKnown.then(wellKnown => wellKnown.result?.microsoftGraph),
///     useExisting: true,
/// });
/// const example = new azuread.Application("example", {
///     displayName: "example",
///     requiredResourceAccesses: [{
///         resourceAppId: wellKnown.then(wellKnown => wellKnown.result?.microsoftGraph),
///         resourceAccesses: [
///             {
///                 id: msgraph.oauth2PermissionScopeIds.openid,
///                 type: "Scope",
///             },
///             {
///                 id: msgraph.oauth2PermissionScopeIds["User.Read"],
///                 type: "Scope",
///             },
///         ],
///     }],
/// });
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleServicePrincipalDelegatedPermissionGrant = new azuread.ServicePrincipalDelegatedPermissionGrant("example", {
///     servicePrincipalObjectId: exampleServicePrincipal.objectId,
///     resourceServicePrincipalObjectId: msgraph.objectId,
///     claimValues: [
///         "openid",
///         "User.Read.All",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// well_known = azuread.get_application_published_app_ids()
/// msgraph = azuread.ServicePrincipal("msgraph",
///     client_id=well_known.result["microsoftGraph"],
///     use_existing=True)
/// example = azuread.Application("example",
///     display_name="example",
///     required_resource_accesses=[{
///         "resource_app_id": well_known.result["microsoftGraph"],
///         "resource_accesses": [
///             {
///                 "id": msgraph.oauth2_permission_scope_ids["openid"],
///                 "type": "Scope",
///             },
///             {
///                 "id": msgraph.oauth2_permission_scope_ids["User.Read"],
///                 "type": "Scope",
///             },
///         ],
///     }])
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_service_principal_delegated_permission_grant = azuread.ServicePrincipalDelegatedPermissionGrant("example",
///     service_principal_object_id=example_service_principal.object_id,
///     resource_service_principal_object_id=msgraph.object_id,
///     claim_values=[
///         "openid",
///         "User.Read.All",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wellKnown = AzureAD.GetApplicationPublishedAppIds.Invoke();
///
///     var msgraph = new AzureAD.ServicePrincipal("msgraph", new()
///     {
///         ClientId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
///         UseExisting = true,
///     });
///
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         RequiredResourceAccesses = new[]
///         {
///             new AzureAD.Inputs.ApplicationRequiredResourceAccessArgs
///             {
///                 ResourceAppId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
///                 ResourceAccesses = new[]
///                 {
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = msgraph.Oauth2PermissionScopeIds.Apply(oauth2PermissionScopeIds => oauth2PermissionScopeIds.Openid),
///                         Type = "Scope",
///                     },
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = msgraph.Oauth2PermissionScopeIds.Apply(oauth2PermissionScopeIds => oauth2PermissionScopeIds.User_Read),
///                         Type = "Scope",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///     });
///
///     var exampleServicePrincipalDelegatedPermissionGrant = new AzureAD.ServicePrincipalDelegatedPermissionGrant("example", new()
///     {
///         ServicePrincipalObjectId = exampleServicePrincipal.ObjectId,
///         ResourceServicePrincipalObjectId = msgraph.ObjectId,
///         ClaimValues = new[]
///         {
///             "openid",
///             "User.Read.All",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		wellKnown, err := azuread.GetApplicationPublishedAppIds(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		msgraph, err := azuread.NewServicePrincipal(ctx, "msgraph", &azuread.ServicePrincipalArgs{
/// 			ClientId:    pulumi.String(wellKnown.Result.MicrosoftGraph),
/// 			UseExisting: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			RequiredResourceAccesses: azuread.ApplicationRequiredResourceAccessArray{
/// 				&azuread.ApplicationRequiredResourceAccessArgs{
/// 					ResourceAppId: pulumi.String(wellKnown.Result.MicrosoftGraph),
/// 					ResourceAccesses: azuread.ApplicationRequiredResourceAccessResourceAccessArray{
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: msgraph.Oauth2PermissionScopeIds.ApplyT(func(oauth2PermissionScopeIds map[string]string) (string, error) {
/// 								return oauth2PermissionScopeIds.Openid, nil
/// 							}).(pulumi.StringOutput),
/// 							Type: pulumi.String("Scope"),
/// 						},
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: msgraph.Oauth2PermissionScopeIds.ApplyT(func(oauth2PermissionScopeIds map[string]string) (string, error) {
/// 								return oauth2PermissionScopeIds.User.Read, nil
/// 							}).(pulumi.StringOutput),
/// 							Type: pulumi.String("Scope"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePrincipal, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId: example.ClientId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipalDelegatedPermissionGrant(ctx, "example", &azuread.ServicePrincipalDelegatedPermissionGrantArgs{
/// 			ServicePrincipalObjectId:         exampleServicePrincipal.ObjectId,
/// 			ResourceServicePrincipalObjectId: msgraph.ObjectId,
/// 			ClaimValues: pulumi.StringArray{
/// 				pulumi.String("openid"),
/// 				pulumi.String("User.Read.All"),
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.inputs.ApplicationRequiredResourceAccessArgs;
/// import com.pulumi.azuread.ServicePrincipalDelegatedPermissionGrant;
/// import com.pulumi.azuread.ServicePrincipalDelegatedPermissionGrantArgs;
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
///         final var wellKnown = AzureadFunctions.getApplicationPublishedAppIds(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var msgraph = new ServicePrincipal("msgraph", ServicePrincipalArgs.builder()
///             .clientId(wellKnown.result().microsoftGraph())
///             .useExisting(true)
///             .build());
///
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .requiredResourceAccesses(ApplicationRequiredResourceAccessArgs.builder()
///                 .resourceAppId(wellKnown.result().microsoftGraph())
///                 .resourceAccesses(
///                     ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id(msgraph.oauth2PermissionScopeIds().applyValue(_oauth2PermissionScopeIds -> _oauth2PermissionScopeIds.openid()))
///                         .type("Scope")
///                         .build(),
///                     ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id(msgraph.oauth2PermissionScopeIds().applyValue(_oauth2PermissionScopeIds -> _oauth2PermissionScopeIds.User.Read()))
///                         .type("Scope")
///                         .build())
///                 .build())
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleServicePrincipalDelegatedPermissionGrant = new ServicePrincipalDelegatedPermissionGrant("exampleServicePrincipalDelegatedPermissionGrant", ServicePrincipalDelegatedPermissionGrantArgs.builder()
///             .servicePrincipalObjectId(exampleServicePrincipal.objectId())
///             .resourceServicePrincipalObjectId(msgraph.objectId())
///             .claimValues(
///                 "openid",
///                 "User.Read.All")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   msgraph:
///     type: azuread:ServicePrincipal
///     properties:
///       clientId: ${wellKnown.result.microsoftGraph}
///       useExisting: true
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///       requiredResourceAccesses:
///         - resourceAppId: ${wellKnown.result.microsoftGraph}
///           resourceAccesses:
///             - id: ${msgraph.oauth2PermissionScopeIds.openid}
///               type: Scope
///             - id: ${msgraph.oauth2PermissionScopeIds"User.Read"[%!s(MISSING)]}
///               type: Scope
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///   exampleServicePrincipalDelegatedPermissionGrant:
///     type: azuread:ServicePrincipalDelegatedPermissionGrant
///     name: example
///     properties:
///       servicePrincipalObjectId: ${exampleServicePrincipal.objectId}
///       resourceServicePrincipalObjectId: ${msgraph.objectId}
///       claimValues:
///         - openid
///         - User.Read.All
/// variables:
///   wellKnown:
///     fn::invoke:
///       function: azuread:getApplicationPublishedAppIds
///       arguments: {}
/// ```
///
///
/// *Delegated permission grant for a single user*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const wellKnown = azuread.getApplicationPublishedAppIds({});
/// const msgraph = new azuread.ServicePrincipal("msgraph", {
///     clientId: wellKnown.then(wellKnown => wellKnown.result?.microsoftGraph),
///     useExisting: true,
/// });
/// const example = new azuread.Application("example", {
///     displayName: "example",
///     requiredResourceAccesses: [{
///         resourceAppId: wellKnown.then(wellKnown => wellKnown.result?.microsoftGraph),
///         resourceAccesses: [
///             {
///                 id: msgraph.oauth2PermissionScopeIds.openid,
///                 type: "Scope",
///             },
///             {
///                 id: msgraph.oauth2PermissionScopeIds["User.Read"],
///                 type: "Scope",
///             },
///         ],
///     }],
/// });
/// const exampleServicePrincipal = new azuread.ServicePrincipal("example", {clientId: example.clientId});
/// const exampleUser = new azuread.User("example", {
///     displayName: "J. Doe",
///     userPrincipalName: "jdoe@example.com",
///     mailNickname: "jdoe",
///     password: "SecretP@sswd99!",
/// });
/// const exampleServicePrincipalDelegatedPermissionGrant = new azuread.ServicePrincipalDelegatedPermissionGrant("example", {
///     servicePrincipalObjectId: exampleServicePrincipal.objectId,
///     resourceServicePrincipalObjectId: msgraph.objectId,
///     claimValues: [
///         "openid",
///         "User.Read.All",
///     ],
///     userObjectId: exampleUser.objectId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// well_known = azuread.get_application_published_app_ids()
/// msgraph = azuread.ServicePrincipal("msgraph",
///     client_id=well_known.result["microsoftGraph"],
///     use_existing=True)
/// example = azuread.Application("example",
///     display_name="example",
///     required_resource_accesses=[{
///         "resource_app_id": well_known.result["microsoftGraph"],
///         "resource_accesses": [
///             {
///                 "id": msgraph.oauth2_permission_scope_ids["openid"],
///                 "type": "Scope",
///             },
///             {
///                 "id": msgraph.oauth2_permission_scope_ids["User.Read"],
///                 "type": "Scope",
///             },
///         ],
///     }])
/// example_service_principal = azuread.ServicePrincipal("example", client_id=example.client_id)
/// example_user = azuread.User("example",
///     display_name="J. Doe",
///     user_principal_name="jdoe@example.com",
///     mail_nickname="jdoe",
///     password="SecretP@sswd99!")
/// example_service_principal_delegated_permission_grant = azuread.ServicePrincipalDelegatedPermissionGrant("example",
///     service_principal_object_id=example_service_principal.object_id,
///     resource_service_principal_object_id=msgraph.object_id,
///     claim_values=[
///         "openid",
///         "User.Read.All",
///     ],
///     user_object_id=example_user.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var wellKnown = AzureAD.GetApplicationPublishedAppIds.Invoke();
///
///     var msgraph = new AzureAD.ServicePrincipal("msgraph", new()
///     {
///         ClientId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
///         UseExisting = true,
///     });
///
///     var example = new AzureAD.Application("example", new()
///     {
///         DisplayName = "example",
///         RequiredResourceAccesses = new[]
///         {
///             new AzureAD.Inputs.ApplicationRequiredResourceAccessArgs
///             {
///                 ResourceAppId = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result?.MicrosoftGraph),
///                 ResourceAccesses = new[]
///                 {
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = msgraph.Oauth2PermissionScopeIds.Apply(oauth2PermissionScopeIds => oauth2PermissionScopeIds.Openid),
///                         Type = "Scope",
///                     },
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = msgraph.Oauth2PermissionScopeIds.Apply(oauth2PermissionScopeIds => oauth2PermissionScopeIds.User_Read),
///                         Type = "Scope",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleServicePrincipal = new AzureAD.ServicePrincipal("example", new()
///     {
///         ClientId = example.ClientId,
///     });
///
///     var exampleUser = new AzureAD.User("example", new()
///     {
///         DisplayName = "J. Doe",
///         UserPrincipalName = "jdoe@example.com",
///         MailNickname = "jdoe",
///         Password = "SecretP@sswd99!",
///     });
///
///     var exampleServicePrincipalDelegatedPermissionGrant = new AzureAD.ServicePrincipalDelegatedPermissionGrant("example", new()
///     {
///         ServicePrincipalObjectId = exampleServicePrincipal.ObjectId,
///         ResourceServicePrincipalObjectId = msgraph.ObjectId,
///         ClaimValues = new[]
///         {
///             "openid",
///             "User.Read.All",
///         },
///         UserObjectId = exampleUser.ObjectId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		wellKnown, err := azuread.GetApplicationPublishedAppIds(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		msgraph, err := azuread.NewServicePrincipal(ctx, "msgraph", &azuread.ServicePrincipalArgs{
/// 			ClientId:    pulumi.String(wellKnown.Result.MicrosoftGraph),
/// 			UseExisting: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			RequiredResourceAccesses: azuread.ApplicationRequiredResourceAccessArray{
/// 				&azuread.ApplicationRequiredResourceAccessArgs{
/// 					ResourceAppId: pulumi.String(wellKnown.Result.MicrosoftGraph),
/// 					ResourceAccesses: azuread.ApplicationRequiredResourceAccessResourceAccessArray{
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: msgraph.Oauth2PermissionScopeIds.ApplyT(func(oauth2PermissionScopeIds map[string]string) (string, error) {
/// 								return oauth2PermissionScopeIds.Openid, nil
/// 							}).(pulumi.StringOutput),
/// 							Type: pulumi.String("Scope"),
/// 						},
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: msgraph.Oauth2PermissionScopeIds.ApplyT(func(oauth2PermissionScopeIds map[string]string) (string, error) {
/// 								return oauth2PermissionScopeIds.User.Read, nil
/// 							}).(pulumi.StringOutput),
/// 							Type: pulumi.String("Scope"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePrincipal, err := azuread.NewServicePrincipal(ctx, "example", &azuread.ServicePrincipalArgs{
/// 			ClientId: example.ClientId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUser, err := azuread.NewUser(ctx, "example", &azuread.UserArgs{
/// 			DisplayName:       pulumi.String("J. Doe"),
/// 			UserPrincipalName: pulumi.String("jdoe@example.com"),
/// 			MailNickname:      pulumi.String("jdoe"),
/// 			Password:          pulumi.String("SecretP@sswd99!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewServicePrincipalDelegatedPermissionGrant(ctx, "example", &azuread.ServicePrincipalDelegatedPermissionGrantArgs{
/// 			ServicePrincipalObjectId:         exampleServicePrincipal.ObjectId,
/// 			ResourceServicePrincipalObjectId: msgraph.ObjectId,
/// 			ClaimValues: pulumi.StringArray{
/// 				pulumi.String("openid"),
/// 				pulumi.String("User.Read.All"),
/// 			},
/// 			UserObjectId: exampleUser.ObjectId,
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.ServicePrincipal;
/// import com.pulumi.azuread.ServicePrincipalArgs;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.inputs.ApplicationRequiredResourceAccessArgs;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.ServicePrincipalDelegatedPermissionGrant;
/// import com.pulumi.azuread.ServicePrincipalDelegatedPermissionGrantArgs;
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
///         final var wellKnown = AzureadFunctions.getApplicationPublishedAppIds(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var msgraph = new ServicePrincipal("msgraph", ServicePrincipalArgs.builder()
///             .clientId(wellKnown.result().microsoftGraph())
///             .useExisting(true)
///             .build());
///
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .requiredResourceAccesses(ApplicationRequiredResourceAccessArgs.builder()
///                 .resourceAppId(wellKnown.result().microsoftGraph())
///                 .resourceAccesses(
///                     ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id(msgraph.oauth2PermissionScopeIds().applyValue(_oauth2PermissionScopeIds -> _oauth2PermissionScopeIds.openid()))
///                         .type("Scope")
///                         .build(),
///                     ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id(msgraph.oauth2PermissionScopeIds().applyValue(_oauth2PermissionScopeIds -> _oauth2PermissionScopeIds.User.Read()))
///                         .type("Scope")
///                         .build())
///                 .build())
///             .build());
///
///         var exampleServicePrincipal = new ServicePrincipal("exampleServicePrincipal", ServicePrincipalArgs.builder()
///             .clientId(example.clientId())
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .displayName("J. Doe")
///             .userPrincipalName("jdoe@example.com")
///             .mailNickname("jdoe")
///             .password("SecretP@sswd99!")
///             .build());
///
///         var exampleServicePrincipalDelegatedPermissionGrant = new ServicePrincipalDelegatedPermissionGrant("exampleServicePrincipalDelegatedPermissionGrant", ServicePrincipalDelegatedPermissionGrantArgs.builder()
///             .servicePrincipalObjectId(exampleServicePrincipal.objectId())
///             .resourceServicePrincipalObjectId(msgraph.objectId())
///             .claimValues(
///                 "openid",
///                 "User.Read.All")
///             .userObjectId(exampleUser.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   msgraph:
///     type: azuread:ServicePrincipal
///     properties:
///       clientId: ${wellKnown.result.microsoftGraph}
///       useExisting: true
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///       requiredResourceAccesses:
///         - resourceAppId: ${wellKnown.result.microsoftGraph}
///           resourceAccesses:
///             - id: ${msgraph.oauth2PermissionScopeIds.openid}
///               type: Scope
///             - id: ${msgraph.oauth2PermissionScopeIds"User.Read"[%!s(MISSING)]}
///               type: Scope
///   exampleServicePrincipal:
///     type: azuread:ServicePrincipal
///     name: example
///     properties:
///       clientId: ${example.clientId}
///   exampleUser:
///     type: azuread:User
///     name: example
///     properties:
///       displayName: J. Doe
///       userPrincipalName: jdoe@example.com
///       mailNickname: jdoe
///       password: SecretP@sswd99!
///   exampleServicePrincipalDelegatedPermissionGrant:
///     type: azuread:ServicePrincipalDelegatedPermissionGrant
///     name: example
///     properties:
///       servicePrincipalObjectId: ${exampleServicePrincipal.objectId}
///       resourceServicePrincipalObjectId: ${msgraph.objectId}
///       claimValues:
///         - openid
///         - User.Read.All
///       userObjectId: ${exampleUser.objectId}
/// variables:
///   wellKnown:
///     fn::invoke:
///       function: azuread:getApplicationPublishedAppIds
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Delegated permission grants can be imported using their ID, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/servicePrincipalDelegatedPermissionGrant:ServicePrincipalDelegatedPermissionGrant example /oauth2PermissionGrants/aaBBcDDeFG6h5JKLMN2PQrrssTTUUvWWxxxxxyyyzzz
/// ```
class ServicePrincipalDelegatedPermissionGrant extends pulumi.CustomResource {
  /// A set of claim values for delegated permission scopes which should be included in access tokens for the resource.
  late final pulumi.Output<List<String>> claimValues;
  /// The object ID of the service principal representing the resource to be accessed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceServicePrincipalObjectId;
  /// The object ID of the service principal for which this delegated permission grant should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> servicePrincipalObjectId;
  /// The object ID of the user on behalf of whom the service principal is authorized to access the resource. When omitted, the delegated permission grant will be consented for all users. Changing this forces a new resource to be created.
  ///
  /// > **Granting Admin Consent** To grant admin consent for the service principal to impersonate all users, just omit the `user_object_id` property.
  late final pulumi.Output<String?> userObjectId;

  /// Creates a new [ServicePrincipalDelegatedPermissionGrant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePrincipalDelegatedPermissionGrant]. {@macro pulumi_index_service_principal_delegated_permission_grant_service_principal_delegated_permission_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePrincipalDelegatedPermissionGrant(
    String name, {
    ServicePrincipalDelegatedPermissionGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/servicePrincipalDelegatedPermissionGrant:ServicePrincipalDelegatedPermissionGrant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.claimValues = registerOutput<List<String>>('claimValues');
    this.resourceServicePrincipalObjectId = registerOutput<String>('resourceServicePrincipalObjectId');
    this.servicePrincipalObjectId = registerOutput<String>('servicePrincipalObjectId');
    this.userObjectId = registerOutput<String?>('userObjectId');
  }
}
