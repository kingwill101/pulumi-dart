import 'package:pulumi/pulumi.dart' as pulumi;
import 'suppression_list_address_args.dart';
import 'system_data_response.dart';

/// A object that represents a SuppressionList record.
///
/// Uses Azure REST API version 2023-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2024-09-01-preview, 2025-05-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate SuppressionListAddress resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var suppressionListAddress = new AzureNative.Communication.SuppressionListAddress("suppressionListAddress", new()
///     {
///         AddressId = "11112222-3333-4444-5555-aaaabbbbcccc",
///         DomainName = "contoso.com",
///         Email = "newuser1@fabrikam.com",
///         EmailServiceName = "contosoEmailService",
///         FirstName = "updatedFirstName",
///         ResourceGroupName = "contosoResourceGroup",
///         SuppressionListName = "aaaa1111-bbbb-2222-3333-aaaa11112222",
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
/// 	communication "github.com/pulumi/pulumi-azure-native-sdk/communication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := communication.NewSuppressionListAddress(ctx, "suppressionListAddress", &communication.SuppressionListAddressArgs{
/// 			AddressId:           pulumi.String("11112222-3333-4444-5555-aaaabbbbcccc"),
/// 			DomainName:          pulumi.String("contoso.com"),
/// 			Email:               pulumi.String("newuser1@fabrikam.com"),
/// 			EmailServiceName:    pulumi.String("contosoEmailService"),
/// 			FirstName:           pulumi.String("updatedFirstName"),
/// 			ResourceGroupName:   pulumi.String("contosoResourceGroup"),
/// 			SuppressionListName: pulumi.String("aaaa1111-bbbb-2222-3333-aaaa11112222"),
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
/// import com.pulumi.azurenative.communication.SuppressionListAddress;
/// import com.pulumi.azurenative.communication.SuppressionListAddressArgs;
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
///         var suppressionListAddress = new SuppressionListAddress("suppressionListAddress", SuppressionListAddressArgs.builder()
///             .addressId("11112222-3333-4444-5555-aaaabbbbcccc")
///             .domainName("contoso.com")
///             .email("newuser1@fabrikam.com")
///             .emailServiceName("contosoEmailService")
///             .firstName("updatedFirstName")
///             .resourceGroupName("contosoResourceGroup")
///             .suppressionListName("aaaa1111-bbbb-2222-3333-aaaa11112222")
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
/// const suppressionListAddress = new azure_native.communication.SuppressionListAddress("suppressionListAddress", {
///     addressId: "11112222-3333-4444-5555-aaaabbbbcccc",
///     domainName: "contoso.com",
///     email: "newuser1@fabrikam.com",
///     emailServiceName: "contosoEmailService",
///     firstName: "updatedFirstName",
///     resourceGroupName: "contosoResourceGroup",
///     suppressionListName: "aaaa1111-bbbb-2222-3333-aaaa11112222",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// suppression_list_address = azure_native.communication.SuppressionListAddress("suppressionListAddress",
///     address_id="11112222-3333-4444-5555-aaaabbbbcccc",
///     domain_name="contoso.com",
///     email="newuser1@fabrikam.com",
///     email_service_name="contosoEmailService",
///     first_name="updatedFirstName",
///     resource_group_name="contosoResourceGroup",
///     suppression_list_name="aaaa1111-bbbb-2222-3333-aaaa11112222")
///
/// ```
///
/// ```yaml
/// resources:
///   suppressionListAddress:
///     type: azure-native:communication:SuppressionListAddress
///     properties:
///       addressId: 11112222-3333-4444-5555-aaaabbbbcccc
///       domainName: contoso.com
///       email: newuser1@fabrikam.com
///       emailServiceName: contosoEmailService
///       firstName: updatedFirstName
///       resourceGroupName: contosoResourceGroup
///       suppressionListName: aaaa1111-bbbb-2222-3333-aaaa11112222
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
/// $ pulumi import azure-native:communication:SuppressionListAddress 11112222-3333-4444-5555-aaaabbbbcccc /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Communication/emailServices/{emailServiceName}/domains/{domainName}/suppressionLists/{suppressionListName}/suppressionListAddresses/{addressId}
/// ```
class SuppressionListAddress extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  late final pulumi.Output<String> dataLocation;

  /// Email address of the recipient.
  late final pulumi.Output<String> email;

  /// The first name of the email recipient.
  late final pulumi.Output<String?> firstName;

  /// The date the address was last updated in a suppression list.
  late final pulumi.Output<String> lastModified;

  /// The last name of the email recipient.
  late final pulumi.Output<String?> lastName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// An optional property to provide contextual notes or a description for an address.
  late final pulumi.Output<String?> notes;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SuppressionListAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SuppressionListAddress]. {@macro pulumi_communication_suppression_list_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SuppressionListAddress(
    String name, {
    SuppressionListAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:communication:SuppressionListAddress',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLocation = registerOutput<String>('dataLocation');
    email = registerOutput<String>('email');
    firstName = registerOutput<String?>('firstName');
    lastModified = registerOutput<String>('lastModified');
    lastName = registerOutput<String?>('lastName');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
