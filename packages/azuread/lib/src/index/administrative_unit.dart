import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_unit_args.dart';

/// Manages an Administrative Unit within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `AdministrativeUnit.ReadWrite.All` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Privileged Role Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.AdministrativeUnit("example", {
///     displayName: "Example-AU",
///     description: "Just an example",
///     hiddenMembershipEnabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.AdministrativeUnit("example",
///     display_name="Example-AU",
///     description="Just an example",
///     hidden_membership_enabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.AdministrativeUnit("example", new()
///     {
///         DisplayName = "Example-AU",
///         Description = "Just an example",
///         HiddenMembershipEnabled = false,
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
/// 		_, err := azuread.NewAdministrativeUnit(ctx, "example", &azuread.AdministrativeUnitArgs{
/// 			DisplayName:             pulumi.String("Example-AU"),
/// 			Description:             pulumi.String("Just an example"),
/// 			HiddenMembershipEnabled: pulumi.Bool(false),
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
/// import com.pulumi.azuread.AdministrativeUnit;
/// import com.pulumi.azuread.AdministrativeUnitArgs;
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
///         var example = new AdministrativeUnit("example", AdministrativeUnitArgs.builder()
///             .displayName("Example-AU")
///             .description("Just an example")
///             .hiddenMembershipEnabled(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:AdministrativeUnit
///     properties:
///       displayName: Example-AU
///       description: Just an example
///       hiddenMembershipEnabled: false
/// ```
///
///
/// ## Import
///
/// Administrative units can be imported using their object ID, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/administrativeUnit:AdministrativeUnit example /directory/administrativeUnits/00000000-0000-0000-0000-000000000000
/// ```
class AdministrativeUnit extends pulumi.CustomResource {
  /// The description of the administrative unit.
  late final pulumi.Output<String?> description;
  /// The display name of the administrative unit.
  late final pulumi.Output<String> displayName;
  /// Whether the administrative unit and its members are hidden or publicly viewable in the directory.
  late final pulumi.Output<bool?> hiddenMembershipEnabled;
  /// A set of object IDs of members who should be present in this administrative unit. Supported object types are Users or Groups.
  ///
  /// > **Caution** When using the `members` property of the azuread.AdministrativeUnit resource, to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  ///
  /// !> **Warning** Do not use the `members` property at the same time as the azuread.AdministrativeUnitMember resource for the same administrative unit. Doing so will cause a conflict and administrative unit members will be removed.
  late final pulumi.Output<List<String>> members;
  /// The object ID of the administrative unit.
  late final pulumi.Output<String> objectId;
  /// If `true`, will return an error if an existing administrative unit is found with the same name
  late final pulumi.Output<bool?> preventDuplicateNames;

  /// Creates a new [AdministrativeUnit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdministrativeUnit]. {@macro pulumi_index_administrative_unit_administrative_unit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdministrativeUnit(
    String name, {
    AdministrativeUnitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/administrativeUnit:AdministrativeUnit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.hiddenMembershipEnabled = registerOutput<bool?>('hiddenMembershipEnabled');
    this.members = registerOutput<List<String>>('members');
    this.objectId = registerOutput<String>('objectId');
    this.preventDuplicateNames = registerOutput<bool?>('preventDuplicateNames');
  }
}
