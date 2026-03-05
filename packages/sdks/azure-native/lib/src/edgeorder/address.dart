import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_args.dart';
import 'contact_details_response.dart';
import 'shipping_address_response.dart';
import 'system_data_response.dart';

/// Address Resource.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// Other available API versions: 2022-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edgeorder [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateAddress
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var address = new AzureNative.EdgeOrder.Address("address", new()
///     {
///         AddressClassification = AzureNative.EdgeOrder.AddressClassification.Shipping,
///         AddressName = "TestAddressName2",
///         ContactDetails = new AzureNative.EdgeOrder.Inputs.ContactDetailsArgs
///         {
///             ContactName = "XXXX XXXX",
///             EmailList = new[]
///             {
///                 "xxxx@xxxx.xxx",
///             },
///             Phone = "0000000000",
///             PhoneExtension = "",
///         },
///         Location = "eastus",
///         ResourceGroupName = "YourResourceGroupName",
///         ShippingAddress = new AzureNative.EdgeOrder.Inputs.ShippingAddressArgs
///         {
///             AddressType = AzureNative.EdgeOrder.AddressType.None,
///             City = "San Francisco",
///             CompanyName = "Microsoft",
///             Country = "US",
///             PostalCode = "94107",
///             StateOrProvince = "CA",
///             StreetAddress1 = "16 TOWNSEND ST",
///             StreetAddress2 = "UNIT 1",
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
/// 	edgeorder "github.com/pulumi/pulumi-azure-native-sdk/edgeorder/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edgeorder.NewAddress(ctx, "address", &edgeorder.AddressArgs{
/// 			AddressClassification: pulumi.String(edgeorder.AddressClassificationShipping),
/// 			AddressName:           pulumi.String("TestAddressName2"),
/// 			ContactDetails: &edgeorder.ContactDetailsArgs{
/// 				ContactName: pulumi.String("XXXX XXXX"),
/// 				EmailList: pulumi.StringArray{
/// 					pulumi.String("xxxx@xxxx.xxx"),
/// 				},
/// 				Phone:          pulumi.String("0000000000"),
/// 				PhoneExtension: pulumi.String(""),
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("YourResourceGroupName"),
/// 			ShippingAddress: &edgeorder.ShippingAddressArgs{
/// 				AddressType:     pulumi.String(edgeorder.AddressTypeNone),
/// 				City:            pulumi.String("San Francisco"),
/// 				CompanyName:     pulumi.String("Microsoft"),
/// 				Country:         pulumi.String("US"),
/// 				PostalCode:      pulumi.String("94107"),
/// 				StateOrProvince: pulumi.String("CA"),
/// 				StreetAddress1:  pulumi.String("16 TOWNSEND ST"),
/// 				StreetAddress2:  pulumi.String("UNIT 1"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.edgeorder.Address;
/// import com.pulumi.azurenative.edgeorder.AddressArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.ContactDetailsArgs;
/// import com.pulumi.azurenative.edgeorder.inputs.ShippingAddressArgs;
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
///         var address = new Address("address", AddressArgs.builder()
///             .addressClassification("Shipping")
///             .addressName("TestAddressName2")
///             .contactDetails(ContactDetailsArgs.builder()
///                 .contactName("XXXX XXXX")
///                 .emailList("xxxx@xxxx.xxx")
///                 .phone("0000000000")
///                 .phoneExtension("")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("YourResourceGroupName")
///             .shippingAddress(ShippingAddressArgs.builder()
///                 .addressType("None")
///                 .city("San Francisco")
///                 .companyName("Microsoft")
///                 .country("US")
///                 .postalCode("94107")
///                 .stateOrProvince("CA")
///                 .streetAddress1("16 TOWNSEND ST")
///                 .streetAddress2("UNIT 1")
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
/// const address = new azure_native.edgeorder.Address("address", {
///     addressClassification: azure_native.edgeorder.AddressClassification.Shipping,
///     addressName: "TestAddressName2",
///     contactDetails: {
///         contactName: "XXXX XXXX",
///         emailList: ["xxxx@xxxx.xxx"],
///         phone: "0000000000",
///         phoneExtension: "",
///     },
///     location: "eastus",
///     resourceGroupName: "YourResourceGroupName",
///     shippingAddress: {
///         addressType: azure_native.edgeorder.AddressType.None,
///         city: "San Francisco",
///         companyName: "Microsoft",
///         country: "US",
///         postalCode: "94107",
///         stateOrProvince: "CA",
///         streetAddress1: "16 TOWNSEND ST",
///         streetAddress2: "UNIT 1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// address = azure_native.edgeorder.Address("address",
///     address_classification=azure_native.edgeorder.AddressClassification.SHIPPING,
///     address_name="TestAddressName2",
///     contact_details={
///         "contact_name": "XXXX XXXX",
///         "email_list": ["xxxx@xxxx.xxx"],
///         "phone": "0000000000",
///         "phone_extension": "",
///     },
///     location="eastus",
///     resource_group_name="YourResourceGroupName",
///     shipping_address={
///         "address_type": azure_native.edgeorder.AddressType.NONE,
///         "city": "San Francisco",
///         "company_name": "Microsoft",
///         "country": "US",
///         "postal_code": "94107",
///         "state_or_province": "CA",
///         "street_address1": "16 TOWNSEND ST",
///         "street_address2": "UNIT 1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   address:
///     type: azure-native:edgeorder:Address
///     properties:
///       addressClassification: Shipping
///       addressName: TestAddressName2
///       contactDetails:
///         contactName: XXXX XXXX
///         emailList:
///           - xxxx@xxxx.xxx
///         phone: '0000000000'
///         phoneExtension: ""
///       location: eastus
///       resourceGroupName: YourResourceGroupName
///       shippingAddress:
///         addressType: None
///         city: San Francisco
///         companyName: Microsoft
///         country: US
///         postalCode: '94107'
///         stateOrProvince: CA
///         streetAddress1: 16 TOWNSEND ST
///         streetAddress2: UNIT 1
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
/// $ pulumi import azure-native:edgeorder:Address TestAddressName2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EdgeOrder/addresses/{addressName}
/// ```
class Address extends pulumi.CustomResource {
  /// Type of address based on its usage context.
  late final pulumi.Output<String?> addressClassification;

  /// Status of address validation.
  late final pulumi.Output<String> addressValidationStatus;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Contact details for the address.
  late final pulumi.Output<ContactDetailsResponse?> contactDetails;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state
  late final pulumi.Output<String> provisioningState;

  /// Shipping details for the address.
  late final pulumi.Output<ShippingAddressResponse?> shippingAddress;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Address].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Address]. {@macro pulumi_edgeorder_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Address(
    String name, {
    AddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:edgeorder:Address',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressClassification = registerOutput<String?>('addressClassification');
    addressValidationStatus = registerOutput<String>('addressValidationStatus');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    contactDetails = registerOutput<ContactDetailsResponse?>(
      'contactDetails',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContactDetailsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    shippingAddress = registerOutput<ShippingAddressResponse?>(
      'shippingAddress',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ShippingAddressResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
