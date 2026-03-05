import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_connector_args.dart';
import 'connector_collection_info_response.dart';

/// The Connector model definition
///
/// Uses Azure REST API version 2019-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CloudConnector_Put
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudConnector = new AzureNative.CostManagement.CloudConnector("cloudConnector", new()
///     {
///         ConnectorName = "aws-123456789012",
///         CredentialsKey = "arn:aws:iam::123456789012:role/AzureCostManagementRole",
///         CredentialsSecret = "external-id",
///         DisplayName = "AWS-Consolidated-1",
///         ReportId = "HourlyWithResources",
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
/// 		_, err := costmanagement.NewCloudConnector(ctx, "cloudConnector", &costmanagement.CloudConnectorArgs{
/// 			ConnectorName:     pulumi.String("aws-123456789012"),
/// 			CredentialsKey:    pulumi.String("arn:aws:iam::123456789012:role/AzureCostManagementRole"),
/// 			CredentialsSecret: pulumi.String("external-id"),
/// 			DisplayName:       pulumi.String("AWS-Consolidated-1"),
/// 			ReportId:          pulumi.String("HourlyWithResources"),
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
/// import com.pulumi.azurenative.costmanagement.CloudConnector;
/// import com.pulumi.azurenative.costmanagement.CloudConnectorArgs;
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
///         var cloudConnector = new CloudConnector("cloudConnector", CloudConnectorArgs.builder()
///             .connectorName("aws-123456789012")
///             .credentialsKey("arn:aws:iam::123456789012:role/AzureCostManagementRole")
///             .credentialsSecret("external-id")
///             .displayName("AWS-Consolidated-1")
///             .reportId("HourlyWithResources")
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
/// const cloudConnector = new azure_native.costmanagement.CloudConnector("cloudConnector", {
///     connectorName: "aws-123456789012",
///     credentialsKey: "arn:aws:iam::123456789012:role/AzureCostManagementRole",
///     credentialsSecret: "external-id",
///     displayName: "AWS-Consolidated-1",
///     reportId: "HourlyWithResources",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_connector = azure_native.costmanagement.CloudConnector("cloudConnector",
///     connector_name="aws-123456789012",
///     credentials_key="arn:aws:iam::123456789012:role/AzureCostManagementRole",
///     credentials_secret="external-id",
///     display_name="AWS-Consolidated-1",
///     report_id="HourlyWithResources")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudConnector:
///     type: azure-native:costmanagement:CloudConnector
///     properties:
///       connectorName: aws-123456789012
///       credentialsKey: arn:aws:iam::123456789012:role/AzureCostManagementRole
///       credentialsSecret: external-id
///       displayName: AWS-Consolidated-1
///       reportId: HourlyWithResources
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
/// $ pulumi import azure-native:costmanagement:CloudConnector aws-123456789012 /providers/Microsoft.CostManagement/cloudConnectors/{connectorName}
/// ```
class CloudConnector extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Connector billing model
  late final pulumi.Output<String?> billingModel;
  /// Collection information
  late final pulumi.Output<ConnectorCollectionInfoResponse> collectionInfo;
  /// Connector definition creation datetime
  late final pulumi.Output<String> createdOn;
  /// Credentials authentication key (eg AWS ARN)
  late final pulumi.Output<String?> credentialsKey;
  /// Number of days remaining of trial
  late final pulumi.Output<int> daysTrialRemaining;
  /// Default ManagementGroupId
  late final pulumi.Output<String?> defaultManagementGroupId;
  /// Connector DisplayName
  late final pulumi.Output<String?> displayName;
  /// Associated ExternalBillingAccountId
  late final pulumi.Output<String> externalBillingAccountId;
  /// Connector kind (eg aws)
  late final pulumi.Output<String?> kind;
  /// Connector last modified datetime
  late final pulumi.Output<String> modifiedOn;
  /// Connector name
  late final pulumi.Output<String> name;
  /// The display name of the providerBillingAccountId as defined on the external provider
  late final pulumi.Output<String> providerBillingAccountDisplayName;
  /// Connector providerBillingAccountId, determined from credentials (eg AWS Consolidated account number)
  late final pulumi.Output<String> providerBillingAccountId;
  /// Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  late final pulumi.Output<String?> reportId;
  /// Connector status
  late final pulumi.Output<String> status;
  /// Billing SubscriptionId
  late final pulumi.Output<String?> subscriptionId;
  /// Connector type
  late final pulumi.Output<String> type;

  /// Creates a new [CloudConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudConnector]. {@macro pulumi_costmanagement_cloud_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudConnector(
    String name, {
    CloudConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:costmanagement:CloudConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingModel = registerOutput<String?>('billingModel');
    collectionInfo = registerOutput<ConnectorCollectionInfoResponse>('collectionInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorCollectionInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdOn = registerOutput<String>('createdOn');
    credentialsKey = registerOutput<String?>('credentialsKey');
    daysTrialRemaining = registerOutput<int>('daysTrialRemaining');
    defaultManagementGroupId = registerOutput<String?>('defaultManagementGroupId');
    displayName = registerOutput<String?>('displayName');
    externalBillingAccountId = registerOutput<String>('externalBillingAccountId');
    kind = registerOutput<String?>('kind');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    providerBillingAccountDisplayName = registerOutput<String>('providerBillingAccountDisplayName');
    providerBillingAccountId = registerOutput<String>('providerBillingAccountId');
    reportId = registerOutput<String?>('reportId');
    status = registerOutput<String>('status');
    subscriptionId = registerOutput<String?>('subscriptionId');
    type = registerOutput<String>('type');
  }
}
