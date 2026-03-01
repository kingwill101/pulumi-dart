import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_assignment_args.dart';
import 'registration_assignment_properties_response.dart';
import 'system_data_response.dart';

/// The registration assignment.
///
/// Uses Azure REST API version 2022-10-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Put Registration Assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registrationAssignment = new AzureNative.ManagedServices.RegistrationAssignment("registrationAssignment", new()
///     {
///         Properties = new AzureNative.ManagedServices.Inputs.RegistrationAssignmentPropertiesArgs
///         {
///             RegistrationDefinitionId = "/subscriptions/0afefe50-734e-4610-8a82-a144ahf49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-6e081c90ada2",
///         },
///         RegistrationAssignmentId = "26c128c2-fefa-4340-9bb1-6e081c90ada2",
///         Scope = "subscription/0afefe50-734e-4610-8a82-a144ahf49dea",
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
/// 	managedservices "github.com/pulumi/pulumi-azure-native-sdk/managedservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managedservices.NewRegistrationAssignment(ctx, "registrationAssignment", &managedservices.RegistrationAssignmentArgs{
/// 			Properties: &managedservices.RegistrationAssignmentPropertiesArgs{
/// 				RegistrationDefinitionId: pulumi.String("/subscriptions/0afefe50-734e-4610-8a82-a144ahf49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-6e081c90ada2"),
/// 			},
/// 			RegistrationAssignmentId: pulumi.String("26c128c2-fefa-4340-9bb1-6e081c90ada2"),
/// 			Scope:                    pulumi.String("subscription/0afefe50-734e-4610-8a82-a144ahf49dea"),
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
/// import com.pulumi.azurenative.managedservices.RegistrationAssignment;
/// import com.pulumi.azurenative.managedservices.RegistrationAssignmentArgs;
/// import com.pulumi.azurenative.managedservices.inputs.RegistrationAssignmentPropertiesArgs;
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
///         var registrationAssignment = new RegistrationAssignment("registrationAssignment", RegistrationAssignmentArgs.builder()
///             .properties(RegistrationAssignmentPropertiesArgs.builder()
///                 .registrationDefinitionId("/subscriptions/0afefe50-734e-4610-8a82-a144ahf49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-6e081c90ada2")
///                 .build())
///             .registrationAssignmentId("26c128c2-fefa-4340-9bb1-6e081c90ada2")
///             .scope("subscription/0afefe50-734e-4610-8a82-a144ahf49dea")
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
/// const registrationAssignment = new azure_native.managedservices.RegistrationAssignment("registrationAssignment", {
///     properties: {
///         registrationDefinitionId: "/subscriptions/0afefe50-734e-4610-8a82-a144ahf49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-6e081c90ada2",
///     },
///     registrationAssignmentId: "26c128c2-fefa-4340-9bb1-6e081c90ada2",
///     scope: "subscription/0afefe50-734e-4610-8a82-a144ahf49dea",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registration_assignment = azure_native.managedservices.RegistrationAssignment("registrationAssignment",
///     properties={
///         "registration_definition_id": "/subscriptions/0afefe50-734e-4610-8a82-a144ahf49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-6e081c90ada2",
///     },
///     registration_assignment_id="26c128c2-fefa-4340-9bb1-6e081c90ada2",
///     scope="subscription/0afefe50-734e-4610-8a82-a144ahf49dea")
///
/// ```
///
/// ```yaml
/// resources:
///   registrationAssignment:
///     type: azure-native:managedservices:RegistrationAssignment
///     properties:
///       properties:
///         registrationDefinitionId: /subscriptions/0afefe50-734e-4610-8a82-a144ahf49dea/providers/Microsoft.ManagedServices/registrationDefinitions/26c128c2-fefa-4340-9bb1-6e081c90ada2
///       registrationAssignmentId: 26c128c2-fefa-4340-9bb1-6e081c90ada2
///       scope: subscription/0afefe50-734e-4610-8a82-a144ahf49dea
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
/// $ pulumi import azure-native:managedservices:RegistrationAssignment 484a7d5f-9729-4b87-bc9b-26610985a013 /{scope}/providers/Microsoft.ManagedServices/registrationAssignments/{registrationAssignmentId}
/// ```
class RegistrationAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the registration assignment.
  late final pulumi.Output<String> name;
  /// The properties of a registration assignment.
  late final pulumi.Output<RegistrationAssignmentPropertiesResponse> properties;
  /// The metadata for the registration assignment resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the Azure resource (Microsoft.ManagedServices/registrationAssignments).
  late final pulumi.Output<String> type;

  /// Creates a new [RegistrationAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistrationAssignment]. {@macro pulumi_managedservices_registration_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistrationAssignment(
    String name, {
    RegistrationAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managedservices:RegistrationAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<RegistrationAssignmentPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
