import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_store_collection_args.dart';
import 'system_data_response.dart';

/// The Collection data structure.
///
/// Uses Azure REST API version 2023-01-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreatePrivateStoreCollection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateStoreCollection = new AzureNative.Marketplace.PrivateStoreCollection("privateStoreCollection", new()
///     {
///         AllSubscriptions = false,
///         Claim = "",
///         CollectionId = "d0f5aa2c-ecc3-4d87-906a-f8c486dcc4f1",
///         CollectionName = "Test Collection",
///         PrivateStoreId = "a0e28e55-90c4-41d8-8e34-bb7ef7775406",
///         SubscriptionsList = new[]
///         {
///             "b340914e-353d-453a-85fb-8f9b65b51f91",
///             "f2baa04d-5bfc-461b-b6d8-61b403c9ec48",
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
/// 	marketplace "github.com/pulumi/pulumi-azure-native-sdk/marketplace/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := marketplace.NewPrivateStoreCollection(ctx, "privateStoreCollection", &marketplace.PrivateStoreCollectionArgs{
/// 			AllSubscriptions: pulumi.Bool(false),
/// 			Claim:            pulumi.String(""),
/// 			CollectionId:     pulumi.String("d0f5aa2c-ecc3-4d87-906a-f8c486dcc4f1"),
/// 			CollectionName:   pulumi.String("Test Collection"),
/// 			PrivateStoreId:   pulumi.String("a0e28e55-90c4-41d8-8e34-bb7ef7775406"),
/// 			SubscriptionsList: pulumi.StringArray{
/// 				pulumi.String("b340914e-353d-453a-85fb-8f9b65b51f91"),
/// 				pulumi.String("f2baa04d-5bfc-461b-b6d8-61b403c9ec48"),
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
/// resource "azure-native_marketplace_privatestorecollection" "privateStoreCollection" {
///   all_subscriptions  = false
///   claim              = ""
///   collection_id      = "d0f5aa2c-ecc3-4d87-906a-f8c486dcc4f1"
///   collection_name    = "Test Collection"
///   private_store_id   = "a0e28e55-90c4-41d8-8e34-bb7ef7775406"
///   subscriptions_list = ["b340914e-353d-453a-85fb-8f9b65b51f91", "f2baa04d-5bfc-461b-b6d8-61b403c9ec48"]
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
/// import com.pulumi.azurenative.marketplace.PrivateStoreCollection;
/// import com.pulumi.azurenative.marketplace.PrivateStoreCollectionArgs;
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
///         var privateStoreCollection = new PrivateStoreCollection("privateStoreCollection", PrivateStoreCollectionArgs.builder()
///             .allSubscriptions(false)
///             .claim("")
///             .collectionId("d0f5aa2c-ecc3-4d87-906a-f8c486dcc4f1")
///             .collectionName("Test Collection")
///             .privateStoreId("a0e28e55-90c4-41d8-8e34-bb7ef7775406")
///             .subscriptionsList(
///                 "b340914e-353d-453a-85fb-8f9b65b51f91",
///                 "f2baa04d-5bfc-461b-b6d8-61b403c9ec48")
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
/// const privateStoreCollection = new azure_native.marketplace.PrivateStoreCollection("privateStoreCollection", {
///     allSubscriptions: false,
///     claim: "",
///     collectionId: "d0f5aa2c-ecc3-4d87-906a-f8c486dcc4f1",
///     collectionName: "Test Collection",
///     privateStoreId: "a0e28e55-90c4-41d8-8e34-bb7ef7775406",
///     subscriptionsList: [
///         "b340914e-353d-453a-85fb-8f9b65b51f91",
///         "f2baa04d-5bfc-461b-b6d8-61b403c9ec48",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_store_collection = azure_native.marketplace.PrivateStoreCollection("privateStoreCollection",
///     all_subscriptions=False,
///     claim="",
///     collection_id="d0f5aa2c-ecc3-4d87-906a-f8c486dcc4f1",
///     collection_name="Test Collection",
///     private_store_id="a0e28e55-90c4-41d8-8e34-bb7ef7775406",
///     subscriptions_list=[
///         "b340914e-353d-453a-85fb-8f9b65b51f91",
///         "f2baa04d-5bfc-461b-b6d8-61b403c9ec48",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   privateStoreCollection:
///     type: azure-native:marketplace:PrivateStoreCollection
///     properties:
///       allSubscriptions: false
///       claim: ""
///       collectionId: d0f5aa2c-ecc3-4d87-906a-f8c486dcc4f1
///       collectionName: Test Collection
///       privateStoreId: a0e28e55-90c4-41d8-8e34-bb7ef7775406
///       subscriptionsList:
///         - b340914e-353d-453a-85fb-8f9b65b51f91
///         - f2baa04d-5bfc-461b-b6d8-61b403c9ec48
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
/// $ pulumi import azure-native:marketplace:PrivateStoreCollection d0f5aa2c-ecc3-4d87-906a-f8c486dcc4f1 /providers/Microsoft.Marketplace/privateStores/{privateStoreId}/collections/{collectionId}
/// ```
class PrivateStoreCollection extends pulumi.CustomResource {
  /// Indicating whether all subscriptions are selected (=true) or not (=false).
  late final pulumi.Output<bool?> allSubscriptions;
  /// Gets list of collection rules
  late final pulumi.Output<List<Map<String, dynamic>>> appliedRules;
  /// Indicating whether all items are approved for this collection (=true) or not (=false).
  late final pulumi.Output<bool> approveAllItems;
  /// Gets the modified date of all items approved.
  late final pulumi.Output<String> approveAllItemsModifiedAt;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the association with Commercial's Billing Account.
  late final pulumi.Output<String?> claim;
  /// Gets collection Id.
  late final pulumi.Output<String> collectionId;
  /// Gets or sets collection name.
  late final pulumi.Output<String?> collectionName;
  /// Indicating whether the collection is enabled or disabled.
  late final pulumi.Output<bool?> enabled;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Gets the number of offers associated with the collection.
  late final pulumi.Output<double> numberOfOffers;
  /// Gets or sets subscription ids list. Empty list indicates all subscriptions are selected, null indicates no update is done, explicit list indicates the explicit selected subscriptions. On insert, null is considered as bad request
  late final pulumi.Output<List<String>?> subscriptionsList;
  /// Metadata pertaining to creation and last modification of the resource
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateStoreCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateStoreCollection]. {@macro pulumi_marketplace_private_store_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateStoreCollection(
    String name, {
    PrivateStoreCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:marketplace:PrivateStoreCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allSubscriptions = registerOutput<bool?>('allSubscriptions');
    appliedRules = registerOutput<List<Map<String, dynamic>>>('appliedRules');
    approveAllItems = registerOutput<bool>('approveAllItems');
    approveAllItemsModifiedAt = registerOutput<String>('approveAllItemsModifiedAt');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    claim = registerOutput<String?>('claim');
    collectionId = registerOutput<String>('collectionId');
    collectionName = registerOutput<String?>('collectionName');
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    numberOfOffers = registerOutput<double>('numberOfOffers');
    subscriptionsList = registerOutput<List<String>?>('subscriptionsList');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
