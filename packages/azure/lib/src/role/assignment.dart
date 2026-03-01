import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_args.dart';

/// Assigns a given Principal (User or Group) to a given Role.
///
/// ## Example Usage
///
/// ### Using A Built-In Role)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const example = azure.core.getClientConfig({});
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: primary.then(primary => primary.id),
///     roleDefinitionName: "Reader",
///     principalId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// example = azure.core.get_client_config()
/// example_assignment = azure.authorization.Assignment("example",
///     scope=primary.id,
///     role_definition_name="Reader",
///     principal_id=example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionName = "Reader",
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              pulumi.String(primary.Id),
/// 			RoleDefinitionName: pulumi.String("Reader"),
/// 			PrincipalId:        pulumi.String(example.ObjectId),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(primary.id())
///             .roleDefinitionName("Reader")
///             .principalId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${primary.id}
///       roleDefinitionName: Reader
///       principalId: ${example.objectId}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
///
/// ### Custom Role & Service Principal)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const example = azure.core.getClientConfig({});
/// const exampleRoleDefinition = new azure.authorization.RoleDefinition("example", {
///     roleDefinitionId: "00000000-0000-0000-0000-000000000000",
///     name: "my-custom-role-definition",
///     scope: primary.then(primary => primary.id),
///     permissions: [{
///         actions: ["Microsoft.Resources/subscriptions/resourceGroups/read"],
///         notActions: [],
///     }],
///     assignableScopes: [primary.then(primary => primary.id)],
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     name: "00000000-0000-0000-0000-000000000000",
///     scope: primary.then(primary => primary.id),
///     roleDefinitionId: exampleRoleDefinition.roleDefinitionResourceId,
///     principalId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// example = azure.core.get_client_config()
/// example_role_definition = azure.authorization.RoleDefinition("example",
///     role_definition_id="00000000-0000-0000-0000-000000000000",
///     name="my-custom-role-definition",
///     scope=primary.id,
///     permissions=[{
///         "actions": ["Microsoft.Resources/subscriptions/resourceGroups/read"],
///         "not_actions": [],
///     }],
///     assignable_scopes=[primary.id])
/// example_assignment = azure.authorization.Assignment("example",
///     name="00000000-0000-0000-0000-000000000000",
///     scope=primary.id,
///     role_definition_id=example_role_definition.role_definition_resource_id,
///     principal_id=example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleRoleDefinition = new Azure.Authorization.RoleDefinition("example", new()
///     {
///         RoleDefinitionId = "00000000-0000-0000-0000-000000000000",
///         Name = "my-custom-role-definition",
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         Permissions = new[]
///         {
///             new Azure.Authorization.Inputs.RoleDefinitionPermissionArgs
///             {
///                 Actions = new[]
///                 {
///                     "Microsoft.Resources/subscriptions/resourceGroups/read",
///                 },
///                 NotActions = new() { },
///             },
///         },
///         AssignableScopes = new[]
///         {
///             primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Name = "00000000-0000-0000-0000-000000000000",
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionId = exampleRoleDefinition.RoleDefinitionResourceId,
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRoleDefinition, err := authorization.NewRoleDefinition(ctx, "example", &authorization.RoleDefinitionArgs{
/// 			RoleDefinitionId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Name:             pulumi.String("my-custom-role-definition"),
/// 			Scope:            pulumi.String(primary.Id),
/// 			Permissions: authorization.RoleDefinitionPermissionArray{
/// 				&authorization.RoleDefinitionPermissionArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("Microsoft.Resources/subscriptions/resourceGroups/read"),
/// 					},
/// 					NotActions: pulumi.StringArray{},
/// 				},
/// 			},
/// 			AssignableScopes: pulumi.StringArray{
/// 				pulumi.String(primary.Id),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Name:             pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Scope:            pulumi.String(primary.Id),
/// 			RoleDefinitionId: exampleRoleDefinition.RoleDefinitionResourceId,
/// 			PrincipalId:      pulumi.String(example.ObjectId),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.authorization.RoleDefinition;
/// import com.pulumi.azure.authorization.RoleDefinitionArgs;
/// import com.pulumi.azure.authorization.inputs.RoleDefinitionPermissionArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleRoleDefinition = new RoleDefinition("exampleRoleDefinition", RoleDefinitionArgs.builder()
///             .roleDefinitionId("00000000-0000-0000-0000-000000000000")
///             .name("my-custom-role-definition")
///             .scope(primary.id())
///             .permissions(RoleDefinitionPermissionArgs.builder()
///                 .actions("Microsoft.Resources/subscriptions/resourceGroups/read")
///                 .notActions()
///                 .build())
///             .assignableScopes(primary.id())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .name("00000000-0000-0000-0000-000000000000")
///             .scope(primary.id())
///             .roleDefinitionId(exampleRoleDefinition.roleDefinitionResourceId())
///             .principalId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRoleDefinition:
///     type: azure:authorization:RoleDefinition
///     name: example
///     properties:
///       roleDefinitionId: 00000000-0000-0000-0000-000000000000
///       name: my-custom-role-definition
///       scope: ${primary.id}
///       permissions:
///         - actions:
///             - Microsoft.Resources/subscriptions/resourceGroups/read
///           notActions: []
///       assignableScopes:
///         - ${primary.id}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       name: 00000000-0000-0000-0000-000000000000
///       scope: ${primary.id}
///       roleDefinitionId: ${exampleRoleDefinition.roleDefinitionResourceId}
///       principalId: ${example.objectId}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
///
/// ### Custom Role & User)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const example = azure.core.getClientConfig({});
/// const exampleRoleDefinition = new azure.authorization.RoleDefinition("example", {
///     roleDefinitionId: "00000000-0000-0000-0000-000000000000",
///     name: "my-custom-role-definition",
///     scope: primary.then(primary => primary.id),
///     permissions: [{
///         actions: ["Microsoft.Resources/subscriptions/resourceGroups/read"],
///         notActions: [],
///     }],
///     assignableScopes: [primary.then(primary => primary.id)],
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     name: "00000000-0000-0000-0000-000000000000",
///     scope: primary.then(primary => primary.id),
///     roleDefinitionId: exampleRoleDefinition.roleDefinitionResourceId,
///     principalId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// example = azure.core.get_client_config()
/// example_role_definition = azure.authorization.RoleDefinition("example",
///     role_definition_id="00000000-0000-0000-0000-000000000000",
///     name="my-custom-role-definition",
///     scope=primary.id,
///     permissions=[{
///         "actions": ["Microsoft.Resources/subscriptions/resourceGroups/read"],
///         "not_actions": [],
///     }],
///     assignable_scopes=[primary.id])
/// example_assignment = azure.authorization.Assignment("example",
///     name="00000000-0000-0000-0000-000000000000",
///     scope=primary.id,
///     role_definition_id=example_role_definition.role_definition_resource_id,
///     principal_id=example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleRoleDefinition = new Azure.Authorization.RoleDefinition("example", new()
///     {
///         RoleDefinitionId = "00000000-0000-0000-0000-000000000000",
///         Name = "my-custom-role-definition",
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         Permissions = new[]
///         {
///             new Azure.Authorization.Inputs.RoleDefinitionPermissionArgs
///             {
///                 Actions = new[]
///                 {
///                     "Microsoft.Resources/subscriptions/resourceGroups/read",
///                 },
///                 NotActions = new() { },
///             },
///         },
///         AssignableScopes = new[]
///         {
///             primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Name = "00000000-0000-0000-0000-000000000000",
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         RoleDefinitionId = exampleRoleDefinition.RoleDefinitionResourceId,
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRoleDefinition, err := authorization.NewRoleDefinition(ctx, "example", &authorization.RoleDefinitionArgs{
/// 			RoleDefinitionId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Name:             pulumi.String("my-custom-role-definition"),
/// 			Scope:            pulumi.String(primary.Id),
/// 			Permissions: authorization.RoleDefinitionPermissionArray{
/// 				&authorization.RoleDefinitionPermissionArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("Microsoft.Resources/subscriptions/resourceGroups/read"),
/// 					},
/// 					NotActions: pulumi.StringArray{},
/// 				},
/// 			},
/// 			AssignableScopes: pulumi.StringArray{
/// 				pulumi.String(primary.Id),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Name:             pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Scope:            pulumi.String(primary.Id),
/// 			RoleDefinitionId: exampleRoleDefinition.RoleDefinitionResourceId,
/// 			PrincipalId:      pulumi.String(example.ObjectId),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.authorization.RoleDefinition;
/// import com.pulumi.azure.authorization.RoleDefinitionArgs;
/// import com.pulumi.azure.authorization.inputs.RoleDefinitionPermissionArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleRoleDefinition = new RoleDefinition("exampleRoleDefinition", RoleDefinitionArgs.builder()
///             .roleDefinitionId("00000000-0000-0000-0000-000000000000")
///             .name("my-custom-role-definition")
///             .scope(primary.id())
///             .permissions(RoleDefinitionPermissionArgs.builder()
///                 .actions("Microsoft.Resources/subscriptions/resourceGroups/read")
///                 .notActions()
///                 .build())
///             .assignableScopes(primary.id())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .name("00000000-0000-0000-0000-000000000000")
///             .scope(primary.id())
///             .roleDefinitionId(exampleRoleDefinition.roleDefinitionResourceId())
///             .principalId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRoleDefinition:
///     type: azure:authorization:RoleDefinition
///     name: example
///     properties:
///       roleDefinitionId: 00000000-0000-0000-0000-000000000000
///       name: my-custom-role-definition
///       scope: ${primary.id}
///       permissions:
///         - actions:
///             - Microsoft.Resources/subscriptions/resourceGroups/read
///           notActions: []
///       assignableScopes:
///         - ${primary.id}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       name: 00000000-0000-0000-0000-000000000000
///       scope: ${primary.id}
///       roleDefinitionId: ${exampleRoleDefinition.roleDefinitionResourceId}
///       principalId: ${example.objectId}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
///
/// ### Custom Role & Management Group)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = azure.core.getSubscription({});
/// const example = azure.core.getClientConfig({});
/// const exampleGetGroup = azure.management.getGroup({
///     name: "00000000-0000-0000-0000-000000000000",
/// });
/// const exampleRoleDefinition = new azure.authorization.RoleDefinition("example", {
///     roleDefinitionId: "00000000-0000-0000-0000-000000000000",
///     name: "my-custom-role-definition",
///     scope: primary.then(primary => primary.id),
///     permissions: [{
///         actions: ["Microsoft.Resources/subscriptions/resourceGroups/read"],
///         notActions: [],
///     }],
///     assignableScopes: [primary.then(primary => primary.id)],
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     name: "00000000-0000-0000-0000-000000000000",
///     scope: primaryAzurermManagementGroup.id,
///     roleDefinitionId: exampleRoleDefinition.roleDefinitionResourceId,
///     principalId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.get_subscription()
/// example = azure.core.get_client_config()
/// example_get_group = azure.management.get_group(name="00000000-0000-0000-0000-000000000000")
/// example_role_definition = azure.authorization.RoleDefinition("example",
///     role_definition_id="00000000-0000-0000-0000-000000000000",
///     name="my-custom-role-definition",
///     scope=primary.id,
///     permissions=[{
///         "actions": ["Microsoft.Resources/subscriptions/resourceGroups/read"],
///         "not_actions": [],
///     }],
///     assignable_scopes=[primary.id])
/// example_assignment = azure.authorization.Assignment("example",
///     name="00000000-0000-0000-0000-000000000000",
///     scope=primary_azurerm_management_group["id"],
///     role_definition_id=example_role_definition.role_definition_resource_id,
///     principal_id=example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleGetGroup = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = "00000000-0000-0000-0000-000000000000",
///     });
///
///     var exampleRoleDefinition = new Azure.Authorization.RoleDefinition("example", new()
///     {
///         RoleDefinitionId = "00000000-0000-0000-0000-000000000000",
///         Name = "my-custom-role-definition",
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         Permissions = new[]
///         {
///             new Azure.Authorization.Inputs.RoleDefinitionPermissionArgs
///             {
///                 Actions = new[]
///                 {
///                     "Microsoft.Resources/subscriptions/resourceGroups/read",
///                 },
///                 NotActions = new() { },
///             },
///         },
///         AssignableScopes = new[]
///         {
///             primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Name = "00000000-0000-0000-0000-000000000000",
///         Scope = primaryAzurermManagementGroup.Id,
///         RoleDefinitionId = exampleRoleDefinition.RoleDefinitionResourceId,
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRoleDefinition, err := authorization.NewRoleDefinition(ctx, "example", &authorization.RoleDefinitionArgs{
/// 			RoleDefinitionId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Name:             pulumi.String("my-custom-role-definition"),
/// 			Scope:            pulumi.String(primary.Id),
/// 			Permissions: authorization.RoleDefinitionPermissionArray{
/// 				&authorization.RoleDefinitionPermissionArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("Microsoft.Resources/subscriptions/resourceGroups/read"),
/// 					},
/// 					NotActions: pulumi.StringArray{},
/// 				},
/// 			},
/// 			AssignableScopes: pulumi.StringArray{
/// 				pulumi.String(primary.Id),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Name:             pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Scope:            pulumi.Any(primaryAzurermManagementGroup.Id),
/// 			RoleDefinitionId: exampleRoleDefinition.RoleDefinitionResourceId,
/// 			PrincipalId:      pulumi.String(example.ObjectId),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
/// import com.pulumi.azure.authorization.RoleDefinition;
/// import com.pulumi.azure.authorization.RoleDefinitionArgs;
/// import com.pulumi.azure.authorization.inputs.RoleDefinitionPermissionArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var exampleGetGroup = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("00000000-0000-0000-0000-000000000000")
///             .build());
///
///         var exampleRoleDefinition = new RoleDefinition("exampleRoleDefinition", RoleDefinitionArgs.builder()
///             .roleDefinitionId("00000000-0000-0000-0000-000000000000")
///             .name("my-custom-role-definition")
///             .scope(primary.id())
///             .permissions(RoleDefinitionPermissionArgs.builder()
///                 .actions("Microsoft.Resources/subscriptions/resourceGroups/read")
///                 .notActions()
///                 .build())
///             .assignableScopes(primary.id())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .name("00000000-0000-0000-0000-000000000000")
///             .scope(primaryAzurermManagementGroup.id())
///             .roleDefinitionId(exampleRoleDefinition.roleDefinitionResourceId())
///             .principalId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRoleDefinition:
///     type: azure:authorization:RoleDefinition
///     name: example
///     properties:
///       roleDefinitionId: 00000000-0000-0000-0000-000000000000
///       name: my-custom-role-definition
///       scope: ${primary.id}
///       permissions:
///         - actions:
///             - Microsoft.Resources/subscriptions/resourceGroups/read
///           notActions: []
///       assignableScopes:
///         - ${primary.id}
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       name: 00000000-0000-0000-0000-000000000000
///       scope: ${primaryAzurermManagementGroup.id}
///       roleDefinitionId: ${exampleRoleDefinition.roleDefinitionResourceId}
///       principalId: ${example.objectId}
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   exampleGetGroup:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: 00000000-0000-0000-0000-000000000000
/// ```
///
///
///
/// ### ABAC Condition)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const primary = azure.core.getSubscription({});
/// const example = azure.core.getClientConfig({});
/// const builtin = azure.authorization.getRoleDefinition({
///     name: "Reader",
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     roleDefinitionName: "Role Based Access Control Administrator",
///     scope: primary.then(primary => primary.id),
///     principalId: example.then(example => example.objectId),
///     principalType: "ServicePrincipal",
///     description: "Role Based Access Control Administrator role assignment with ABAC Condition.",
///     conditionVersion: "2.0",
///     condition: Promise.all([builtin.then(builtin => std.basename({
///         input: builtin.roleDefinitionId,
///     })), builtin.then(builtin => std.basename({
///         input: builtin.roleDefinitionId,
///     }))]).then(([invoke, invoke1]) => `(
///  (
///   !(ActionMatches{'Microsoft.Authorization/roleAssignments/write'})
///  )
///  OR
///  (
///   @Request[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {${invoke.result}}
///  )
/// )
/// AND
/// (
///  (
///   !(ActionMatches{'Microsoft.Authorization/roleAssignments/delete'})
///  )
///  OR
///  (
///   @Resource[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {${invoke1.result}}
///  )
/// )
/// `),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// primary = azure.core.get_subscription()
/// example = azure.core.get_client_config()
/// builtin = azure.authorization.get_role_definition(name="Reader")
/// example_assignment = azure.authorization.Assignment("example",
///     role_definition_name="Role Based Access Control Administrator",
///     scope=primary.id,
///     principal_id=example.object_id,
///     principal_type="ServicePrincipal",
///     description="Role Based Access Control Administrator role assignment with ABAC Condition.",
///     condition_version="2.0",
///     condition=f"""(
///  (
///   !(ActionMatches{{'Microsoft.Authorization/roleAssignments/write'}})
///  )
///  OR
///  (
///   @Request[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {{{std.basename(input=builtin.role_definition_id).result}}}
///  )
/// )
/// AND
/// (
///  (
///   !(ActionMatches{{'Microsoft.Authorization/roleAssignments/delete'}})
///  )
///  OR
///  (
///   @Resource[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {{{std.basename(input=builtin.role_definition_id).result}}}
///  )
/// )
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Azure.Core.GetSubscription.Invoke();
///
///     var example = Azure.Core.GetClientConfig.Invoke();
///
///     var builtin = Azure.Authorization.GetRoleDefinition.Invoke(new()
///     {
///         Name = "Reader",
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         RoleDefinitionName = "Role Based Access Control Administrator",
///         Scope = primary.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///         PrincipalId = example.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         PrincipalType = "ServicePrincipal",
///         Description = "Role Based Access Control Administrator role assignment with ABAC Condition.",
///         ConditionVersion = "2.0",
///         Condition = Output.Tuple(Std.Basename.Invoke(new()
///         {
///             Input = builtin.Apply(getRoleDefinitionResult => getRoleDefinitionResult.RoleDefinitionId),
///         }), Std.Basename.Invoke(new()
///         {
///             Input = builtin.Apply(getRoleDefinitionResult => getRoleDefinitionResult.RoleDefinitionId),
///         })).Apply(values =>
///         {
///             var invoke = values.Item1;
///             var invoke1 = values.Item2;
///             return @$"(
///  (
///   !(ActionMatches{{'Microsoft.Authorization/roleAssignments/write'}})
///  )
///  OR
///  (
///   @Request[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {{{invoke.Result}}}
///  )
/// )
/// AND
/// (
///  (
///   !(ActionMatches{{'Microsoft.Authorization/roleAssignments/delete'}})
///  )
///  OR
///  (
///   @Resource[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {{{invoke1.Result}}}
///  )
/// )
/// ";
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		builtin, err := authorization.LookupRoleDefinition(ctx, &authorization.LookupRoleDefinitionArgs{
/// 			Name: pulumi.StringRef("Reader"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBasename, err := std.Basename(ctx, &std.BasenameArgs{
/// 			Input: builtin.RoleDefinitionId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBasename1, err := std.Basename(ctx, &std.BasenameArgs{
/// 			Input: builtin.RoleDefinitionId,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			RoleDefinitionName: pulumi.String("Role Based Access Control Administrator"),
/// 			Scope:              pulumi.String(primary.Id),
/// 			PrincipalId:        pulumi.String(example.ObjectId),
/// 			PrincipalType:      pulumi.String("ServicePrincipal"),
/// 			Description:        pulumi.String("Role Based Access Control Administrator role assignment with ABAC Condition."),
/// 			ConditionVersion:   pulumi.String("2.0"),
/// 			Condition: pulumi.Sprintf(`(
///  (
///   !(ActionMatches{'Microsoft.Authorization/roleAssignments/write'})
///  )
///  OR
///  (
///   @Request[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {%v}
///  )
/// )
/// AND
/// (
///  (
///   !(ActionMatches{'Microsoft.Authorization/roleAssignments/delete'})
///  )
///  OR
///  (
///   @Resource[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {%v}
///  )
/// )
/// `, invokeBasename.Result, invokeBasename1.Result),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.authorization.AuthorizationFunctions;
/// import com.pulumi.azure.authorization.inputs.GetRoleDefinitionArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.BasenameArgs;
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
///         final var primary = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         final var example = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var builtin = AuthorizationFunctions.getRoleDefinition(GetRoleDefinitionArgs.builder()
///             .name("Reader")
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .roleDefinitionName("Role Based Access Control Administrator")
///             .scope(primary.id())
///             .principalId(example.objectId())
///             .principalType("ServicePrincipal")
///             .description("Role Based Access Control Administrator role assignment with ABAC Condition.")
///             .conditionVersion("2.0")
///             .condition("""
/// (
///  (
///   !(ActionMatches{'Microsoft.Authorization/roleAssignments/write'})
///  )
///  OR
///  (
///   @Request[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {%s}
///  )
/// )
/// AND
/// (
///  (
///   !(ActionMatches{'Microsoft.Authorization/roleAssignments/delete'})
///  )
///  OR
///  (
///   @Resource[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {%s}
///  )
/// )
/// ", StdFunctions.basename(BasenameArgs.builder()
///                 .input(builtin.roleDefinitionId())
///                 .build()).result(),StdFunctions.basename(BasenameArgs.builder()
///                 .input(builtin.roleDefinitionId())
///                 .build()).result()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       roleDefinitionName: Role Based Access Control Administrator
///       scope: ${primary.id}
///       principalId: ${example.objectId}
///       principalType: ServicePrincipal
///       description: Role Based Access Control Administrator role assignment with ABAC Condition.
///       conditionVersion: '2.0'
///       condition:
///         fn::join:
///           - ""
///           - - |-
///               (
///                (
///                 !(ActionMatches{'Microsoft.Authorization/roleAssignments/write'})
///                )
///                OR
///                (
///                 @Request[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {
///             - fn::invoke:
///                 function: std:basename
///                 arguments:
///                   input: ${builtin.roleDefinitionId}
///                 return: result
///             - |-
///               }
///                )
///               )
///               AND
///               (
///                (
///                 !(ActionMatches{'Microsoft.Authorization/roleAssignments/delete'})
///                )
///                OR
///                (
///                 @Resource[Microsoft.Authorization/roleAssignments:RoleDefinitionId] ForAnyOfAnyValues:GuidEquals {
///             - fn::invoke:
///                 function: std:basename
///                 arguments:
///                   input: ${builtin.roleDefinitionId}
///                 return: result
///             - |
///               }
///                )
///               )
/// variables:
///   primary:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
///   example:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
///   builtin:
///     fn::invoke:
///       function: azure:authorization:getRoleDefinition
///       arguments:
///         name: Reader
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Authorization` - 2022-05-01-preview, 2022-04-01
///
/// ## Import
///
/// Role Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:role/assignment:Assignment example /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000
/// ```
///
/// > **Note:** The format of `resource id` could be different for different kinds of `scope`:
///
/// * for scope `Subscription`, the id format is `/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000`
/// * for scope `Resource Group`, the id format is `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000`
/// * for scope `Key Vault`, the id format is `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.KeyVault/vaults/vault1/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000`
/// * for scope `Storage Account`, the id format is `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Storage/storageAccounts/storageAccount1/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000`
///
/// > **Note:** for cross tenant scenarios, the format of `resource id` is composed of Azure resource ID and tenantId. for example:
///
/// ```text
/// /subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.Authorization/roleAssignments/00000000-0000-0000-0000-000000000000|00000000-0000-0000-0000-000000000000
/// ```
class Assignment extends pulumi.CustomResource {
  /// The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> condition;
  /// The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `condition` is required when `condition_version` is set.
  late final pulumi.Output<String> conditionVersion;
  /// The delegated Azure Resource Id which contains a Managed Identity. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This field is only used in cross tenant scenarios.
  late final pulumi.Output<String?> delegatedManagedIdentityResourceId;
  /// The description for this Role Assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> description;
  /// A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Principal ID is also known as the Object ID (i.e. not the "Application ID" for applications).
  late final pulumi.Output<String> principalId;
  /// The type of the `principal_id`. Possible values are `User`, `Group` and `ServicePrincipal`. Changing this forces a new resource to be created. It is necessary to explicitly set this attribute when creating role assignments if the principal creating the assignment is constrained by ABAC rules that filters on the PrincipalType attribute.
  late final pulumi.Output<String> principalType;
  /// The Scoped-ID of the Role Definition. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleDefinitionId;
  /// The name of a built-in Role. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Either `role_definition_id` or `role_definition_name` must be set.
  late final pulumi.Output<String> roleDefinitionName;
  /// The scope at which the Role Assignment applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`, or `/providers/Microsoft.Management/managementGroups/myMG`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> scope;
  /// If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`.
  ///
  /// > **Note:** If it is not a `Service Principal` identity it will cause the role assignment to fail.
  late final pulumi.Output<bool> skipServicePrincipalAadCheck;

  /// Creates a new [Assignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assignment]. {@macro pulumi_role_assignment_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assignment(
    String name, {
    AssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:role/assignment:Assignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition = registerOutput<String?>('condition');
    this.conditionVersion = registerOutput<String>('conditionVersion');
    this.delegatedManagedIdentityResourceId = registerOutput<String?>('delegatedManagedIdentityResourceId');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.principalType = registerOutput<String>('principalType');
    this.roleDefinitionId = registerOutput<String>('roleDefinitionId');
    this.roleDefinitionName = registerOutput<String>('roleDefinitionName');
    this.scope = registerOutput<String>('scope');
    this.skipServicePrincipalAadCheck = registerOutput<bool>('skipServicePrincipalAadCheck');
  }
}
