import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_collection_info_response.dart';

/// The Connector model definition
///
/// Uses Azure REST API version 2018-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Connector_Put
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connector = new AzureNative.CostManagement.Connector("connector", new()
///     {
///         ConnectorName = "AWSBillingAccount",
///         CredentialsKey = "arn:aws:iam::123456789012:role/AzureCostManagementRole",
///         CredentialsSecret = "external-id",
///         DisplayName = "AWS-Consolidated-1",
///         Location = "westus",
///         ReportId = "HourlyWithResources",
///         ResourceGroupName = "rg1",
///         Status = AzureNative.CostManagement.ConnectorStatus.Active,
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewConnector(ctx, "connector", &costmanagement.ConnectorArgs{
/// 			ConnectorName:     pulumi.String("AWSBillingAccount"),
/// 			CredentialsKey:    pulumi.String("arn:aws:iam::123456789012:role/AzureCostManagementRole"),
/// 			CredentialsSecret: pulumi.String("external-id"),
/// 			DisplayName:       pulumi.String("AWS-Consolidated-1"),
/// 			Location:          pulumi.String("westus"),
/// 			ReportId:          pulumi.String("HourlyWithResources"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Status:            pulumi.String(costmanagement.ConnectorStatusActive),
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
/// import com.pulumi.azurenative.costmanagement.Connector;
/// import com.pulumi.azurenative.costmanagement.ConnectorArgs;
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
///         var connector = new Connector("connector", ConnectorArgs.builder()
///             .connectorName("AWSBillingAccount")
///             .credentialsKey("arn:aws:iam::123456789012:role/AzureCostManagementRole")
///             .credentialsSecret("external-id")
///             .displayName("AWS-Consolidated-1")
///             .location("westus")
///             .reportId("HourlyWithResources")
///             .resourceGroupName("rg1")
///             .status("active")
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
/// const connector = new azure_native.costmanagement.Connector("connector", {
///     connectorName: "AWSBillingAccount",
///     credentialsKey: "arn:aws:iam::123456789012:role/AzureCostManagementRole",
///     credentialsSecret: "external-id",
///     displayName: "AWS-Consolidated-1",
///     location: "westus",
///     reportId: "HourlyWithResources",
///     resourceGroupName: "rg1",
///     status: azure_native.costmanagement.ConnectorStatus.Active,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connector = azure_native.costmanagement.Connector("connector",
///     connector_name="AWSBillingAccount",
///     credentials_key="arn:aws:iam::123456789012:role/AzureCostManagementRole",
///     credentials_secret="external-id",
///     display_name="AWS-Consolidated-1",
///     location="westus",
///     report_id="HourlyWithResources",
///     resource_group_name="rg1",
///     status=azure_native.costmanagement.ConnectorStatus.ACTIVE)
///
/// ```
///
/// ```yaml
/// resources:
///   connector:
///     type: azure-native:costmanagement:Connector
///     properties:
///       connectorName: AWSBillingAccount
///       credentialsKey: arn:aws:iam::123456789012:role/AzureCostManagementRole
///       credentialsSecret: external-id
///       displayName: AWS-Consolidated-1
///       location: westus
///       reportId: HourlyWithResources
///       resourceGroupName: rg1
///       status: active
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
/// $ pulumi import azure-native:costmanagement:Connector AWSBillingAccount /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.CostManagement/connectors/{connectorName}
/// ```
class Connector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Collection information
  late final pulumi.Output<ConnectorCollectionInfoResponse> collection;

  /// Connector definition creation datetime
  late final pulumi.Output<String> createdOn;

  /// Credentials authentication key (eg AWS ARN)
  late final pulumi.Output<String?> credentialsKey;

  /// Connector DisplayName (defaults to Name)
  late final pulumi.Output<String?> displayName;

  /// Connector kind (eg aws)
  late final pulumi.Output<String?> kind;

  /// Connector location
  late final pulumi.Output<String?> location;

  /// Connector last modified datetime
  late final pulumi.Output<String> modifiedOn;

  /// Connector name
  late final pulumi.Output<String> name;

  /// Connector providerAccountId (determined from credentials)
  late final pulumi.Output<String> providerAccountId;

  /// Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  late final pulumi.Output<String?> reportId;

  /// Connector status
  late final pulumi.Output<String?> status;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Connector type
  late final pulumi.Output<String> type;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_costmanagement_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:costmanagement:Connector',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    collection = registerOutput<ConnectorCollectionInfoResponse>('collection');
    createdOn = registerOutput<String>('createdOn');
    credentialsKey = registerOutput<String?>('credentialsKey');
    displayName = registerOutput<String?>('displayName');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    providerAccountId = registerOutput<String>('providerAccountId');
    reportId = registerOutput<String?>('reportId');
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
