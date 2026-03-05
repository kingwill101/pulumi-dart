import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_store_collection_offer_args.dart';
import 'system_data_response.dart';

/// The privateStore offer data structure.
///
/// Uses Azure REST API version 2023-01-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2025-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native marketplace [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateStoreOffer_update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateStoreCollectionOffer = new AzureNative.Marketplace.PrivateStoreCollectionOffer("privateStoreCollectionOffer", new()
///     {
///         CollectionId = "56a1a02d-8cf8-45df-bf37-d5f7120fcb3d",
///         ETag = "\"9301f4fd-0000-0100-0000-5e248b350666\"",
///         OfferId = "marketplacetestthirdparty.md-test-third-party-2",
///         PrivateStoreId = "a0e28e55-90c4-41d8-8e34-bb7ef7775406",
///         SpecificPlanIdsLimitation = new[]
///         {
///             "0001",
///             "0002",
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
/// 		_, err := marketplace.NewPrivateStoreCollectionOffer(ctx, "privateStoreCollectionOffer", &marketplace.PrivateStoreCollectionOfferArgs{
/// 			CollectionId:   pulumi.String("56a1a02d-8cf8-45df-bf37-d5f7120fcb3d"),
/// 			ETag:           pulumi.String("\"9301f4fd-0000-0100-0000-5e248b350666\""),
/// 			OfferId:        pulumi.String("marketplacetestthirdparty.md-test-third-party-2"),
/// 			PrivateStoreId: pulumi.String("a0e28e55-90c4-41d8-8e34-bb7ef7775406"),
/// 			SpecificPlanIdsLimitation: pulumi.StringArray{
/// 				pulumi.String("0001"),
/// 				pulumi.String("0002"),
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
/// import com.pulumi.azurenative.marketplace.PrivateStoreCollectionOffer;
/// import com.pulumi.azurenative.marketplace.PrivateStoreCollectionOfferArgs;
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
///         var privateStoreCollectionOffer = new PrivateStoreCollectionOffer("privateStoreCollectionOffer", PrivateStoreCollectionOfferArgs.builder()
///             .collectionId("56a1a02d-8cf8-45df-bf37-d5f7120fcb3d")
///             .eTag("\"9301f4fd-0000-0100-0000-5e248b350666\"")
///             .offerId("marketplacetestthirdparty.md-test-third-party-2")
///             .privateStoreId("a0e28e55-90c4-41d8-8e34-bb7ef7775406")
///             .specificPlanIdsLimitation(
///                 "0001",
///                 "0002")
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
/// const privateStoreCollectionOffer = new azure_native.marketplace.PrivateStoreCollectionOffer("privateStoreCollectionOffer", {
///     collectionId: "56a1a02d-8cf8-45df-bf37-d5f7120fcb3d",
///     eTag: "\"9301f4fd-0000-0100-0000-5e248b350666\"",
///     offerId: "marketplacetestthirdparty.md-test-third-party-2",
///     privateStoreId: "a0e28e55-90c4-41d8-8e34-bb7ef7775406",
///     specificPlanIdsLimitation: [
///         "0001",
///         "0002",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_store_collection_offer = azure_native.marketplace.PrivateStoreCollectionOffer("privateStoreCollectionOffer",
///     collection_id="56a1a02d-8cf8-45df-bf37-d5f7120fcb3d",
///     e_tag="\"9301f4fd-0000-0100-0000-5e248b350666\"",
///     offer_id="marketplacetestthirdparty.md-test-third-party-2",
///     private_store_id="a0e28e55-90c4-41d8-8e34-bb7ef7775406",
///     specific_plan_ids_limitation=[
///         "0001",
///         "0002",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   privateStoreCollectionOffer:
///     type: azure-native:marketplace:PrivateStoreCollectionOffer
///     properties:
///       collectionId: 56a1a02d-8cf8-45df-bf37-d5f7120fcb3d
///       eTag: '"9301f4fd-0000-0100-0000-5e248b350666"'
///       offerId: marketplacetestthirdparty.md-test-third-party-2
///       privateStoreId: a0e28e55-90c4-41d8-8e34-bb7ef7775406
///       specificPlanIdsLimitation:
///         - '0001'
///         - '0002'
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
/// $ pulumi import azure-native:marketplace:PrivateStoreCollectionOffer marketplacetestthirdparty.md-test-third-party-2 /providers/Microsoft.Marketplace/privateStores/{privateStoreId}/collections/{collectionId}/offers/{offerId}
/// ```
class PrivateStoreCollectionOffer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Private store offer creation date
  late final pulumi.Output<String> createdAt;
  /// Identifier for purposes of race condition
  late final pulumi.Output<String?> eTag;
  /// Icon File Uris
  late final pulumi.Output<Map<String, String>?> iconFileUris;
  /// Private store offer modification date
  late final pulumi.Output<String> modifiedAt;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// It will be displayed prominently in the marketplace
  late final pulumi.Output<String> offerDisplayName;
  /// Offer plans
  late final pulumi.Output<List<Map<String, dynamic>>?> plans;
  /// Private store unique id
  late final pulumi.Output<String> privateStoreId;
  /// Publisher name that will be displayed prominently in the marketplace
  late final pulumi.Output<String> publisherDisplayName;
  /// Plan ids limitation for this offer
  late final pulumi.Output<List<String>?> specificPlanIdsLimitation;
  /// Metadata pertaining to creation and last modification of the resource
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;
  /// Offers unique id
  late final pulumi.Output<String> uniqueOfferId;
  /// Indicating whether the offer was not updated to db (true = not updated). If the allow list is identical to the existed one in db, the offer would not be updated.
  late final pulumi.Output<bool?> updateSuppressedDueIdempotence;

  /// Creates a new [PrivateStoreCollectionOffer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateStoreCollectionOffer]. {@macro pulumi_marketplace_private_store_collection_offer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateStoreCollectionOffer(
    String name, {
    PrivateStoreCollectionOfferArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:marketplace:PrivateStoreCollectionOffer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    eTag = registerOutput<String?>('eTag');
    iconFileUris = registerOutput<Map<String, String>?>('iconFileUris');
    modifiedAt = registerOutput<String>('modifiedAt');
    this.name = registerOutput<String>('name');
    offerDisplayName = registerOutput<String>('offerDisplayName');
    plans = registerOutput<List<Map<String, dynamic>>?>('plans');
    privateStoreId = registerOutput<String>('privateStoreId');
    publisherDisplayName = registerOutput<String>('publisherDisplayName');
    specificPlanIdsLimitation = registerOutput<List<String>?>('specificPlanIdsLimitation');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    uniqueOfferId = registerOutput<String>('uniqueOfferId');
    updateSuppressedDueIdempotence = registerOutput<bool?>('updateSuppressedDueIdempotence');
  }
}
