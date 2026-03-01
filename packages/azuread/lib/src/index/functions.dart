import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_package_args.dart';
import 'get_access_package_catalog_args.dart';
import 'get_access_package_catalog_result.dart';
import 'get_access_package_catalog_role_args.dart';
import 'get_access_package_catalog_role_result.dart';
import 'get_access_package_result.dart';
import 'get_administrative_unit_args.dart';
import 'get_administrative_unit_result.dart';
import 'get_application_args.dart';
import 'get_application_published_app_ids_result.dart';
import 'get_application_result.dart';
import 'get_application_template_args.dart';
import 'get_application_template_result.dart';
import 'get_client_config_result.dart';
import 'get_directory_object_args.dart';
import 'get_directory_object_result.dart';
import 'get_directory_role_templates_result.dart';
import 'get_directory_roles_result.dart';
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_group_role_management_policy_args.dart';
import 'get_group_role_management_policy_result.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';
import 'get_named_location_args.dart';
import 'get_named_location_result.dart';
import 'get_service_principal_args.dart';
import 'get_service_principal_result.dart';
import 'get_service_principals_args.dart';
import 'get_service_principals_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'get_users_args.dart';
import 'get_users_result.dart';

/// Use this data source to retrieve information for an existing access package within Identity Governance in Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `EntitlementManagement.Read.All`, or `EntitlementManagement.ReadWrite.All`.
///
/// When authenticated with a user principal, this data source requires one of the following directory roles: `Catalog owner`, `Catalog reader`, `Access package manager`, `Global Reader`, or `Global Administrator`.
///
/// ## Example Usage
///
/// *Look up by ID*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getAccessPackage({
///     objectId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_access_package(object_id="00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetAccessPackage.Invoke(new()
///     {
///         ObjectId = "00000000-0000-0000-0000-000000000000",
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
/// 		_, err := azuread.LookupAccessPackage(ctx, &azuread.LookupAccessPackageArgs{
/// 			ObjectId: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetAccessPackageArgs;
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
///         final var example = AzureadFunctions.getAccessPackage(GetAccessPackageArgs.builder()
///             .objectId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getAccessPackage
///       arguments:
///         objectId: 00000000-0000-0000-0000-000000000000
/// ```
///
///
/// *Look up by DisplayName*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getAccessPackage({
///     catalogId: "00000000-0000-0000-0000-000000000000",
///     displayName: "My access package Catalog",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_access_package(catalog_id="00000000-0000-0000-0000-000000000000",
///     display_name="My access package Catalog")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetAccessPackage.Invoke(new()
///     {
///         CatalogId = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "My access package Catalog",
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
/// 		_, err := azuread.LookupAccessPackage(ctx, &azuread.LookupAccessPackageArgs{
/// 			CatalogId:   pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.StringRef("My access package Catalog"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetAccessPackageArgs;
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
///         final var example = AzureadFunctions.getAccessPackage(GetAccessPackageArgs.builder()
///             .catalogId("00000000-0000-0000-0000-000000000000")
///             .displayName("My access package Catalog")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getAccessPackage
///       arguments:
///         catalogId: 00000000-0000-0000-0000-000000000000
///         displayName: My access package Catalog
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_access_package_get_access_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPackageResult> getAccessPackage(
  GetAccessPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getAccessPackage:getAccessPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPackageResult.fromMap(result);
}

/// i
/// Use this resource to retrieve information for an existing access package catalog within Identity Governance in Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `EntitlementManagement.Read.All`, or `EntitlementManagement.ReadWrite.All`.
///
/// When authenticated with a user principal, this data source requires one of the following directory roles: `Catalog owner`, `Catalog reader`, `Global Reader`, or `Global Administrator`.
///
/// ## Example Usage
///
/// *Look up by ID*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getAccessPackageCatalog({
///     objectId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_access_package_catalog(object_id="00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetAccessPackageCatalog.Invoke(new()
///     {
///         ObjectId = "00000000-0000-0000-0000-000000000000",
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
/// 		_, err := azuread.LookupAccessPackageCatalog(ctx, &azuread.LookupAccessPackageCatalogArgs{
/// 			ObjectId: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetAccessPackageCatalogArgs;
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
///         final var example = AzureadFunctions.getAccessPackageCatalog(GetAccessPackageCatalogArgs.builder()
///             .objectId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getAccessPackageCatalog
///       arguments:
///         objectId: 00000000-0000-0000-0000-000000000000
/// ```
///
///
/// *Look up by DisplayName*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getAccessPackageCatalog({
///     displayName: "My access package Catalog",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_access_package_catalog(display_name="My access package Catalog")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetAccessPackageCatalog.Invoke(new()
///     {
///         DisplayName = "My access package Catalog",
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
/// 		_, err := azuread.LookupAccessPackageCatalog(ctx, &azuread.LookupAccessPackageCatalogArgs{
/// 			DisplayName: pulumi.StringRef("My access package Catalog"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetAccessPackageCatalogArgs;
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
///         final var example = AzureadFunctions.getAccessPackageCatalog(GetAccessPackageCatalogArgs.builder()
///             .displayName("My access package Catalog")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getAccessPackageCatalog
///       arguments:
///         displayName: My access package Catalog
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_access_package_catalog_get_access_package_catalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPackageCatalogResult> getAccessPackageCatalog(
  GetAccessPackageCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getAccessPackageCatalog:getAccessPackageCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPackageCatalogResult.fromMap(result);
}

