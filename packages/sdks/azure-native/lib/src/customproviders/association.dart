import 'package:pulumi/pulumi.dart' as pulumi;
import 'association_args.dart';

/// The resource definition of this association.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an association
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var association = new AzureNative.CustomProviders.Association("association", new()
///     {
///         AssociationName = "associationName",
///         Scope = "scope",
///         TargetResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/appRG/providers/Microsoft.Solutions/applications/applicationName",
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
/// 	customproviders "github.com/pulumi/pulumi-azure-native-sdk/customproviders/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customproviders.NewAssociation(ctx, "association", &customproviders.AssociationArgs{
/// 			AssociationName:  pulumi.String("associationName"),
/// 			Scope:            pulumi.String("scope"),
/// 			TargetResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/appRG/providers/Microsoft.Solutions/applications/applicationName"),
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
/// resource "azure-native_customproviders_association" "association" {
///   association_name   = "associationName"
///   scope              = "scope"
///   target_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/appRG/providers/Microsoft.Solutions/applications/applicationName"
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
/// import com.pulumi.azurenative.customproviders.Association;
/// import com.pulumi.azurenative.customproviders.AssociationArgs;
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
///         var association = new Association("association", AssociationArgs.builder()
///             .associationName("associationName")
///             .scope("scope")
///             .targetResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/appRG/providers/Microsoft.Solutions/applications/applicationName")
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
/// const association = new azure_native.customproviders.Association("association", {
///     associationName: "associationName",
///     scope: "scope",
///     targetResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/appRG/providers/Microsoft.Solutions/applications/applicationName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// association = azure_native.customproviders.Association("association",
///     association_name="associationName",
///     scope="scope",
///     target_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/appRG/providers/Microsoft.Solutions/applications/applicationName")
///
/// ```
///
/// ```yaml
/// resources:
///   association:
///     type: azure-native:customproviders:Association
///     properties:
///       associationName: associationName
///       scope: scope
///       targetResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/appRG/providers/Microsoft.Solutions/applications/applicationName
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
/// $ pulumi import azure-native:customproviders:Association associationName /{scope}/providers/Microsoft.CustomProviders/associations/{associationName}
/// ```
class Association extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The association name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the association.
  late final pulumi.Output<String> provisioningState;
  /// The REST resource instance of the target resource for this association.
  late final pulumi.Output<String?> targetResourceId;
  /// The association type.
  late final pulumi.Output<String> type;

  /// Creates a new [Association].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Association]. {@macro pulumi_customproviders_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Association(
    String name, {
    AssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:customproviders:Association',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    targetResourceId = registerOutput<String?>('targetResourceId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Association] resource.
  Association.reference(String urn)
    : super(
        'azure-native:customproviders:Association',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    targetResourceId = registerOutput<String?>('targetResourceId');
    type = registerOutput<String>('type');
  }
}
