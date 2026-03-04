import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cloud_profile_response.dart';
import 'public_cloud_connector_args.dart';
import 'system_data_response.dart';

/// Public Cloud Connector
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PublicCloudConnectors_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var publicCloudConnector = new AzureNative.HybridConnectivity.PublicCloudConnector("publicCloudConnector", new()
///     {
///         AwsCloudProfile = new AzureNative.HybridConnectivity.Inputs.AwsCloudProfileArgs
///         {
///             AccountId = "snbnuxckevyqpm",
///             ExcludedAccounts = new[]
///             {
///                 "rwgqpukglvbqmogqcliqolucp",
///             },
///             IsOrganizationalAccount = true,
///         },
///         HostType = AzureNative.HybridConnectivity.HostType.AWS,
///         Location = "jpiglusfxynfcewcjwvvnn",
///         PublicCloudConnector = "advjwoakdusalamomg",
///         ResourceGroupName = "rgpublicCloud",
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
/// 	hybridconnectivity "github.com/pulumi/pulumi-azure-native-sdk/hybridconnectivity/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridconnectivity.NewPublicCloudConnector(ctx, "publicCloudConnector", &hybridconnectivity.PublicCloudConnectorArgs{
/// 			AwsCloudProfile: &hybridconnectivity.AwsCloudProfileArgs{
/// 				AccountId: pulumi.String("snbnuxckevyqpm"),
/// 				ExcludedAccounts: pulumi.StringArray{
/// 					pulumi.String("rwgqpukglvbqmogqcliqolucp"),
/// 				},
/// 				IsOrganizationalAccount: pulumi.Bool(true),
/// 			},
/// 			HostType:             pulumi.String(hybridconnectivity.HostTypeAWS),
/// 			Location:             pulumi.String("jpiglusfxynfcewcjwvvnn"),
/// 			PublicCloudConnector: pulumi.String("advjwoakdusalamomg"),
/// 			ResourceGroupName:    pulumi.String("rgpublicCloud"),
/// 			Tags:                 pulumi.StringMap{},
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
/// import com.pulumi.azurenative.hybridconnectivity.PublicCloudConnector;
/// import com.pulumi.azurenative.hybridconnectivity.PublicCloudConnectorArgs;
/// import com.pulumi.azurenative.hybridconnectivity.inputs.AwsCloudProfileArgs;
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
///         var publicCloudConnector = new PublicCloudConnector("publicCloudConnector", PublicCloudConnectorArgs.builder()
///             .awsCloudProfile(AwsCloudProfileArgs.builder()
///                 .accountId("snbnuxckevyqpm")
///                 .excludedAccounts("rwgqpukglvbqmogqcliqolucp")
///                 .isOrganizationalAccount(true)
///                 .build())
///             .hostType("AWS")
///             .location("jpiglusfxynfcewcjwvvnn")
///             .publicCloudConnector("advjwoakdusalamomg")
///             .resourceGroupName("rgpublicCloud")
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
/// const publicCloudConnector = new azure_native.hybridconnectivity.PublicCloudConnector("publicCloudConnector", {
///     awsCloudProfile: {
///         accountId: "snbnuxckevyqpm",
///         excludedAccounts: ["rwgqpukglvbqmogqcliqolucp"],
///         isOrganizationalAccount: true,
///     },
///     hostType: azure_native.hybridconnectivity.HostType.AWS,
///     location: "jpiglusfxynfcewcjwvvnn",
///     publicCloudConnector: "advjwoakdusalamomg",
///     resourceGroupName: "rgpublicCloud",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// public_cloud_connector = azure_native.hybridconnectivity.PublicCloudConnector("publicCloudConnector",
///     aws_cloud_profile={
///         "account_id": "snbnuxckevyqpm",
///         "excluded_accounts": ["rwgqpukglvbqmogqcliqolucp"],
///         "is_organizational_account": True,
///     },
///     host_type=azure_native.hybridconnectivity.HostType.AWS,
///     location="jpiglusfxynfcewcjwvvnn",
///     public_cloud_connector="advjwoakdusalamomg",
///     resource_group_name="rgpublicCloud",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   publicCloudConnector:
///     type: azure-native:hybridconnectivity:PublicCloudConnector
///     properties:
///       awsCloudProfile:
///         accountId: snbnuxckevyqpm
///         excludedAccounts:
///           - rwgqpukglvbqmogqcliqolucp
///         isOrganizationalAccount: true
///       hostType: AWS
///       location: jpiglusfxynfcewcjwvvnn
///       publicCloudConnector: advjwoakdusalamomg
///       resourceGroupName: rgpublicCloud
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
/// $ pulumi import azure-native:hybridconnectivity:PublicCloudConnector esixipkbydb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.HybridConnectivity/publicCloudConnectors/{publicCloudConnector}
/// ```
class PublicCloudConnector extends pulumi.CustomResource {
  /// Cloud profile for AWS.
  late final pulumi.Output<AwsCloudProfileResponse> awsCloudProfile;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Connector primary identifier.
  late final pulumi.Output<String> connectorPrimaryIdentifier;

  /// Host cloud the public cloud connector.
  late final pulumi.Output<String> hostType;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PublicCloudConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicCloudConnector]. {@macro pulumi_hybridconnectivity_public_cloud_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicCloudConnector(
    String name, {
    PublicCloudConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:hybridconnectivity:PublicCloudConnector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsCloudProfile = registerOutput<AwsCloudProfileResponse>(
      'awsCloudProfile',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectorPrimaryIdentifier = registerOutput<String>(
      'connectorPrimaryIdentifier',
    );
    hostType = registerOutput<String>('hostType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
