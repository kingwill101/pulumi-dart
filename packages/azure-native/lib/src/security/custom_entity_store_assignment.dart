import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_entity_store_assignment_args.dart';
import 'system_data_response.dart';

/// Custom entity store assignment
///
/// Uses Azure REST API version 2021-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a custom entity store assignment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customEntityStoreAssignment = new AzureNative.Security.CustomEntityStoreAssignment("customEntityStoreAssignment", new()
///     {
///         CustomEntityStoreAssignmentName = "33e7cc6e-a139-4723-a0e5-76993aee0771",
///         Principal = "aaduser=f3923a3e-ad57-4752-b1a9-fbf3c8e5e082;72f988bf-86f1-41af-91ab-2d7cd011db47",
///         ResourceGroupName = "TestResourceGroup",
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
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewCustomEntityStoreAssignment(ctx, "customEntityStoreAssignment", &security.CustomEntityStoreAssignmentArgs{
/// 			CustomEntityStoreAssignmentName: pulumi.String("33e7cc6e-a139-4723-a0e5-76993aee0771"),
/// 			Principal:                       pulumi.String("aaduser=f3923a3e-ad57-4752-b1a9-fbf3c8e5e082;72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 			ResourceGroupName:               pulumi.String("TestResourceGroup"),
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
/// import com.pulumi.azurenative.security.CustomEntityStoreAssignment;
/// import com.pulumi.azurenative.security.CustomEntityStoreAssignmentArgs;
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
///         var customEntityStoreAssignment = new CustomEntityStoreAssignment("customEntityStoreAssignment", CustomEntityStoreAssignmentArgs.builder()
///             .customEntityStoreAssignmentName("33e7cc6e-a139-4723-a0e5-76993aee0771")
///             .principal("aaduser=f3923a3e-ad57-4752-b1a9-fbf3c8e5e082;72f988bf-86f1-41af-91ab-2d7cd011db47")
///             .resourceGroupName("TestResourceGroup")
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
/// const customEntityStoreAssignment = new azure_native.security.CustomEntityStoreAssignment("customEntityStoreAssignment", {
///     customEntityStoreAssignmentName: "33e7cc6e-a139-4723-a0e5-76993aee0771",
///     principal: "aaduser=f3923a3e-ad57-4752-b1a9-fbf3c8e5e082;72f988bf-86f1-41af-91ab-2d7cd011db47",
///     resourceGroupName: "TestResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_entity_store_assignment = azure_native.security.CustomEntityStoreAssignment("customEntityStoreAssignment",
///     custom_entity_store_assignment_name="33e7cc6e-a139-4723-a0e5-76993aee0771",
///     principal="aaduser=f3923a3e-ad57-4752-b1a9-fbf3c8e5e082;72f988bf-86f1-41af-91ab-2d7cd011db47",
///     resource_group_name="TestResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   customEntityStoreAssignment:
///     type: azure-native:security:CustomEntityStoreAssignment
///     properties:
///       customEntityStoreAssignmentName: 33e7cc6e-a139-4723-a0e5-76993aee0771
///       principal: aaduser=f3923a3e-ad57-4752-b1a9-fbf3c8e5e082;72f988bf-86f1-41af-91ab-2d7cd011db47
///       resourceGroupName: TestResourceGroup
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
/// $ pulumi import azure-native:security:CustomEntityStoreAssignment 33e7cc6e-a139-4723-a0e5-76993aee0771 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Security/customEntityStoreAssignments/{customEntityStoreAssignmentName}
/// ```
class CustomEntityStoreAssignment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The link to entity store database.
  late final pulumi.Output<String?> entityStoreDatabaseLink;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The principal assigned with entity store. Format of principal is: [AAD type]=[PrincipalObjectId];[TenantId]
  late final pulumi.Output<String?> principal;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [CustomEntityStoreAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomEntityStoreAssignment]. {@macro pulumi_security_custom_entity_store_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomEntityStoreAssignment(
    String name, {
    CustomEntityStoreAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:CustomEntityStoreAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.entityStoreDatabaseLink = registerOutput<String?>('entityStoreDatabaseLink');
    this.name = registerOutput<String>('name');
    this.principal = registerOutput<String?>('principal');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
