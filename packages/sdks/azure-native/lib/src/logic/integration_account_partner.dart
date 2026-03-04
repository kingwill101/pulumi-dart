import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_partner_args.dart';
import 'partner_content_response.dart';

/// The integration account partner.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a partner
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountPartner = new AzureNative.Logic.IntegrationAccountPartner("integrationAccountPartner", new()
///     {
///         Content = new AzureNative.Logic.Inputs.PartnerContentArgs
///         {
///             B2b = new AzureNative.Logic.Inputs.B2BPartnerContentArgs
///             {
///                 BusinessIdentities = new[]
///                 {
///                     new AzureNative.Logic.Inputs.BusinessIdentityArgs
///                     {
///                         Qualifier = "AA",
///                         Value = "ZZ",
///                     },
///                 },
///             },
///         },
///         IntegrationAccountName = "testIntegrationAccount",
///         Location = "westus",
///         Metadata = null,
///         PartnerName = "testPartner",
///         PartnerType = AzureNative.Logic.PartnerType.B2B,
///         ResourceGroupName = "testResourceGroup",
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationAccountPartner(ctx, "integrationAccountPartner", &logic.IntegrationAccountPartnerArgs{
/// 			Content: &logic.PartnerContentArgs{
/// 				B2b: &logic.B2BPartnerContentArgs{
/// 					BusinessIdentities: logic.BusinessIdentityArray{
/// 						&logic.BusinessIdentityArgs{
/// 							Qualifier: pulumi.String("AA"),
/// 							Value:     pulumi.String("ZZ"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Location:               pulumi.String("westus"),
/// 			Metadata:               pulumi.Any(map[string]interface{}{}),
/// 			PartnerName:            pulumi.String("testPartner"),
/// 			PartnerType:            pulumi.String(logic.PartnerTypeB2B),
/// 			ResourceGroupName:      pulumi.String("testResourceGroup"),
/// 			Tags:                   pulumi.StringMap{},
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
/// import com.pulumi.azurenative.logic.IntegrationAccountPartner;
/// import com.pulumi.azurenative.logic.IntegrationAccountPartnerArgs;
/// import com.pulumi.azurenative.logic.inputs.PartnerContentArgs;
/// import com.pulumi.azurenative.logic.inputs.B2BPartnerContentArgs;
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
///         var integrationAccountPartner = new IntegrationAccountPartner("integrationAccountPartner", IntegrationAccountPartnerArgs.builder()
///             .content(PartnerContentArgs.builder()
///                 .b2b(B2BPartnerContentArgs.builder()
///                     .businessIdentities(BusinessIdentityArgs.builder()
///                         .qualifier("AA")
///                         .value("ZZ")
///                         .build())
///                     .build())
///                 .build())
///             .integrationAccountName("testIntegrationAccount")
///             .location("westus")
///             .metadata(Map.ofEntries(
///             ))
///             .partnerName("testPartner")
///             .partnerType("B2B")
///             .resourceGroupName("testResourceGroup")
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
/// const integrationAccountPartner = new azure_native.logic.IntegrationAccountPartner("integrationAccountPartner", {
///     content: {
///         b2b: {
///             businessIdentities: [{
///                 qualifier: "AA",
///                 value: "ZZ",
///             }],
///         },
///     },
///     integrationAccountName: "testIntegrationAccount",
///     location: "westus",
///     metadata: {},
///     partnerName: "testPartner",
///     partnerType: azure_native.logic.PartnerType.B2B,
///     resourceGroupName: "testResourceGroup",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_partner = azure_native.logic.IntegrationAccountPartner("integrationAccountPartner",
///     content={
///         "b2b": {
///             "business_identities": [{
///                 "qualifier": "AA",
///                 "value": "ZZ",
///             }],
///         },
///     },
///     integration_account_name="testIntegrationAccount",
///     location="westus",
///     metadata={},
///     partner_name="testPartner",
///     partner_type=azure_native.logic.PartnerType.B2_B,
///     resource_group_name="testResourceGroup",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountPartner:
///     type: azure-native:logic:IntegrationAccountPartner
///     properties:
///       content:
///         b2b:
///           businessIdentities:
///             - qualifier: AA
///               value: ZZ
///       integrationAccountName: testIntegrationAccount
///       location: westus
///       metadata: {}
///       partnerName: testPartner
///       partnerType: B2B
///       resourceGroupName: testResourceGroup
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
/// $ pulumi import azure-native:logic:IntegrationAccountPartner testPartner /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/partners/{partnerName}
/// ```
class IntegrationAccountPartner extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The changed time.
  late final pulumi.Output<String> changedTime;

  /// The partner content.
  late final pulumi.Output<PartnerContentResponse> content;

  /// The created time.
  late final pulumi.Output<String> createdTime;

  /// The resource location.
  late final pulumi.Output<String?> location;

  /// The metadata.
  late final pulumi.Output<dynamic> metadata;

  /// Gets the resource name.
  late final pulumi.Output<String> name;

  /// The partner type.
  late final pulumi.Output<String> partnerType;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccountPartner].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountPartner]. {@macro pulumi_logic_integration_account_partner_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountPartner(
    String name, {
    IntegrationAccountPartnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:logic:IntegrationAccountPartner',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changedTime = registerOutput<String>('changedTime');
    content = registerOutput<PartnerContentResponse>('content');
    createdTime = registerOutput<String>('createdTime');
    location = registerOutput<String?>('location');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    partnerType = registerOutput<String>('partnerType');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
