import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_catalog_args.dart';

/// Manages an access package catalog within Identity Governance in Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application role: `EntitlementManagement.ReadWrite.All`.
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Catalog owner`, `Catalog creator` or `Global Administrator`
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.AccessPackageCatalog("example", {
///     displayName: "example-access-package-catalog",
///     description: "Example access package catalog",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.AccessPackageCatalog("example",
///     display_name="example-access-package-catalog",
///     description="Example access package catalog")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.AccessPackageCatalog("example", new()
///     {
///         DisplayName = "example-access-package-catalog",
///         Description = "Example access package catalog",
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
/// 		_, err := azuread.NewAccessPackageCatalog(ctx, "example", &azuread.AccessPackageCatalogArgs{
/// 			DisplayName: pulumi.String("example-access-package-catalog"),
/// 			Description: pulumi.String("Example access package catalog"),
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
/// import com.pulumi.azuread.AccessPackageCatalog;
/// import com.pulumi.azuread.AccessPackageCatalogArgs;
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
///         var example = new AccessPackageCatalog("example", AccessPackageCatalogArgs.builder()
///             .displayName("example-access-package-catalog")
///             .description("Example access package catalog")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:AccessPackageCatalog
///     properties:
///       displayName: example-access-package-catalog
///       description: Example access package catalog
/// ```
///
///
/// ## Import
///
/// An Access Package Catalog can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/accessPackageCatalog:AccessPackageCatalog example 00000000-0000-0000-0000-000000000000
/// ```
class AccessPackageCatalog extends pulumi.CustomResource {
  /// The description of the access package catalog.
  late final pulumi.Output<String> description;
  /// The display name of the access package catalog.
  late final pulumi.Output<String> displayName;
  /// Whether the access packages in this catalog can be requested by users outside the tenant.
  late final pulumi.Output<bool?> externallyVisible;
  /// Whether the access packages in this catalog are available for management.
  late final pulumi.Output<bool?> published;

  /// Creates a new [AccessPackageCatalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPackageCatalog]. {@macro pulumi_index_access_package_catalog_access_package_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPackageCatalog(
    String name, {
    AccessPackageCatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/accessPackageCatalog:AccessPackageCatalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.externallyVisible = registerOutput<bool?>('externallyVisible');
    this.published = registerOutput<bool?>('published');
  }
}
