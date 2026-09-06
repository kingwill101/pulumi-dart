import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_response.dart';
import 'contact_details_response.dart';
import 'order_args.dart';
import 'order_status_response.dart';
import 'system_data_response.dart';
import 'tracking_info_response.dart';

/// The order details.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### OrderPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var order = new AzureNative.DataBoxEdge.Order("order", new()
///     {
///         ContactInformation = new AzureNative.DataBoxEdge.Inputs.ContactDetailsArgs
///         {
///             CompanyName = "Microsoft",
///             ContactPerson = "John Mcclane",
///             EmailList = new[]
///             {
///                 "john@microsoft.com",
///             },
///             Phone = "(800) 426-9400",
///         },
///         DeviceName = "testedgedevice",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         ShippingAddress = new AzureNative.DataBoxEdge.Inputs.AddressArgs
///         {
///             AddressLine1 = "Microsoft Corporation",
///             AddressLine2 = "One Microsoft Way",
///             AddressLine3 = "Redmond",
///             City = "WA",
///             Country = "USA",
///             PostalCode = "98052",
///             State = "WA",
///         },
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
/// 	databoxedge "github.com/pulumi/pulumi-azure-native-sdk/databoxedge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.NewOrder(ctx, "order", &databoxedge.OrderArgs{
/// 			ContactInformation: &databoxedge.ContactDetailsArgs{
/// 				CompanyName:   pulumi.String("Microsoft"),
/// 				ContactPerson: pulumi.String("John Mcclane"),
/// 				EmailList: pulumi.StringArray{
/// 					pulumi.String("john@microsoft.com"),
/// 				},
/// 				Phone: pulumi.String("(800) 426-9400"),
/// 			},
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			ShippingAddress: &databoxedge.AddressArgs{
/// 				AddressLine1: pulumi.String("Microsoft Corporation"),
/// 				AddressLine2: pulumi.String("One Microsoft Way"),
/// 				AddressLine3: pulumi.String("Redmond"),
/// 				City:         pulumi.String("WA"),
/// 				Country:      pulumi.String("USA"),
/// 				PostalCode:   pulumi.String("98052"),
/// 				State:        pulumi.String("WA"),
/// 			},
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
/// resource "azure-native_databoxedge_order" "order" {
///   contact_information = {
///     company_name   = "Microsoft"
///     contact_person = "John Mcclane"
///     email_list     = ["john@microsoft.com"]
///     phone          = "(800) 426-9400"
///   }
///   device_name         = "testedgedevice"
///   resource_group_name = "GroupForEdgeAutomation"
///   shipping_address = {
///     address_line1 = "Microsoft Corporation"
///     address_line2 = "One Microsoft Way"
///     address_line3 = "Redmond"
///     city          = "WA"
///     country       = "USA"
///     postal_code   = "98052"
///     state         = "WA"
///   }
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
/// import com.pulumi.azurenative.databoxedge.Order;
/// import com.pulumi.azurenative.databoxedge.OrderArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.ContactDetailsArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.AddressArgs;
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
///         var order = new Order("order", OrderArgs.builder()
///             .contactInformation(ContactDetailsArgs.builder()
///                 .companyName("Microsoft")
///                 .contactPerson("John Mcclane")
///                 .emailList("john@microsoft.com")
///                 .phone("(800) 426-9400")
///                 .build())
///             .deviceName("testedgedevice")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .shippingAddress(AddressArgs.builder()
///                 .addressLine1("Microsoft Corporation")
///                 .addressLine2("One Microsoft Way")
///                 .addressLine3("Redmond")
///                 .city("WA")
///                 .country("USA")
///                 .postalCode("98052")
///                 .state("WA")
///                 .build())
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
/// const order = new azure_native.databoxedge.Order("order", {
///     contactInformation: {
///         companyName: "Microsoft",
///         contactPerson: "John Mcclane",
///         emailList: ["john@microsoft.com"],
///         phone: "(800) 426-9400",
///     },
///     deviceName: "testedgedevice",
///     resourceGroupName: "GroupForEdgeAutomation",
///     shippingAddress: {
///         addressLine1: "Microsoft Corporation",
///         addressLine2: "One Microsoft Way",
///         addressLine3: "Redmond",
///         city: "WA",
///         country: "USA",
///         postalCode: "98052",
///         state: "WA",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// order = azure_native.databoxedge.Order("order",
///     contact_information={
///         "company_name": "Microsoft",
///         "contact_person": "John Mcclane",
///         "email_list": ["john@microsoft.com"],
///         "phone": "(800) 426-9400",
///     },
///     device_name="testedgedevice",
///     resource_group_name="GroupForEdgeAutomation",
///     shipping_address={
///         "address_line1": "Microsoft Corporation",
///         "address_line2": "One Microsoft Way",
///         "address_line3": "Redmond",
///         "city": "WA",
///         "country": "USA",
///         "postal_code": "98052",
///         "state": "WA",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   order:
///     type: azure-native:databoxedge:Order
///     properties:
///       contactInformation:
///         companyName: Microsoft
///         contactPerson: John Mcclane
///         emailList:
///           - john@microsoft.com
///         phone: (800) 426-9400
///       deviceName: testedgedevice
///       resourceGroupName: GroupForEdgeAutomation
///       shippingAddress:
///         addressLine1: Microsoft Corporation
///         addressLine2: One Microsoft Way
///         addressLine3: Redmond
///         city: WA
///         country: USA
///         postalCode: '98052'
///         state: WA
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
/// $ pulumi import azure-native:databoxedge:Order default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/orders/default
/// ```
class Order extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The contact details.
  late final pulumi.Output<ContactDetailsResponse> contactInformation;
  /// Current status of the order.
  late final pulumi.Output<OrderStatusResponse> currentStatus;
  /// Tracking information for the package delivered to the customer whether it has an original or a replacement device.
  late final pulumi.Output<List<TrackingInfoResponse>> deliveryTrackingInfo;
  /// It specify the order api version.
  late final pulumi.Output<String> kind;
  /// The object name.
  late final pulumi.Output<String> name;
  /// List of status changes in the order.
  late final pulumi.Output<List<OrderStatusResponse>> orderHistory;
  /// It specify the order resource id.
  late final pulumi.Output<String> orderId;
  /// Tracking information for the package returned from the customer whether it has an original or a replacement device.
  late final pulumi.Output<List<TrackingInfoResponse>> returnTrackingInfo;
  /// Serial number of the device.
  late final pulumi.Output<String> serialNumber;
  /// ShipmentType of the order
  late final pulumi.Output<String?> shipmentType;
  /// The shipping address.
  late final pulumi.Output<AddressResponse?> shippingAddress;
  /// Metadata pertaining to creation and last modification of Order
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [Order].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Order]. {@macro pulumi_databoxedge_order_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Order(
    String name, {
    OrderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:Order',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contactInformation = registerOutput<ContactDetailsResponse>('contactInformation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentStatus = registerOutput<OrderStatusResponse>('currentStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrderStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryTrackingInfo = registerOutput<List<TrackingInfoResponse>>('deliveryTrackingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrackingInfoResponse>(guardedValue, (value) => TrackingInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    orderHistory = registerOutput<List<OrderStatusResponse>>('orderHistory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrderStatusResponse>(guardedValue, (value) => OrderStatusResponse.fromMap((value as Map).cast<String, dynamic>())); });
    orderId = registerOutput<String>('orderId');
    returnTrackingInfo = registerOutput<List<TrackingInfoResponse>>('returnTrackingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrackingInfoResponse>(guardedValue, (value) => TrackingInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    serialNumber = registerOutput<String>('serialNumber');
    shipmentType = registerOutput<String?>('shipmentType');
    shippingAddress = registerOutput<AddressResponse?>('shippingAddress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Order] resource.
  Order.reference(String urn)
    : super(
        'azure-native:databoxedge:Order',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contactInformation = registerOutput<ContactDetailsResponse>('contactInformation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    currentStatus = registerOutput<OrderStatusResponse>('currentStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrderStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryTrackingInfo = registerOutput<List<TrackingInfoResponse>>('deliveryTrackingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrackingInfoResponse>(guardedValue, (value) => TrackingInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    orderHistory = registerOutput<List<OrderStatusResponse>>('orderHistory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<OrderStatusResponse>(guardedValue, (value) => OrderStatusResponse.fromMap((value as Map).cast<String, dynamic>())); });
    orderId = registerOutput<String>('orderId');
    returnTrackingInfo = registerOutput<List<TrackingInfoResponse>>('returnTrackingInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TrackingInfoResponse>(guardedValue, (value) => TrackingInfoResponse.fromMap((value as Map).cast<String, dynamic>())); });
    serialNumber = registerOutput<String>('serialNumber');
    shipmentType = registerOutput<String?>('shipmentType');
    shippingAddress = registerOutput<AddressResponse?>('shippingAddress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
