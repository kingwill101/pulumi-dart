import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_details_response.dart';
import 'order_item_args.dart';
import 'order_item_details_response.dart';
import 'resource_identity_response.dart';
import 'system_data_response.dart';

/// Represents order item resource.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// Other available API versions: 2022-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edgeorder [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrderItem
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var orderItem = new AzureNative.EdgeOrder.OrderItem("orderItem", new()
///     {
///         AddressDetails = new AzureNative.EdgeOrder.Inputs.AddressDetailsArgs
///         {
///             ForwardAddress = new AzureNative.EdgeOrder.Inputs.AddressPropertiesArgs
///             {
///                 ContactDetails = new AzureNative.EdgeOrder.Inputs.ContactDetailsArgs
///                 {
///                     ContactName = "XXXX XXXX",
///                     EmailList = new[]
///                     {
///                         "xxxx@xxxx.xxx",
///                     },
///                     Phone = "0000000000",
///                     PhoneExtension = "",
///                 },
///                 ShippingAddress = new AzureNative.EdgeOrder.Inputs.ShippingAddressArgs
///                 {
///                     AddressType = AzureNative.EdgeOrder.AddressType.None,
///                     City = "San Francisco",
///                     CompanyName = "Microsoft",
///                     Country = "US",
///                     PostalCode = "94107",
///                     StateOrProvince = "CA",
///                     StreetAddress1 = "16 TOWNSEND ST",
///                     StreetAddress2 = "UNIT 1",
///                 },
///             },
///         },
///         Location = "eastus",
///         OrderId = "/subscriptions/eb5dc900-6186-49d8-b7d7-febd866fdc1d/resourceGroups/YourResourceGroupName/providers/Microsoft.EdgeOrder/locations/eastus/orders/TestOrderName2",
///         OrderItemDetails = new AzureNative.EdgeOrder.Inputs.OrderItemDetailsArgs
///         {
///             OrderItemType = AzureNative.EdgeOrder.OrderItemType.Purchase,
///             Preferences = new AzureNative.EdgeOrder.Inputs.PreferencesArgs
///             {
///                 TransportPreferences = new AzureNative.EdgeOrder.Inputs.TransportPreferencesArgs
///                 {
///                     PreferredShipmentType = AzureNative.EdgeOrder.TransportShipmentTypes.MicrosoftManaged,
///                 },
///             },
///             ProductDetails = new AzureNative.EdgeOrder.Inputs.ProductDetailsArgs
///             {
///                 HierarchyInformation = new AzureNative.EdgeOrder.Inputs.HierarchyInformationArgs
///                 {
///                     ConfigurationName = "edgep_base",
///                     ProductFamilyName = "azurestackedge",
///                     ProductLineName = "azurestackedge",
///                     ProductName = "azurestackedgegpu",
///                 },
///             },
///         },
///         OrderItemName = "TestOrderItemName2",
///         ResourceGroupName = "YourResourceGroupName",
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
/// 	edgeorder "github.com/pulumi/pulumi-azure-native-sdk/edgeorder/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edgeorder.NewOrderItem(ctx, "orderItem", &edgeorder.OrderItemArgs{
/// 			AddressDetails: &edgeorder.AddressDetailsArgs{
/// 				ForwardAddress: &edgeorder.AddressPropertiesArgs{
/// 					ContactDetails: &edgeorder.ContactDetailsArgs{
/// 						ContactName: pulumi.String("XXXX XXXX"),
/// 						EmailList: pulumi.StringArray{
/// 							pulumi.String("xxxx@xxxx.xxx"),
/// 						},
/// 						Phone:          pulumi.String("0000000000"),
/// 						PhoneExtension: pulumi.String(""),
/// 					},
/// 					ShippingAddress: &edgeorder.ShippingAddressArgs{
/// 						AddressType:     pulumi.String(edgeorder.AddressTypeNone),
/// 						City:            pulumi.String("San Francisco"),
/// 						CompanyName:     pulumi.String("Microsoft"),
/// 						Country:         pulumi.String("US"),
/// 						PostalCode:      pulumi.String("94107"),
/// 						StateOrProvince: pulumi.String("CA"),
/// 						StreetAddress1:  pulumi.String("16 TOWNSEND ST"),
/// 						StreetAddress2:  pulumi.String("UNIT 1"),
/// 					},
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			OrderId:  pulumi.String("/subscriptions/eb5dc900-6186-49d8-b7d7-febd866fdc1d/resourceGroups/YourResourceGroupName/providers/Microsoft.EdgeOrder/locations/eastus/orders/TestOrderName2"),
/// 			OrderItemDetails: &edgeorder.OrderItemDetailsArgs{
/// 				OrderItemType: pulumi.String(edgeorder.OrderItemTypePurchase),
/// 				Preferences: &edgeorder.PreferencesArgs{
/// 					TransportPreferences: &edgeorder.TransportPreferencesArgs{
/// 						PreferredShipmentType: pulumi.String(edgeorder.TransportShipmentTypesMicrosoftManaged),
/// 					},
/// 				},
/// 				ProductDetails: &edgeorder.ProductDetailsArgs{
/// 					HierarchyInformation: &edgeorder.HierarchyInformationArgs{
/// 						ConfigurationName: pulumi.String("edgep_base"),
/// 						ProductFamilyName: pulumi.String("azurestackedge"),
/// 						ProductLineName:   pulumi.String("azurestackedge"),
/// 						ProductName:       pulumi.String("azurestackedgegpu"),
/// 					},
/// 				},
/// 			},
/// 			OrderItemName:     pulumi.String("TestOrderItemName2"),
/// 			ResourceGroupName: pulumi.String("YourResourceGroupName"),
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
/// import com.pulumi.azurenative.edgeorder.OrderItem;
/// import com.pulumi.azurenative.edgeorder.OrderItemArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.AddressDetailsArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.AddressPropertiesArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.ContactDetailsArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.ShippingAddressArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.OrderItemDetailsArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.PreferencesArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.TransportPreferencesArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.ProductDetailsArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.HierarchyInformationArgs;
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
///         var orderItem = new OrderItem("orderItem", OrderItemArgs.builder()
///             .addressDetails(AddressDetailsArgs.builder()
///                 .forwardAddress(AddressPropertiesArgs.builder()
///                     .contactDetails(ContactDetailsArgs.builder()
///                         .contactName("XXXX XXXX")
///                         .emailList("xxxx@xxxx.xxx")
///                         .phone("0000000000")
///                         .phoneExtension("")
///                         .build())
///                     .shippingAddress(ShippingAddressArgs.builder()
///                         .addressType("None")
///                         .city("San Francisco")
///                         .companyName("Microsoft")
///                         .country("US")
///                         .postalCode("94107")
///                         .stateOrProvince("CA")
///                         .streetAddress1("16 TOWNSEND ST")
///                         .streetAddress2("UNIT 1")
///                         .build())
///                     .build())
///                 .build())
///             .location("eastus")
///             .orderId("/subscriptions/eb5dc900-6186-49d8-b7d7-febd866fdc1d/resourceGroups/YourResourceGroupName/providers/Microsoft.EdgeOrder/locations/eastus/orders/TestOrderName2")
///             .orderItemDetails(OrderItemDetailsArgs.builder()
///                 .orderItemType("Purchase")
///                 .preferences(PreferencesArgs.builder()
///                     .transportPreferences(TransportPreferencesArgs.builder()
///                         .preferredShipmentType("MicrosoftManaged")
///                         .build())
///                     .build())
///                 .productDetails(ProductDetailsArgs.builder()
///                     .hierarchyInformation(HierarchyInformationArgs.builder()
///                         .configurationName("edgep_base")
///                         .productFamilyName("azurestackedge")
///                         .productLineName("azurestackedge")
///                         .productName("azurestackedgegpu")
///                         .build())
///                     .build())
///                 .build())
///             .orderItemName("TestOrderItemName2")
///             .resourceGroupName("YourResourceGroupName")
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
/// const orderItem = new azure_native.edgeorder.OrderItem("orderItem", {
///     addressDetails: {
///         forwardAddress: {
///             contactDetails: {
///                 contactName: "XXXX XXXX",
///                 emailList: ["xxxx@xxxx.xxx"],
///                 phone: "0000000000",
///                 phoneExtension: "",
///             },
///             shippingAddress: {
///                 addressType: azure_native.edgeorder.AddressType.None,
///                 city: "San Francisco",
///                 companyName: "Microsoft",
///                 country: "US",
///                 postalCode: "94107",
///                 stateOrProvince: "CA",
///                 streetAddress1: "16 TOWNSEND ST",
///                 streetAddress2: "UNIT 1",
///             },
///         },
///     },
///     location: "eastus",
///     orderId: "/subscriptions/eb5dc900-6186-49d8-b7d7-febd866fdc1d/resourceGroups/YourResourceGroupName/providers/Microsoft.EdgeOrder/locations/eastus/orders/TestOrderName2",
///     orderItemDetails: {
///         orderItemType: azure_native.edgeorder.OrderItemType.Purchase,
///         preferences: {
///             transportPreferences: {
///                 preferredShipmentType: azure_native.edgeorder.TransportShipmentTypes.MicrosoftManaged,
///             },
///         },
///         productDetails: {
///             hierarchyInformation: {
///                 configurationName: "edgep_base",
///                 productFamilyName: "azurestackedge",
///                 productLineName: "azurestackedge",
///                 productName: "azurestackedgegpu",
///             },
///         },
///     },
///     orderItemName: "TestOrderItemName2",
///     resourceGroupName: "YourResourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// order_item = azure_native.edgeorder.OrderItem("orderItem",
///     address_details={
///         "forward_address": {
///             "contact_details": {
///                 "contact_name": "XXXX XXXX",
///                 "email_list": ["xxxx@xxxx.xxx"],
///                 "phone": "0000000000",
///                 "phone_extension": "",
///             },
///             "shipping_address": {
///                 "address_type": azure_native.edgeorder.AddressType.NONE,
///                 "city": "San Francisco",
///                 "company_name": "Microsoft",
///                 "country": "US",
///                 "postal_code": "94107",
///                 "state_or_province": "CA",
///                 "street_address1": "16 TOWNSEND ST",
///                 "street_address2": "UNIT 1",
///             },
///         },
///     },
///     location="eastus",
///     order_id="/subscriptions/eb5dc900-6186-49d8-b7d7-febd866fdc1d/resourceGroups/YourResourceGroupName/providers/Microsoft.EdgeOrder/locations/eastus/orders/TestOrderName2",
///     order_item_details={
///         "order_item_type": azure_native.edgeorder.OrderItemType.PURCHASE,
///         "preferences": {
///             "transport_preferences": {
///                 "preferred_shipment_type": azure_native.edgeorder.TransportShipmentTypes.MICROSOFT_MANAGED,
///             },
///         },
///         "product_details": {
///             "hierarchy_information": {
///                 "configuration_name": "edgep_base",
///                 "product_family_name": "azurestackedge",
///                 "product_line_name": "azurestackedge",
///                 "product_name": "azurestackedgegpu",
///             },
///         },
///     },
///     order_item_name="TestOrderItemName2",
///     resource_group_name="YourResourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   orderItem:
///     type: azure-native:edgeorder:OrderItem
///     properties:
///       addressDetails:
///         forwardAddress:
///           contactDetails:
///             contactName: XXXX XXXX
///             emailList:
///               - xxxx@xxxx.xxx
///             phone: '0000000000'
///             phoneExtension: ""
///           shippingAddress:
///             addressType: None
///             city: San Francisco
///             companyName: Microsoft
///             country: US
///             postalCode: '94107'
///             stateOrProvince: CA
///             streetAddress1: 16 TOWNSEND ST
///             streetAddress2: UNIT 1
///       location: eastus
///       orderId: /subscriptions/eb5dc900-6186-49d8-b7d7-febd866fdc1d/resourceGroups/YourResourceGroupName/providers/Microsoft.EdgeOrder/locations/eastus/orders/TestOrderName2
///       orderItemDetails:
///         orderItemType: Purchase
///         preferences:
///           transportPreferences:
///             preferredShipmentType: MicrosoftManaged
///         productDetails:
///           hierarchyInformation:
///             configurationName: edgep_base
///             productFamilyName: azurestackedge
///             productLineName: azurestackedge
///             productName: azurestackedgegpu
///       orderItemName: TestOrderItemName2
///       resourceGroupName: YourResourceGroupName
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
/// $ pulumi import azure-native:edgeorder:OrderItem TestOrderItemName2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EdgeOrder/orderItems/{orderItemName}
/// ```
class OrderItem extends pulumi.CustomResource {
  /// Represents shipping and return address for order item.
  late final pulumi.Output<AddressDetailsResponse?> addressDetails;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Msi identity of the resource
  late final pulumi.Output<ResourceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Id of the order to which order item belongs to.
  late final pulumi.Output<String> orderId;
  /// Represents order item details.
  late final pulumi.Output<OrderItemDetailsResponse> orderItemDetails;
  /// Provisioning state
  late final pulumi.Output<String> provisioningState;
  /// Start time of order item.
  late final pulumi.Output<String> startTime;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OrderItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrderItem]. {@macro pulumi_edgeorder_order_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrderItem(
    String name, {
    OrderItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:edgeorder:OrderItem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressDetails = registerOutput<AddressDetailsResponse?>('addressDetails');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.identity = registerOutput<ResourceIdentityResponse?>('identity');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.orderId = registerOutput<String>('orderId');
    this.orderItemDetails = registerOutput<OrderItemDetailsResponse>('orderItemDetails');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.startTime = registerOutput<String>('startTime');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
