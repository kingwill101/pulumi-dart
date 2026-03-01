import 'package:pulumi/pulumi.dart' as pulumi;
import 'applicable_schedule_response.dart';
import 'service_fabric_args.dart';

/// A Service Fabric.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServiceFabrics_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceFabric = new AzureNative.DevTestLab.ServiceFabric("serviceFabric", new()
///     {
///         EnvironmentId = "{environmentId}",
///         ExternalServiceFabricId = "{serviceFabricId}",
///         LabName = "{labName}",
///         Location = "{location}",
///         Name = "{serviceFabricName}",
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
///         },
///         UserName = "{userName}",
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewServiceFabric(ctx, "serviceFabric", &devtestlab.ServiceFabricArgs{
/// 			EnvironmentId:           pulumi.String("{environmentId}"),
/// 			ExternalServiceFabricId: pulumi.String("{serviceFabricId}"),
/// 			LabName:                 pulumi.String("{labName}"),
/// 			Location:                pulumi.String("{location}"),
/// 			Name:                    pulumi.String("{serviceFabricName}"),
/// 			ResourceGroupName:       pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
/// 			},
/// 			UserName: pulumi.String("{userName}"),
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
/// import com.pulumi.azurenative.devtestlab.ServiceFabric;
/// import com.pulumi.azurenative.devtestlab.ServiceFabricArgs;
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
///         var serviceFabric = new ServiceFabric("serviceFabric", ServiceFabricArgs.builder()
///             .environmentId("{environmentId}")
///             .externalServiceFabricId("{serviceFabricId}")
///             .labName("{labName}")
///             .location("{location}")
///             .name("{serviceFabricName}")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.of("tagName1", "tagValue1"))
///             .userName("{userName}")
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
/// const serviceFabric = new azure_native.devtestlab.ServiceFabric("serviceFabric", {
///     environmentId: "{environmentId}",
///     externalServiceFabricId: "{serviceFabricId}",
///     labName: "{labName}",
///     location: "{location}",
///     name: "{serviceFabricName}",
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         tagName1: "tagValue1",
///     },
///     userName: "{userName}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_fabric = azure_native.devtestlab.ServiceFabric("serviceFabric",
///     environment_id="{environmentId}",
///     external_service_fabric_id="{serviceFabricId}",
///     lab_name="{labName}",
///     location="{location}",
///     name="{serviceFabricName}",
///     resource_group_name="resourceGroupName",
///     tags={
///         "tagName1": "tagValue1",
///     },
///     user_name="{userName}")
///
/// ```
///
/// ```yaml
/// resources:
///   serviceFabric:
///     type: azure-native:devtestlab:ServiceFabric
///     properties:
///       environmentId: '{environmentId}'
///       externalServiceFabricId: '{serviceFabricId}'
///       labName: '{labName}'
///       location: '{location}'
///       name: '{serviceFabricName}'
///       resourceGroupName: resourceGroupName
///       tags:
///         tagName1: tagValue1
///       userName: '{userName}'
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
/// $ pulumi import azure-native:devtestlab:ServiceFabric {serviceFabricName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/users/{userName}/servicefabrics/{name}
/// ```
class ServiceFabric extends pulumi.CustomResource {
  /// The applicable schedule for the virtual machine.
  late final pulumi.Output<ApplicableScheduleResponse> applicableSchedule;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The resource id of the environment under which the service fabric resource is present
  late final pulumi.Output<String?> environmentId;
  /// The backing service fabric resource's id
  late final pulumi.Output<String?> externalServiceFabricId;
  /// The location of the resource.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The provisioning status of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// The unique immutable identifier of a resource (Guid).
  late final pulumi.Output<String> uniqueIdentifier;

  /// Creates a new [ServiceFabric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceFabric]. {@macro pulumi_devtestlab_service_fabric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceFabric(
    String name, {
    ServiceFabricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:ServiceFabric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicableSchedule = registerOutput<ApplicableScheduleResponse>('applicableSchedule');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.environmentId = registerOutput<String?>('environmentId');
    this.externalServiceFabricId = registerOutput<String?>('externalServiceFabricId');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }
}