/// Gets information about an access package catalog role.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `EntitlementManagement.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
/// ### By Group Display Name)
///
/// *Look up by display name*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getAccessPackageCatalogRole({
///     displayName: "Catalog owner",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_access_package_catalog_role(display_name="Catalog owner")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetAccessPackageCatalogRole.Invoke(new()
///     {
///         DisplayName = "Catalog owner",
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
/// 		_, err := azuread.GetAccessPackageCatalogRole(ctx, &azuread.GetAccessPackageCatalogRoleArgs{
/// 			DisplayName: pulumi.StringRef("Catalog owner"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetAccessPackageCatalogRoleArgs;
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
///         final var example = AzureadFunctions.getAccessPackageCatalogRole(GetAccessPackageCatalogRoleArgs.builder()
///             .displayName("Catalog owner")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getAccessPackageCatalogRole
///       arguments:
///         displayName: Catalog owner
/// ```
///
///
/// *Look up by object ID*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getAccessPackageCatalogRole({
///     objectId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_access_package_catalog_role(object_id="00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetAccessPackageCatalogRole.Invoke(new()
///     {
///         ObjectId = "00000000-0000-0000-0000-000000000000",
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
/// 		_, err := azuread.GetAccessPackageCatalogRole(ctx, &azuread.GetAccessPackageCatalogRoleArgs{
/// 			ObjectId: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetAccessPackageCatalogRoleArgs;
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
///         final var example = AzureadFunctions.getAccessPackageCatalogRole(GetAccessPackageCatalogRoleArgs.builder()
///             .objectId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getAccessPackageCatalogRole
///       arguments:
///         objectId: 00000000-0000-0000-0000-000000000000
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_access_package_catalog_role_get_access_package_catalog_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPackageCatalogRoleResult> getAccessPackageCatalogRole(
  GetAccessPackageCatalogRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getAccessPackageCatalogRole:getAccessPackageCatalogRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPackageCatalogRoleResult.fromMap(result);
}

/// Gets information about an adminisrative unit in Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `AdministrativeUnit.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
/// ### By Group Display Name)
///
/// *Look up by display name*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getAdministrativeUnit({
///     displayName: "Example-AU",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_administrative_unit(display_name="Example-AU")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetAdministrativeUnit.Invoke(new()
///     {
///         DisplayName = "Example-AU",
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
/// 		_, err := azuread.LookupAdministrativeUnit(ctx, &azuread.LookupAdministrativeUnitArgs{
/// 			DisplayName: pulumi.StringRef("Example-AU"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetAdministrativeUnitArgs;
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
///         final var example = AzureadFunctions.getAdministrativeUnit(GetAdministrativeUnitArgs.builder()
///             .displayName("Example-AU")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getAdministrativeUnit
///       arguments:
///         displayName: Example-AU
/// ```
///
///
/// *Look up by object ID*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getAdministrativeUnit({
///     objectId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_administrative_unit(object_id="00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetAdministrativeUnit.Invoke(new()
///     {
///         ObjectId = "00000000-0000-0000-0000-000000000000",
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
/// 		_, err := azuread.LookupAdministrativeUnit(ctx, &azuread.LookupAdministrativeUnitArgs{
/// 			ObjectId: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetAdministrativeUnitArgs;
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
///         final var example = AzureadFunctions.getAdministrativeUnit(GetAdministrativeUnitArgs.builder()
///             .objectId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getAdministrativeUnit
///       arguments:
///         objectId: 00000000-0000-0000-0000-000000000000
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_administrative_unit_get_administrative_unit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdministrativeUnitResult> getAdministrativeUnit(
  GetAdministrativeUnitArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getAdministrativeUnit:getAdministrativeUnit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdministrativeUnitResult.fromMap(result);
}

/// Use this data source to access information about an existing Application within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `Application.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getApplication({
///     displayName: "My First AzureAD Application",
/// });
/// export const applicationObjectId = example.then(example => example.objectId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_application(display_name="My First AzureAD Application")
/// pulumi.export("applicationObjectId", example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetApplication.Invoke(new()
///     {
///         DisplayName = "My First AzureAD Application",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["applicationObjectId"] = example.Apply(getApplicationResult => getApplicationResult.ObjectId),
///     };
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
/// 		example, err := azuread.LookupApplication(ctx, &azuread.LookupApplicationArgs{
/// 			DisplayName: pulumi.StringRef("My First AzureAD Application"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("applicationObjectId", example.ObjectId)
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
/// import com.pulumi.azuread.inputs.GetApplicationArgs;
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
///         final var example = AzureadFunctions.getApplication(GetApplicationArgs.builder()
///             .displayName("My First AzureAD Application")
///             .build());
///
///         ctx.export("applicationObjectId", example.objectId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getApplication
///       arguments:
///         displayName: My First AzureAD Application
/// outputs:
///   applicationObjectId: ${example.objectId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_application_get_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}

