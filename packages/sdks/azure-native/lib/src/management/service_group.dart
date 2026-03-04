import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_args.dart';
import 'service_group_properties_response.dart';
import 'system_data_response.dart';

/// The serviceGroup details.
///
/// Uses Azure REST API version 2024-02-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutServiceGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceGroup = new AzureNative.Management.ServiceGroup("serviceGroup", new()
///     {
///         Properties = new AzureNative.Management.Inputs.ServiceGroupPropertiesArgs
///         {
///             DisplayName = "ServiceGroup 1 Name",
///             Parent = new AzureNative.Management.Inputs.ParentServiceGroupPropertiesArgs
///             {
///                 ResourceId = "/providers/Microsoft.Management/serviceGroups/RootGroup",
///             },
///         },
///         ServiceGroupName = "ServiceGroup1",
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
/// 	management "github.com/pulumi/pulumi-azure-native-sdk/management/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := management.NewServiceGroup(ctx, "serviceGroup", &management.ServiceGroupArgs{
/// 			Properties: &management.ServiceGroupPropertiesArgs{
/// 				DisplayName: pulumi.String("ServiceGroup 1 Name"),
/// 				Parent: &management.ParentServiceGroupPropertiesArgs{
/// 					ResourceId: pulumi.String("/providers/Microsoft.Management/serviceGroups/RootGroup"),
/// 				},
/// 			},
/// 			ServiceGroupName: pulumi.String("ServiceGroup1"),
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
/// import com.pulumi.azurenative.management.ServiceGroup;
/// import com.pulumi.azurenative.management.ServiceGroupArgs;
/// import com.pulumi.azurenative.management.inputs.ServiceGroupPropertiesArgs;
/// import com.pulumi.azurenative.management.inputs.ParentServiceGroupPropertiesArgs;
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
///         var serviceGroup = new ServiceGroup("serviceGroup", ServiceGroupArgs.builder()
///             .properties(ServiceGroupPropertiesArgs.builder()
///                 .displayName("ServiceGroup 1 Name")
///                 .parent(ParentServiceGroupPropertiesArgs.builder()
///                     .resourceId("/providers/Microsoft.Management/serviceGroups/RootGroup")
///                     .build())
///                 .build())
///             .serviceGroupName("ServiceGroup1")
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
/// const serviceGroup = new azure_native.management.ServiceGroup("serviceGroup", {
///     properties: {
///         displayName: "ServiceGroup 1 Name",
///         parent: {
///             resourceId: "/providers/Microsoft.Management/serviceGroups/RootGroup",
///         },
///     },
///     serviceGroupName: "ServiceGroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_group = azure_native.management.ServiceGroup("serviceGroup",
///     properties={
///         "display_name": "ServiceGroup 1 Name",
///         "parent": {
///             "resource_id": "/providers/Microsoft.Management/serviceGroups/RootGroup",
///         },
///     },
///     service_group_name="ServiceGroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   serviceGroup:
///     type: azure-native:management:ServiceGroup
///     properties:
///       properties:
///         displayName: ServiceGroup 1 Name
///         parent:
///           resourceId: /providers/Microsoft.Management/serviceGroups/RootGroup
///       serviceGroupName: ServiceGroup1
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
/// $ pulumi import azure-native:management:ServiceGroup ServiceGroup1 /providers/Microsoft.Management/serviceGroups/{serviceGroupName}
/// ```
class ServiceGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The kind of the serviceGroup.
  late final pulumi.Output<String?> kind;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// ServiceGroup creation request body parameters.
  late final pulumi.Output<ServiceGroupPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The serviceGroup tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceGroup]. {@macro pulumi_management_service_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceGroup(
    String name, {
    ServiceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:management:ServiceGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ServiceGroupPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
