import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_assignment_artifact_args.dart';

/// Blueprint artifact that applies a Role assignment.
///
/// Uses Azure REST API version 2018-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MG-ARMTemplateArtifact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignmentArtifact = new AzureNative.Blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", new()
///     {
///         ArtifactName = "storageTemplate",
///         BlueprintName = "simpleBlueprint",
///         ResourceScope = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewRoleAssignmentArtifact(ctx, "roleAssignmentArtifact", &blueprint.RoleAssignmentArtifactArgs{
/// 			ArtifactName:  pulumi.String("storageTemplate"),
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			ResourceScope: pulumi.String("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_blueprint_roleassignmentartifact" "roleAssignmentArtifact" {
///   artifact_name  = "storageTemplate"
///   blueprint_name = "simpleBlueprint"
///   resource_scope = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"
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
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifact;
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifactArgs;
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
///         var roleAssignmentArtifact = new RoleAssignmentArtifact("roleAssignmentArtifact", RoleAssignmentArtifactArgs.builder()
///             .artifactName("storageTemplate")
///             .blueprintName("simpleBlueprint")
///             .resourceScope("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup")
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
/// const roleAssignmentArtifact = new azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", {
///     artifactName: "storageTemplate",
///     blueprintName: "simpleBlueprint",
///     resourceScope: "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment_artifact = azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact",
///     artifact_name="storageTemplate",
///     blueprint_name="simpleBlueprint",
///     resource_scope="providers/Microsoft.Management/managementGroups/ContosoOnlineGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignmentArtifact:
///     type: azure-native:blueprint:RoleAssignmentArtifact
///     properties:
///       artifactName: storageTemplate
///       blueprintName: simpleBlueprint
///       resourceScope: providers/Microsoft.Management/managementGroups/ContosoOnlineGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### MG-PolicyAssignmentArtifact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignmentArtifact = new AzureNative.Blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", new()
///     {
///         ArtifactName = "costCenterPolicy",
///         BlueprintName = "simpleBlueprint",
///         ResourceScope = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewRoleAssignmentArtifact(ctx, "roleAssignmentArtifact", &blueprint.RoleAssignmentArtifactArgs{
/// 			ArtifactName:  pulumi.String("costCenterPolicy"),
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			ResourceScope: pulumi.String("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_blueprint_roleassignmentartifact" "roleAssignmentArtifact" {
///   artifact_name  = "costCenterPolicy"
///   blueprint_name = "simpleBlueprint"
///   resource_scope = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"
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
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifact;
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifactArgs;
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
///         var roleAssignmentArtifact = new RoleAssignmentArtifact("roleAssignmentArtifact", RoleAssignmentArtifactArgs.builder()
///             .artifactName("costCenterPolicy")
///             .blueprintName("simpleBlueprint")
///             .resourceScope("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup")
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
/// const roleAssignmentArtifact = new azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", {
///     artifactName: "costCenterPolicy",
///     blueprintName: "simpleBlueprint",
///     resourceScope: "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment_artifact = azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact",
///     artifact_name="costCenterPolicy",
///     blueprint_name="simpleBlueprint",
///     resource_scope="providers/Microsoft.Management/managementGroups/ContosoOnlineGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignmentArtifact:
///     type: azure-native:blueprint:RoleAssignmentArtifact
///     properties:
///       artifactName: costCenterPolicy
///       blueprintName: simpleBlueprint
///       resourceScope: providers/Microsoft.Management/managementGroups/ContosoOnlineGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### MG-RoleAssignmentArtifact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignmentArtifact = new AzureNative.Blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", new()
///     {
///         ArtifactName = "ownerAssignment",
///         BlueprintName = "simpleBlueprint",
///         DisplayName = "enforce owners of given subscription",
///         Kind = "roleAssignment",
///         PrincipalIds = "[parameters('owners')]",
///         ResourceScope = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///         RoleDefinitionId = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewRoleAssignmentArtifact(ctx, "roleAssignmentArtifact", &blueprint.RoleAssignmentArtifactArgs{
/// 			ArtifactName:     pulumi.String("ownerAssignment"),
/// 			BlueprintName:    pulumi.String("simpleBlueprint"),
/// 			DisplayName:      pulumi.String("enforce owners of given subscription"),
/// 			Kind:             pulumi.String("roleAssignment"),
/// 			PrincipalIds:     pulumi.Any("[parameters('owners')]"),
/// 			ResourceScope:    pulumi.String("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"),
/// 			RoleDefinitionId: pulumi.String("/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_blueprint_roleassignmentartifact" "roleAssignmentArtifact" {
///   artifact_name      = "ownerAssignment"
///   blueprint_name     = "simpleBlueprint"
///   display_name       = "enforce owners of given subscription"
///   kind               = "roleAssignment"
///   principal_ids      = "[parameters('owners')]"
///   resource_scope     = "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup"
///   role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
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
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifact;
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifactArgs;
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
///         var roleAssignmentArtifact = new RoleAssignmentArtifact("roleAssignmentArtifact", RoleAssignmentArtifactArgs.builder()
///             .artifactName("ownerAssignment")
///             .blueprintName("simpleBlueprint")
///             .displayName("enforce owners of given subscription")
///             .kind("roleAssignment")
///             .principalIds("[parameters('owners')]")
///             .resourceScope("providers/Microsoft.Management/managementGroups/ContosoOnlineGroup")
///             .roleDefinitionId("/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7")
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
/// const roleAssignmentArtifact = new azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", {
///     artifactName: "ownerAssignment",
///     blueprintName: "simpleBlueprint",
///     displayName: "enforce owners of given subscription",
///     kind: "roleAssignment",
///     principalIds: "[parameters('owners')]",
///     resourceScope: "providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///     roleDefinitionId: "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment_artifact = azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact",
///     artifact_name="ownerAssignment",
///     blueprint_name="simpleBlueprint",
///     display_name="enforce owners of given subscription",
///     kind="roleAssignment",
///     principal_ids="[parameters('owners')]",
///     resource_scope="providers/Microsoft.Management/managementGroups/ContosoOnlineGroup",
///     role_definition_id="/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignmentArtifact:
///     type: azure-native:blueprint:RoleAssignmentArtifact
///     properties:
///       artifactName: ownerAssignment
///       blueprintName: simpleBlueprint
///       displayName: enforce owners of given subscription
///       kind: roleAssignment
///       principalIds: '[parameters(''owners'')]'
///       resourceScope: providers/Microsoft.Management/managementGroups/ContosoOnlineGroup
///       roleDefinitionId: /providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Sub-ARMTemplateArtifact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignmentArtifact = new AzureNative.Blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", new()
///     {
///         ArtifactName = "storageTemplate",
///         BlueprintName = "simpleBlueprint",
///         ResourceScope = "subscriptions/00000000-0000-0000-0000-000000000000",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewRoleAssignmentArtifact(ctx, "roleAssignmentArtifact", &blueprint.RoleAssignmentArtifactArgs{
/// 			ArtifactName:  pulumi.String("storageTemplate"),
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			ResourceScope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_blueprint_roleassignmentartifact" "roleAssignmentArtifact" {
///   artifact_name  = "storageTemplate"
///   blueprint_name = "simpleBlueprint"
///   resource_scope = "subscriptions/00000000-0000-0000-0000-000000000000"
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
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifact;
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifactArgs;
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
///         var roleAssignmentArtifact = new RoleAssignmentArtifact("roleAssignmentArtifact", RoleAssignmentArtifactArgs.builder()
///             .artifactName("storageTemplate")
///             .blueprintName("simpleBlueprint")
///             .resourceScope("subscriptions/00000000-0000-0000-0000-000000000000")
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
/// const roleAssignmentArtifact = new azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", {
///     artifactName: "storageTemplate",
///     blueprintName: "simpleBlueprint",
///     resourceScope: "subscriptions/00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment_artifact = azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact",
///     artifact_name="storageTemplate",
///     blueprint_name="simpleBlueprint",
///     resource_scope="subscriptions/00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignmentArtifact:
///     type: azure-native:blueprint:RoleAssignmentArtifact
///     properties:
///       artifactName: storageTemplate
///       blueprintName: simpleBlueprint
///       resourceScope: subscriptions/00000000-0000-0000-0000-000000000000
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Sub-PolicyAssignmentArtifact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignmentArtifact = new AzureNative.Blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", new()
///     {
///         ArtifactName = "costCenterPolicy",
///         BlueprintName = "simpleBlueprint",
///         ResourceScope = "subscriptions/00000000-0000-0000-0000-000000000000",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewRoleAssignmentArtifact(ctx, "roleAssignmentArtifact", &blueprint.RoleAssignmentArtifactArgs{
/// 			ArtifactName:  pulumi.String("costCenterPolicy"),
/// 			BlueprintName: pulumi.String("simpleBlueprint"),
/// 			ResourceScope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_blueprint_roleassignmentartifact" "roleAssignmentArtifact" {
///   artifact_name  = "costCenterPolicy"
///   blueprint_name = "simpleBlueprint"
///   resource_scope = "subscriptions/00000000-0000-0000-0000-000000000000"
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
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifact;
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifactArgs;
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
///         var roleAssignmentArtifact = new RoleAssignmentArtifact("roleAssignmentArtifact", RoleAssignmentArtifactArgs.builder()
///             .artifactName("costCenterPolicy")
///             .blueprintName("simpleBlueprint")
///             .resourceScope("subscriptions/00000000-0000-0000-0000-000000000000")
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
/// const roleAssignmentArtifact = new azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", {
///     artifactName: "costCenterPolicy",
///     blueprintName: "simpleBlueprint",
///     resourceScope: "subscriptions/00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment_artifact = azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact",
///     artifact_name="costCenterPolicy",
///     blueprint_name="simpleBlueprint",
///     resource_scope="subscriptions/00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignmentArtifact:
///     type: azure-native:blueprint:RoleAssignmentArtifact
///     properties:
///       artifactName: costCenterPolicy
///       blueprintName: simpleBlueprint
///       resourceScope: subscriptions/00000000-0000-0000-0000-000000000000
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Sub-RoleAssignmentArtifact
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var roleAssignmentArtifact = new AzureNative.Blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", new()
///     {
///         ArtifactName = "ownerAssignment",
///         BlueprintName = "simpleBlueprint",
///         DisplayName = "enforce owners of given subscription",
///         Kind = "roleAssignment",
///         PrincipalIds = "[parameters('owners')]",
///         ResourceScope = "subscriptions/00000000-0000-0000-0000-000000000000",
///         RoleDefinitionId = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7",
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
/// 	blueprint "github.com/pulumi/pulumi-azure-native-sdk/blueprint/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := blueprint.NewRoleAssignmentArtifact(ctx, "roleAssignmentArtifact", &blueprint.RoleAssignmentArtifactArgs{
/// 			ArtifactName:     pulumi.String("ownerAssignment"),
/// 			BlueprintName:    pulumi.String("simpleBlueprint"),
/// 			DisplayName:      pulumi.String("enforce owners of given subscription"),
/// 			Kind:             pulumi.String("roleAssignment"),
/// 			PrincipalIds:     pulumi.Any("[parameters('owners')]"),
/// 			ResourceScope:    pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			RoleDefinitionId: pulumi.String("/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_blueprint_roleassignmentartifact" "roleAssignmentArtifact" {
///   artifact_name      = "ownerAssignment"
///   blueprint_name     = "simpleBlueprint"
///   display_name       = "enforce owners of given subscription"
///   kind               = "roleAssignment"
///   principal_ids      = "[parameters('owners')]"
///   resource_scope     = "subscriptions/00000000-0000-0000-0000-000000000000"
///   role_definition_id = "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7"
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
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifact;
/// import com.pulumi.azurenative.blueprint.RoleAssignmentArtifactArgs;
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
///         var roleAssignmentArtifact = new RoleAssignmentArtifact("roleAssignmentArtifact", RoleAssignmentArtifactArgs.builder()
///             .artifactName("ownerAssignment")
///             .blueprintName("simpleBlueprint")
///             .displayName("enforce owners of given subscription")
///             .kind("roleAssignment")
///             .principalIds("[parameters('owners')]")
///             .resourceScope("subscriptions/00000000-0000-0000-0000-000000000000")
///             .roleDefinitionId("/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7")
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
/// const roleAssignmentArtifact = new azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact", {
///     artifactName: "ownerAssignment",
///     blueprintName: "simpleBlueprint",
///     displayName: "enforce owners of given subscription",
///     kind: "roleAssignment",
///     principalIds: "[parameters('owners')]",
///     resourceScope: "subscriptions/00000000-0000-0000-0000-000000000000",
///     roleDefinitionId: "/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// role_assignment_artifact = azure_native.blueprint.RoleAssignmentArtifact("roleAssignmentArtifact",
///     artifact_name="ownerAssignment",
///     blueprint_name="simpleBlueprint",
///     display_name="enforce owners of given subscription",
///     kind="roleAssignment",
///     principal_ids="[parameters('owners')]",
///     resource_scope="subscriptions/00000000-0000-0000-0000-000000000000",
///     role_definition_id="/providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7")
///
/// ```
///
/// ```yaml
/// resources:
///   roleAssignmentArtifact:
///     type: azure-native:blueprint:RoleAssignmentArtifact
///     properties:
///       artifactName: ownerAssignment
///       blueprintName: simpleBlueprint
///       displayName: enforce owners of given subscription
///       kind: roleAssignment
///       principalIds: '[parameters(''owners'')]'
///       resourceScope: subscriptions/00000000-0000-0000-0000-000000000000
///       roleDefinitionId: /providers/Microsoft.Authorization/roleDefinitions/acdd72a7-3385-48ef-bd42-f606fba81ae7
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
/// $ pulumi import azure-native:blueprint:RoleAssignmentArtifact ownerAssignment /{resourceScope}/providers/Microsoft.Blueprint/blueprints/{blueprintName}/artifacts/{artifactName}
/// ```
class RoleAssignmentArtifact extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Artifacts which need to be deployed before the specified artifact.
  late final pulumi.Output<List<String>?> dependsOn;
  /// Multi-line explain this resource.
  late final pulumi.Output<String?> description;
  /// One-liner string explain this resource.
  late final pulumi.Output<String?> displayName;
  /// Specifies the kind of blueprint artifact.
  /// Expected value is 'roleAssignment'.
  late final pulumi.Output<String> kind;
  /// Name of this resource.
  late final pulumi.Output<String> name;
  /// Array of user or group identities in Azure Active Directory. The roleDefinition will apply to each identity.
  late final pulumi.Output<dynamic> principalIds;
  /// RoleAssignment will be scope to this resourceGroup. If empty, it scopes to the subscription.
  late final pulumi.Output<String?> resourceGroup;
  /// Azure resource ID of the RoleDefinition.
  late final pulumi.Output<String> roleDefinitionId;
  /// Type of this resource.
  late final pulumi.Output<String> type;

  /// Creates a new [RoleAssignmentArtifact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAssignmentArtifact]. {@macro pulumi_blueprint_role_assignment_artifact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAssignmentArtifact(
    String name, {
    RoleAssignmentArtifactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:blueprint:RoleAssignmentArtifact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dependsOn = registerOutput<List<String>?>('dependsOn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    principalIds = registerOutput<dynamic>('principalIds');
    resourceGroup = registerOutput<String?>('resourceGroup');
    roleDefinitionId = registerOutput<String>('roleDefinitionId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RoleAssignmentArtifact] resource.
  RoleAssignmentArtifact.reference(String urn)
    : super(
        'azure-native:blueprint:RoleAssignmentArtifact',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dependsOn = registerOutput<List<String>?>('dependsOn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    principalIds = registerOutput<dynamic>('principalIds');
    resourceGroup = registerOutput<String?>('resourceGroup');
    roleDefinitionId = registerOutput<String>('roleDefinitionId');
    type = registerOutput<String>('type');
  }
}
