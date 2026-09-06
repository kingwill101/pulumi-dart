import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_plan_association_args.dart';
import 'system_data_response.dart';

/// The commitment plan association.
///
/// Uses Azure REST API version 2025-06-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutCommitmentPlan
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var commitmentPlanAssociation = new AzureNative.CognitiveServices.CommitmentPlanAssociation("commitmentPlanAssociation", new()
///     {
///         AccountId = "/subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.CognitiveServices/accounts/accountName",
///         CommitmentPlanAssociationName = "commitmentPlanAssociationName",
///         CommitmentPlanName = "commitmentPlanName",
///         ResourceGroupName = "resourceGroupName",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewCommitmentPlanAssociation(ctx, "commitmentPlanAssociation", &cognitiveservices.CommitmentPlanAssociationArgs{
/// 			AccountId:                     pulumi.String("/subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.CognitiveServices/accounts/accountName"),
/// 			CommitmentPlanAssociationName: pulumi.String("commitmentPlanAssociationName"),
/// 			CommitmentPlanName:            pulumi.String("commitmentPlanName"),
/// 			ResourceGroupName:             pulumi.String("resourceGroupName"),
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
/// resource "azure-native_cognitiveservices_commitmentplanassociation" "commitmentPlanAssociation" {
///   account_id                       = "/subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.CognitiveServices/accounts/accountName"
///   commitment_plan_association_name = "commitmentPlanAssociationName"
///   commitment_plan_name             = "commitmentPlanName"
///   resource_group_name              = "resourceGroupName"
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
/// import com.pulumi.azurenative.cognitiveservices.CommitmentPlanAssociation;
/// import com.pulumi.azurenative.cognitiveservices.CommitmentPlanAssociationArgs;
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
///         var commitmentPlanAssociation = new CommitmentPlanAssociation("commitmentPlanAssociation", CommitmentPlanAssociationArgs.builder()
///             .accountId("/subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.CognitiveServices/accounts/accountName")
///             .commitmentPlanAssociationName("commitmentPlanAssociationName")
///             .commitmentPlanName("commitmentPlanName")
///             .resourceGroupName("resourceGroupName")
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
/// const commitmentPlanAssociation = new azure_native.cognitiveservices.CommitmentPlanAssociation("commitmentPlanAssociation", {
///     accountId: "/subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.CognitiveServices/accounts/accountName",
///     commitmentPlanAssociationName: "commitmentPlanAssociationName",
///     commitmentPlanName: "commitmentPlanName",
///     resourceGroupName: "resourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// commitment_plan_association = azure_native.cognitiveservices.CommitmentPlanAssociation("commitmentPlanAssociation",
///     account_id="/subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.CognitiveServices/accounts/accountName",
///     commitment_plan_association_name="commitmentPlanAssociationName",
///     commitment_plan_name="commitmentPlanName",
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   commitmentPlanAssociation:
///     type: azure-native:cognitiveservices:CommitmentPlanAssociation
///     properties:
///       accountId: /subscriptions/subscriptionId/resourceGroups/resourceGroupName/providers/Microsoft.CognitiveServices/accounts/accountName
///       commitmentPlanAssociationName: commitmentPlanAssociationName
///       commitmentPlanName: commitmentPlanName
///       resourceGroupName: resourceGroupName
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
/// $ pulumi import azure-native:cognitiveservices:CommitmentPlanAssociation commitmentPlanAssociationName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/commitmentPlans/{commitmentPlanName}/accountAssociations/{commitmentPlanAssociationName}
/// ```
class CommitmentPlanAssociation extends pulumi.CustomResource {
  /// The Azure resource id of the account.
  late final pulumi.Output<String?> accountId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Etag.
  late final pulumi.Output<String> etag;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CommitmentPlanAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CommitmentPlanAssociation]. {@macro pulumi_cognitiveservices_commitment_plan_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CommitmentPlanAssociation(
    String name, {
    CommitmentPlanAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cognitiveservices:CommitmentPlanAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [CommitmentPlanAssociation] resource.
  CommitmentPlanAssociation.reference(String urn)
    : super(
        'azure-native:cognitiveservices:CommitmentPlanAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String?>('accountId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