/// Use this data source to discover application IDs for APIs published by Microsoft.
///
/// This data source uses an [unofficial source of application IDs](https://github.com/hashicorp/go-azure-sdk/blob/main/sdk/environments/application_ids.go), as there is currently no available official indexed source for applications or APIs published by Microsoft.
///
/// The app IDs returned by this data source are sourced from the Azure Global (Public) Cloud, however some of them are known to work in government and national clouds.
///
/// ## Example Usage
///
/// *Listing well-known application IDs*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const wellKnown = azuread.getApplicationPublishedAppIds({});
/// export const publishedAppIds = wellKnown.then(wellKnown => wellKnown.result);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// well_known = azuread.get_application_published_app_ids()
/// pulumi.export("publishedAppIds", well_known.result)
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
///     return new Dictionary<string, object?>
///     {
///         ["publishedAppIds"] = wellKnown.Apply(getApplicationPublishedAppIdsResult => getApplicationPublishedAppIdsResult.Result),
///     };
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
/// 		ctx.Export("publishedAppIds", wellKnown.Result)
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
///         ctx.export("publishedAppIds", wellKnown.result());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   wellKnown:
///     fn::invoke:
///       function: azuread:getApplicationPublishedAppIds
///       arguments: {}
/// outputs:
///   publishedAppIds: ${wellKnown.result}
/// ```
///
///
/// *Granting access to an application*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const wellKnown = azuread.getApplicationPublishedAppIds({});
/// const msgraph = new azuread.ServicePrincipal("msgraph", {
///     clientId: wellKnown.then(wellKnown => wellKnown.result?.MicrosoftGraph),
///     useExisting: true,
/// });
/// const example = new azuread.Application("example", {
///     displayName: "example",
///     requiredResourceAccesses: [{
///         resourceAppId: wellKnown.then(wellKnown => wellKnown.result?.MicrosoftGraph),
///         resourceAccesses: [
///             {
///                 id: msgraph.appRoleIds["User.Read.All"],
///                 type: "Role",
///             },
///             {
///                 id: msgraph.oauth2PermissionScopeIds["User.ReadWrite"],
///                 type: "Scope",
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// well_known = azuread.get_application_published_app_ids()
/// msgraph = azuread.ServicePrincipal("msgraph",
///     client_id=well_known.result["MicrosoftGraph"],
///     use_existing=True)
/// example = azuread.Application("example",
///     display_name="example",
///     required_resource_accesses=[{
///         "resource_app_id": well_known.result["MicrosoftGraph"],
///         "resource_accesses": [
///             {
///                 "id": msgraph.app_role_ids["User.Read.All"],
///                 "type": "Role",
///             },
///             {
///                 "id": msgraph.oauth2_permission_scope_ids["User.ReadWrite"],
///                 "type": "Scope",
///             },
///         ],
///     }])
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
///                         Id = msgraph.AppRoleIds.Apply(appRoleIds => appRoleIds.User_Read_All),
///                         Type = "Role",
///                     },
///                     new AzureAD.Inputs.ApplicationRequiredResourceAccessResourceAccessArgs
///                     {
///                         Id = msgraph.Oauth2PermissionScopeIds.Apply(oauth2PermissionScopeIds => oauth2PermissionScopeIds.User_ReadWrite),
///                         Type = "Scope",
///                     },
///                 },
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
/// 		_, err = azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			RequiredResourceAccesses: azuread.ApplicationRequiredResourceAccessArray{
/// 				&azuread.ApplicationRequiredResourceAccessArgs{
/// 					ResourceAppId: pulumi.String(wellKnown.Result.MicrosoftGraph),
/// 					ResourceAccesses: azuread.ApplicationRequiredResourceAccessResourceAccessArray{
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: msgraph.AppRoleIds.ApplyT(func(appRoleIds map[string]string) (string, error) {
/// 								return appRoleIds.User.Read.All, nil
/// 							}).(pulumi.StringOutput),
/// 							Type: pulumi.String("Role"),
/// 						},
/// 						&azuread.ApplicationRequiredResourceAccessResourceAccessArgs{
/// 							Id: msgraph.Oauth2PermissionScopeIds.ApplyT(func(oauth2PermissionScopeIds map[string]string) (string, error) {
/// 								return oauth2PermissionScopeIds.User.ReadWrite, nil
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
///             .clientId(wellKnown.result().MicrosoftGraph())
///             .useExisting(true)
///             .build());
///
///         var example = new Application("example", ApplicationArgs.builder()
///             .displayName("example")
///             .requiredResourceAccesses(ApplicationRequiredResourceAccessArgs.builder()
///                 .resourceAppId(wellKnown.result().MicrosoftGraph())
///                 .resourceAccesses(
///                     ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id(msgraph.appRoleIds().applyValue(_appRoleIds -> _appRoleIds.User.Read.All()))
///                         .type("Role")
///                         .build(),
///                     ApplicationRequiredResourceAccessResourceAccessArgs.builder()
///                         .id(msgraph.oauth2PermissionScopeIds().applyValue(_oauth2PermissionScopeIds -> _oauth2PermissionScopeIds.User.ReadWrite()))
///                         .type("Scope")
///                         .build())
///                 .build())
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
///       clientId: ${wellKnown.result.MicrosoftGraph}
///       useExisting: true
///   example:
///     type: azuread:Application
///     properties:
///       displayName: example
///       requiredResourceAccesses:
///         - resourceAppId: ${wellKnown.result.MicrosoftGraph}
///           resourceAccesses:
///             - id: ${msgraph.appRoleIds"User.Read.All"[%!s(MISSING)]}
///               type: Role
///             - id: ${msgraph.oauth2PermissionScopeIds"User.ReadWrite"[%!s(MISSING)]}
///               type: Scope
/// variables:
///   wellKnown:
///     fn::invoke:
///       function: azuread:getApplicationPublishedAppIds
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetApplicationPublishedAppIdsResult> getApplicationPublishedAppIds(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getApplicationPublishedAppIds:getApplicationPublishedAppIds',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationPublishedAppIdsResult.fromMap(result);
}

/// Use this data source to access information about an Application Template from the [Azure AD App Gallery](https://azuremarketplace.microsoft.com/en-US/marketplace/apps/category/azure-active-directory-apps).
///
/// ## API Permissions
///
/// This data source does not require any additional roles.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getApplicationTemplate({
///     displayName: "Marketo",
/// });
/// export const applicationTemplateId = example.then(example => example.templateId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_application_template(display_name="Marketo")
/// pulumi.export("applicationTemplateId", example.template_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetApplicationTemplate.Invoke(new()
///     {
///         DisplayName = "Marketo",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["applicationTemplateId"] = example.Apply(getApplicationTemplateResult => getApplicationTemplateResult.TemplateId),
///     };
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
/// 		example, err := azuread.GetApplicationTemplate(ctx, &azuread.GetApplicationTemplateArgs{
/// 			DisplayName: pulumi.StringRef("Marketo"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("applicationTemplateId", example.TemplateId)
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
/// import com.pulumi.azuread.inputs.GetApplicationTemplateArgs;
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
///         final var example = AzureadFunctions.getApplicationTemplate(GetApplicationTemplateArgs.builder()
///             .displayName("Marketo")
///             .build());
///
///         ctx.export("applicationTemplateId", example.templateId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getApplicationTemplate
///       arguments:
///         displayName: Marketo
/// outputs:
///   applicationTemplateId: ${example.templateId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_application_template_get_application_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationTemplateResult> getApplicationTemplate(
  GetApplicationTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getApplicationTemplate:getApplicationTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationTemplateResult.fromMap(result);
}

/// Use this data source to access the configuration of the AzureAD provider.
///
/// ## API Permissions
///
/// No additional roles are required to use this data source.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// export const objectId = current.then(current => current.objectId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// pulumi.export("objectId", current.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["objectId"] = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     };
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
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("objectId", current.ObjectId)
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("objectId", current.objectId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// outputs:
///   objectId: ${current.objectId}
/// ```
/// [options] Invoke options controlling this call.
Future<GetClientConfigResult> getClientConfig(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getClientConfig:getClientConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClientConfigResult.fromMap(result);
}

/// Retrieves the OData type for a generic directory object having the provided object ID.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires either `User.Read.All`, `Group.Read.All` or `Directory.Read.All`, depending on the type of object being queried.
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
/// *Look up and output type of object by ID*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getDirectoryObject({
///     objectId: "00000000-0000-0000-0000-000000000000",
/// });
/// export const objectType = example.then(example => example.type);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_directory_object(object_id="00000000-0000-0000-0000-000000000000")
/// pulumi.export("objectType", example.type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetDirectoryObject.Invoke(new()
///     {
///         ObjectId = "00000000-0000-0000-0000-000000000000",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["objectType"] = example.Apply(getDirectoryObjectResult => getDirectoryObjectResult.Type),
///     };
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
/// 		example, err := azuread.GetDirectoryObject(ctx, &azuread.GetDirectoryObjectArgs{
/// 			ObjectId: "00000000-0000-0000-0000-000000000000",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("objectType", example.Type)
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
/// import com.pulumi.azuread.inputs.GetDirectoryObjectArgs;
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
///         final var example = AzureadFunctions.getDirectoryObject(GetDirectoryObjectArgs.builder()
///             .objectId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///         ctx.export("objectType", example.type());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getDirectoryObject
///       arguments:
///         objectId: 00000000-0000-0000-0000-000000000000
/// outputs:
///   objectType: ${example.type}
/// ```
///
///
/// ## Attributes Reference
///
/// The following attributes are exported:
///
/// * `object_id` - The object ID of the directory object.
/// * `type` - The shortened OData type of the directory object. Possible values include: `Group`, `User` or `ServicePrincipal`.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_directory_object_get_directory_object_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDirectoryObjectResult> getDirectoryObject(
  GetDirectoryObjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getDirectoryObject:getDirectoryObject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryObjectResult.fromMap(result);
}

/// Use this data source to access information about directory role templates within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `RoleManagement.Read.Directory` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getDirectoryRoleTemplates({});
/// export const roles = current.then(current => current.objectIds);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_directory_role_templates()
/// pulumi.export("roles", current.object_ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetDirectoryRoleTemplates.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["roles"] = current.Apply(getDirectoryRoleTemplatesResult => getDirectoryRoleTemplatesResult.ObjectIds),
///     };
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
/// 		current, err := azuread.GetDirectoryRoleTemplates(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("roles", current.ObjectIds)
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
///         final var current = AzureadFunctions.getDirectoryRoleTemplates(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("roles", current.objectIds());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getDirectoryRoleTemplates
///       arguments: {}
/// outputs:
///   roles: ${current.objectIds}
/// ```
/// [options] Invoke options controlling this call.
Future<GetDirectoryRoleTemplatesResult> getDirectoryRoleTemplates(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getDirectoryRoleTemplates:getDirectoryRoleTemplates',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryRoleTemplatesResult.fromMap(result);
}

/// Use this data source to access information about activated directory roles within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `RoleManagement.Read.Directory` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getDirectoryRoles({});
/// export const roles = current.then(current => current.objectIds);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_directory_roles()
/// pulumi.export("roles", current.object_ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetDirectoryRoles.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["roles"] = current.Apply(getDirectoryRolesResult => getDirectoryRolesResult.ObjectIds),
///     };
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
/// 		current, err := azuread.GetDirectoryRoles(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("roles", current.ObjectIds)
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
///         final var current = AzureadFunctions.getDirectoryRoles(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("roles", current.objectIds());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getDirectoryRoles
///       arguments: {}
/// outputs:
///   roles: ${current.objectIds}
/// ```
/// [options] Invoke options controlling this call.
Future<GetDirectoryRolesResult> getDirectoryRoles(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getDirectoryRoles:getDirectoryRoles',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryRolesResult.fromMap(result);
}

/// Use this data source to access information about existing Domains within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `Domain.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const aadDomains = azuread.getDomains({});
/// export const domainNames = aadDomains.then(aadDomains => aadDomains.domains.map(__item => __item.domainName));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// aad_domains = azuread.get_domains()
/// pulumi.export("domainNames", [__item.domain_name for __item in aad_domains.domains])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var aadDomains = AzureAD.GetDomains.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["domainNames"] = aadDomains.Apply(getDomainsResult => getDomainsResult.Domains).Select(__item => __item.DomainName).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// aadDomains, err := azuread.GetDomains(ctx, &azuread.GetDomainsArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("domainNames", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-43)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetDomainsArgs;
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
///         final var aadDomains = AzureadFunctions.getDomains(GetDomainsArgs.builder()
///             .build());
///
///         ctx.export("domainNames", aadDomains.domains().stream().map(element -> element.domainName()).collect(toList()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// Gets information about an Azure Active Directory group.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `Group.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
/// ### By Group Display Name)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getGroup({
///     displayName: "MyGroupName",
///     securityEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_group(display_name="MyGroupName",
///     security_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetGroup.Invoke(new()
///     {
///         DisplayName = "MyGroupName",
///         SecurityEnabled = true,
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
/// 		_, err := azuread.LookupGroup(ctx, &azuread.LookupGroupArgs{
/// 			DisplayName:     pulumi.StringRef("MyGroupName"),
/// 			SecurityEnabled: pulumi.BoolRef(true),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetGroupArgs;
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
///         final var example = AzureadFunctions.getGroup(GetGroupArgs.builder()
///             .displayName("MyGroupName")
///             .securityEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getGroup
///       arguments:
///         displayName: MyGroupName
///         securityEnabled: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

/// Use this data source to retrieve a role policy for an Azure AD group.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the `RoleManagementPolicy.Read.AzureADGroup` Microsoft Graph API permissions.
///
/// When authenticated with a user principal, this resource requires `Global Administrator` directory role, or the `Privileged Role Administrator` role in Identity Governance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Group("example", {
///     displayName: "group-name",
///     securityEnabled: true,
/// });
/// const ownersPolicy = azuread.getGroupRoleManagementPolicyOutput({
///     groupId: example.id,
///     roleId: "owner",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Group("example",
///     display_name="group-name",
///     security_enabled=True)
/// owners_policy = azuread.get_group_role_management_policy_output(group_id=example.id,
///     role_id="owner")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "group-name",
///         SecurityEnabled = true,
///     });
///
///     var ownersPolicy = AzureAD.GetGroupRoleManagementPolicy.Invoke(new()
///     {
///         GroupId = example.Id,
///         RoleId = "owner",
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
/// 		example, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("group-name"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = azuread.LookupGroupRoleManagementPolicyOutput(ctx, azuread.GetGroupRoleManagementPolicyOutputArgs{
/// 			GroupId: example.ID(),
/// 			RoleId:  pulumi.String("owner"),
/// 		}, nil)
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
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetGroupRoleManagementPolicyArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("group-name")
///             .securityEnabled(true)
///             .build());
///
///         final var ownersPolicy = AzureadFunctions.getGroupRoleManagementPolicy(GetGroupRoleManagementPolicyArgs.builder()
///             .groupId(example.id())
///             .roleId("owner")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Group
///     properties:
///       displayName: group-name
///       securityEnabled: true
/// variables:
///   ownersPolicy:
///     fn::invoke:
///       function: azuread:getGroupRoleManagementPolicy
///       arguments:
///         groupId: ${example.id}
///         roleId: owner
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_group_role_management_policy_get_group_role_management_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupRoleManagementPolicyResult> getGroupRoleManagementPolicy(
  GetGroupRoleManagementPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getGroupRoleManagementPolicy:getGroupRoleManagementPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupRoleManagementPolicyResult.fromMap(result);
}

/// Gets Object IDs or Display Names for multiple Azure Active Directory groups.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `Group.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
/// *Look up by group name*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getGroups({
///     displayNames: [
///         "group-a",
///         "group-b",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_groups(display_names=[
///     "group-a",
///     "group-b",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetGroups.Invoke(new()
///     {
///         DisplayNames = new[]
///         {
///             "group-a",
///             "group-b",
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
/// 		_, err := azuread.GetGroups(ctx, &azuread.GetGroupsArgs{
/// 			DisplayNames: []string{
/// 				"group-a",
/// 				"group-b",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetGroupsArgs;
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
///         final var example = AzureadFunctions.getGroups(GetGroupsArgs.builder()
///             .displayNames(
///                 "group-a",
///                 "group-b")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getGroups
///       arguments:
///         displayNames:
///           - group-a
///           - group-b
/// ```
///
///
/// *Look up by display name prefix*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const sales = azuread.getGroups({
///     displayNamePrefix: "sales-",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// sales = azuread.get_groups(display_name_prefix="sales-")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sales = AzureAD.GetGroups.Invoke(new()
///     {
///         DisplayNamePrefix = "sales-",
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
/// 		_, err := azuread.GetGroups(ctx, &azuread.GetGroupsArgs{
/// 			DisplayNamePrefix: pulumi.StringRef("sales-"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetGroupsArgs;
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
///         final var sales = AzureadFunctions.getGroups(GetGroupsArgs.builder()
///             .displayNamePrefix("sales-")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sales:
///     fn::invoke:
///       function: azuread:getGroups
///       arguments:
///         displayNamePrefix: sales-
/// ```
///
///
/// *Look up all groups*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const all = azuread.getGroups({
///     returnAll: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// all = azuread.get_groups(return_all=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = AzureAD.GetGroups.Invoke(new()
///     {
///         ReturnAll = true,
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
/// 		_, err := azuread.GetGroups(ctx, &azuread.GetGroupsArgs{
/// 			ReturnAll: pulumi.BoolRef(true),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetGroupsArgs;
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
///         final var all = AzureadFunctions.getGroups(GetGroupsArgs.builder()
///             .returnAll(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: azuread:getGroups
///       arguments:
///         returnAll: true
/// ```
///
///
/// *Look up all mail-enabled groups*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const mailEnabled = azuread.getGroups({
///     mailEnabled: true,
///     returnAll: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// mail_enabled = azuread.get_groups(mail_enabled=True,
///     return_all=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mailEnabled = AzureAD.GetGroups.Invoke(new()
///     {
///         MailEnabled = true,
///         ReturnAll = true,
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
/// 		_, err := azuread.GetGroups(ctx, &azuread.GetGroupsArgs{
/// 			MailEnabled: pulumi.BoolRef(true),
/// 			ReturnAll:   pulumi.BoolRef(true),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetGroupsArgs;
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
///         final var mailEnabled = AzureadFunctions.getGroups(GetGroupsArgs.builder()
///             .mailEnabled(true)
///             .returnAll(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   mailEnabled:
///     fn::invoke:
///       function: azuread:getGroups
///       arguments:
///         mailEnabled: true
///         returnAll: true
/// ```
///
///
/// *Look up all security-enabled groups that are not mail-enabled*
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const securityOnly = azuread.getGroups({
///     mailEnabled: false,
///     returnAll: true,
///     securityEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// security_only = azuread.get_groups(mail_enabled=False,
///     return_all=True,
///     security_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityOnly = AzureAD.GetGroups.Invoke(new()
///     {
///         MailEnabled = false,
///         ReturnAll = true,
///         SecurityEnabled = true,
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
/// 		_, err := azuread.GetGroups(ctx, &azuread.GetGroupsArgs{
/// 			MailEnabled:     pulumi.BoolRef(false),
/// 			ReturnAll:       pulumi.BoolRef(true),
/// 			SecurityEnabled: pulumi.BoolRef(true),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetGroupsArgs;
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
///         final var securityOnly = AzureadFunctions.getGroups(GetGroupsArgs.builder()
///             .mailEnabled(false)
///             .returnAll(true)
///             .securityEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   securityOnly:
///     fn::invoke:
///       function: azuread:getGroups
///       arguments:
///         mailEnabled: false
///         returnAll: true
///         securityEnabled: true
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}

/// Gets information about a Named Location within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this resource requires the following application roles: `Policy.Read.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Conditional Access Administrator` or `Global Reader`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getNamedLocation({
///     displayName: "My Named Location",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_named_location(display_name="My Named Location")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetNamedLocation.Invoke(new()
///     {
///         DisplayName = "My Named Location",
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
/// 		_, err := azuread.LookupNamedLocation(ctx, &azuread.LookupNamedLocationArgs{
/// 			DisplayName: "My Named Location",
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetNamedLocationArgs;
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
///         final var example = AzureadFunctions.getNamedLocation(GetNamedLocationArgs.builder()
///             .displayName("My Named Location")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getNamedLocation
///       arguments:
///         displayName: My Named Location
/// ```
///
///
/// ## Attributes Reference
///
/// The following attributes are exported:
///
/// * `country` - A `country` block as documented below, which describes a country-based named location.
/// * `id` - The ID of the named location.
/// * `ip` - An `ip` block as documented below, which describes an IP-based named location.
/// * `object_id` - The object ID of the named location.
///
/// ---
///
/// `country` block exports the following:
///
/// * `countries_and_regions` - List of countries and/or regions in two-letter format specified by ISO 3166-2.
/// * `include_unknown_countries_and_regions` - Whether IP addresses that don't map to a country or region are included in the named location.
///
/// ---
///
/// `ip` block exports the following:
///
/// * `ip_ranges` - List of IP address ranges in IPv4 CIDR format (e.g. `1.2.3.4/32`) or any allowable IPv6 format from IETF RFC596.
/// * `trusted` - Whether the named location is trusted.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_named_location_get_named_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamedLocationResult> getNamedLocation(
  GetNamedLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getNamedLocation:getNamedLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamedLocationResult.fromMap(result);
}

/// Gets information about an existing service principal associated with an application within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `Application.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
/// *Look up by application display name*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getServicePrincipal({
///     displayName: "my-awesome-application",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_service_principal(display_name="my-awesome-application")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetServicePrincipal.Invoke(new()
///     {
///         DisplayName = "my-awesome-application",
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
/// 		_, err := azuread.LookupServicePrincipal(ctx, &azuread.LookupServicePrincipalArgs{
/// 			DisplayName: pulumi.StringRef("my-awesome-application"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetServicePrincipalArgs;
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
///         final var example = AzureadFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
///             .displayName("my-awesome-application")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getServicePrincipal
///       arguments:
///         displayName: my-awesome-application
/// ```
///
///
/// *Look up by client ID*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getServicePrincipal({
///     clientId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_service_principal(client_id="00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetServicePrincipal.Invoke(new()
///     {
///         ClientId = "00000000-0000-0000-0000-000000000000",
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
/// 		_, err := azuread.LookupServicePrincipal(ctx, &azuread.LookupServicePrincipalArgs{
/// 			ClientId: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetServicePrincipalArgs;
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
///         final var example = AzureadFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
///             .clientId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getServicePrincipal
///       arguments:
///         clientId: 00000000-0000-0000-0000-000000000000
/// ```
///
///
/// *Look up by service principal object ID*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getServicePrincipal({
///     objectId: "00000000-0000-0000-0000-000000000000",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_service_principal(object_id="00000000-0000-0000-0000-000000000000")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetServicePrincipal.Invoke(new()
///     {
///         ObjectId = "00000000-0000-0000-0000-000000000000",
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
/// 		_, err := azuread.LookupServicePrincipal(ctx, &azuread.LookupServicePrincipalArgs{
/// 			ObjectId: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetServicePrincipalArgs;
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
///         final var example = AzureadFunctions.getServicePrincipal(GetServicePrincipalArgs.builder()
///             .objectId("00000000-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getServicePrincipal
///       arguments:
///         objectId: 00000000-0000-0000-0000-000000000000
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_service_principal_get_service_principal_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServicePrincipalResult> getServicePrincipal(
  GetServicePrincipalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getServicePrincipal:getServicePrincipal',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicePrincipalResult.fromMap(result);
}

/// Gets basic information for multiple Azure Active Directory service principals.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `Application.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
/// *Look up by application display names*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getServicePrincipals({
///     displayNames: [
///         "example-app",
///         "another-app",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_service_principals(display_names=[
///     "example-app",
///     "another-app",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetServicePrincipals.Invoke(new()
///     {
///         DisplayNames = new[]
///         {
///             "example-app",
///             "another-app",
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
/// 		_, err := azuread.GetServicePrincipals(ctx, &azuread.GetServicePrincipalsArgs{
/// 			DisplayNames: []string{
/// 				"example-app",
/// 				"another-app",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetServicePrincipalsArgs;
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
///         final var example = AzureadFunctions.getServicePrincipals(GetServicePrincipalsArgs.builder()
///             .displayNames(
///                 "example-app",
///                 "another-app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getServicePrincipals
///       arguments:
///         displayNames:
///           - example-app
///           - another-app
/// ```
///
///
/// *Look up by application IDs (client IDs)*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getServicePrincipals({
///     clientIds: [
///         "11111111-0000-0000-0000-000000000000",
///         "22222222-0000-0000-0000-000000000000",
///         "33333333-0000-0000-0000-000000000000",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_service_principals(client_ids=[
///     "11111111-0000-0000-0000-000000000000",
///     "22222222-0000-0000-0000-000000000000",
///     "33333333-0000-0000-0000-000000000000",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetServicePrincipals.Invoke(new()
///     {
///         ClientIds = new[]
///         {
///             "11111111-0000-0000-0000-000000000000",
///             "22222222-0000-0000-0000-000000000000",
///             "33333333-0000-0000-0000-000000000000",
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
/// 		_, err := azuread.GetServicePrincipals(ctx, &azuread.GetServicePrincipalsArgs{
/// 			ClientIds: []string{
/// 				"11111111-0000-0000-0000-000000000000",
/// 				"22222222-0000-0000-0000-000000000000",
/// 				"33333333-0000-0000-0000-000000000000",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetServicePrincipalsArgs;
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
///         final var example = AzureadFunctions.getServicePrincipals(GetServicePrincipalsArgs.builder()
///             .clientIds(
///                 "11111111-0000-0000-0000-000000000000",
///                 "22222222-0000-0000-0000-000000000000",
///                 "33333333-0000-0000-0000-000000000000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getServicePrincipals
///       arguments:
///         clientIds:
///           - 11111111-0000-0000-0000-000000000000
///           - 22222222-0000-0000-0000-000000000000
///           - 33333333-0000-0000-0000-000000000000
/// ```
///
///
/// *Look up by service principal object IDs*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getServicePrincipals({
///     objectIds: [
///         "00000000-0000-0000-0000-000000000000",
///         "00000000-0000-0000-0000-111111111111",
///         "00000000-0000-0000-0000-222222222222",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_service_principals(object_ids=[
///     "00000000-0000-0000-0000-000000000000",
///     "00000000-0000-0000-0000-111111111111",
///     "00000000-0000-0000-0000-222222222222",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetServicePrincipals.Invoke(new()
///     {
///         ObjectIds = new[]
///         {
///             "00000000-0000-0000-0000-000000000000",
///             "00000000-0000-0000-0000-111111111111",
///             "00000000-0000-0000-0000-222222222222",
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
/// 		_, err := azuread.GetServicePrincipals(ctx, &azuread.GetServicePrincipalsArgs{
/// 			ObjectIds: []string{
/// 				"00000000-0000-0000-0000-000000000000",
/// 				"00000000-0000-0000-0000-111111111111",
/// 				"00000000-0000-0000-0000-222222222222",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetServicePrincipalsArgs;
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
///         final var example = AzureadFunctions.getServicePrincipals(GetServicePrincipalsArgs.builder()
///             .objectIds(
///                 "00000000-0000-0000-0000-000000000000",
///                 "00000000-0000-0000-0000-111111111111",
///                 "00000000-0000-0000-0000-222222222222")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getServicePrincipals
///       arguments:
///         objectIds:
///           - 00000000-0000-0000-0000-000000000000
///           - 00000000-0000-0000-0000-111111111111
///           - 00000000-0000-0000-0000-222222222222
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_service_principals_get_service_principals_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServicePrincipalsResult> getServicePrincipals(
  GetServicePrincipalsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getServicePrincipals:getServicePrincipals',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicePrincipalsResult.fromMap(result);
}

/// Gets information about an Azure Active Directory user.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `User.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getUser({
///     userPrincipalName: "user@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="user@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetUser.Invoke(new()
///     {
///         UserPrincipalName = "user@example.com",
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
/// 		_, err := azuread.LookupUser(ctx, &azuread.LookupUserArgs{
/// 			UserPrincipalName: pulumi.StringRef("user@example.com"),
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetUserArgs;
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
///         final var example = AzureadFunctions.getUser(GetUserArgs.builder()
///             .userPrincipalName("user@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getUser
///       arguments:
///         userPrincipalName: user@example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// Gets basic information for multiple Azure Active Directory users.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this data source.
///
/// When authenticated with a service principal, this data source requires one of the following application roles: `User.ReadBasic.All`, `User.Read.All` or `Directory.Read.All`
///
/// When authenticated with a user principal, this data source does not require any additional roles.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const users = azuread.getUsers({
///     userPrincipalNames: [
///         "kat@example.com",
///         "byte@example.com",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// users = azuread.get_users(user_principal_names=[
///     "kat@example.com",
///     "byte@example.com",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var users = AzureAD.GetUsers.Invoke(new()
///     {
///         UserPrincipalNames = new[]
///         {
///             "kat@example.com",
///             "byte@example.com",
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
/// 		_, err := azuread.GetUsers(ctx, &azuread.GetUsersArgs{
/// 			UserPrincipalNames: []string{
/// 				"kat@example.com",
/// 				"byte@example.com",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.azuread.inputs.GetUsersArgs;
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
///         final var users = AzureadFunctions.getUsers(GetUsersArgs.builder()
///             .userPrincipalNames(
///                 "kat@example.com",
///                 "byte@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   users:
///     fn::invoke:
///       function: azuread:getUsers
///       arguments:
///         userPrincipalNames:
///           - kat@example.com
///           - byte@example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azuread:index/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}
