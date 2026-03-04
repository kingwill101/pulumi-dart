import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_property_response.dart';
import 'mq_args.dart';
import 'system_data_response.dart';

/// MQ resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Mq_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mq = new AzureNative.IoTOperationsMQ.Mq("mq", new()
///     {
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         Location = "qayqiarqxjennoyvglovxrdiccscq",
///         MqName = "-MK0Vqe3K7Ji",
///         ResourceGroupName = "rgiotoperationsmq",
///         Tags = null,
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
/// 	iotoperationsmq "github.com/pulumi/pulumi-azure-native-sdk/iotoperationsmq/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperationsmq.NewMq(ctx, "mq", &iotoperationsmq.MqArgs{
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			Location:          pulumi.String("qayqiarqxjennoyvglovxrdiccscq"),
/// 			MqName:            pulumi.String("-MK0Vqe3K7Ji"),
/// 			ResourceGroupName: pulumi.String("rgiotoperationsmq"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.iotoperationsmq.Mq;
/// import com.pulumi.azurenative.iotoperationsmq.MqArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
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
///         var mq = new Mq("mq", MqArgs.builder()
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .location("qayqiarqxjennoyvglovxrdiccscq")
///             .mqName("-MK0Vqe3K7Ji")
///             .resourceGroupName("rgiotoperationsmq")
///             .tags(Map.ofEntries(
///             ))
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
/// const mq = new azure_native.iotoperationsmq.Mq("mq", {
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     location: "qayqiarqxjennoyvglovxrdiccscq",
///     mqName: "-MK0Vqe3K7Ji",
///     resourceGroupName: "rgiotoperationsmq",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mq = azure_native.iotoperationsmq.Mq("mq",
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     location="qayqiarqxjennoyvglovxrdiccscq",
///     mq_name="-MK0Vqe3K7Ji",
///     resource_group_name="rgiotoperationsmq",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   mq:
///     type: azure-native:iotoperationsmq:Mq
///     properties:
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       location: qayqiarqxjennoyvglovxrdiccscq
///       mqName: -MK0Vqe3K7Ji
///       resourceGroupName: rgiotoperationsmq
///       tags: {}
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
/// $ pulumi import azure-native:iotoperationsmq:Mq mogfqcmgwpsw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}
/// ```
class Mq extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Mq].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Mq]. {@macro pulumi_iotoperationsmq_mq_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Mq(String name, {MqArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:iotoperationsmq:Mq',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>(
      'extendedLocation',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
