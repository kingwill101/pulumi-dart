import 'package:pulumi/pulumi.dart' as pulumi;
import 'suppression_args.dart';
import 'system_data_response.dart';

/// The details of the snoozed or dismissed rule; for example, the duration, name, and GUID associated with the rule.
///
/// Uses Azure REST API version 2023-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2023-01-01, 2024-11-18-preview, 2025-01-01, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native advisor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateSuppression
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var suppression = new AzureNative.Advisor.Suppression("suppression", new()
///     {
///         Name = "suppressionName1",
///         RecommendationId = "recommendationId",
///         ResourceUri = "resourceUri",
///         Ttl = "07:00:00:00",
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
/// 	advisor "github.com/pulumi/pulumi-azure-native-sdk/advisor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := advisor.NewSuppression(ctx, "suppression", &advisor.SuppressionArgs{
/// 			Name:             pulumi.String("suppressionName1"),
/// 			RecommendationId: pulumi.String("recommendationId"),
/// 			ResourceUri:      pulumi.String("resourceUri"),
/// 			Ttl:              pulumi.String("07:00:00:00"),
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
/// import com.pulumi.azurenative.advisor.Suppression;
/// import com.pulumi.azurenative.advisor.SuppressionArgs;
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
///         var suppression = new Suppression("suppression", SuppressionArgs.builder()
///             .name("suppressionName1")
///             .recommendationId("recommendationId")
///             .resourceUri("resourceUri")
///             .ttl("07:00:00:00")
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
/// const suppression = new azure_native.advisor.Suppression("suppression", {
///     name: "suppressionName1",
///     recommendationId: "recommendationId",
///     resourceUri: "resourceUri",
///     ttl: "07:00:00:00",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// suppression = azure_native.advisor.Suppression("suppression",
///     name="suppressionName1",
///     recommendation_id="recommendationId",
///     resource_uri="resourceUri",
///     ttl="07:00:00:00")
///
/// ```
///
/// ```yaml
/// resources:
///   suppression:
///     type: azure-native:advisor:Suppression
///     properties:
///       name: suppressionName1
///       recommendationId: recommendationId
///       resourceUri: resourceUri
///       ttl: 07:00:00:00
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
/// $ pulumi import azure-native:advisor:Suppression suppressionName1 /{resourceUri}/providers/Microsoft.Advisor/recommendations/{recommendationId}/suppressions/{name}
/// ```
class Suppression extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the expiration time stamp.
  late final pulumi.Output<String> expirationTimeStamp;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The GUID of the suppression.
  late final pulumi.Output<String?> suppressionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The duration for which the suppression is valid.
  late final pulumi.Output<String?> ttl;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Suppression].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Suppression]. {@macro pulumi_advisor_suppression_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Suppression(
    String name, {
    SuppressionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:advisor:Suppression',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    expirationTimeStamp = registerOutput<String>('expirationTimeStamp');
    this.name = registerOutput<String>('name');
    suppressionId = registerOutput<String?>('suppressionId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ttl = registerOutput<String?>('ttl');
    type = registerOutput<String>('type');
  }
}
