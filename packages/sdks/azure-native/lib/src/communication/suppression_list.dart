import 'package:pulumi/pulumi.dart' as pulumi;
import 'suppression_list_args.dart';
import 'system_data_response.dart';

/// A class representing a SuppressionList resource.
///
/// Uses Azure REST API version 2023-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2024-09-01-preview, 2025-05-01-preview, 2025-09-01, 2026-03-18. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate SuppressionLists resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var suppressionList = new AzureNative.Communication.SuppressionList("suppressionList", new()
///     {
///         DomainName = "contoso.com",
///         EmailServiceName = "contosoEmailService",
///         ListName = "contosoNewsAlerts",
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
/// 		_, err := communication.NewSuppressionList(ctx, "suppressionList", &communication.SuppressionListArgs{
/// 			DomainName:          pulumi.String("contoso.com"),
/// 			EmailServiceName:    pulumi.String("contosoEmailService"),
/// 			ListName:            pulumi.String("contosoNewsAlerts"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_communication_suppressionlist" "suppressionList" {
///   domain_name           = "contoso.com"
///   email_service_name    = "contosoEmailService"
///   list_name             = "contosoNewsAlerts"
///   resource_group_name   = "contosoResourceGroup"
///   suppression_list_name = "aaaa1111-bbbb-2222-3333-aaaa11112222"
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
/// import com.pulumi.azurenative.communication.SuppressionList;
/// import com.pulumi.azurenative.communication.SuppressionListArgs;
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
///         var suppressionList = new SuppressionList("suppressionList", SuppressionListArgs.builder()
///             .domainName("contoso.com")
///             .emailServiceName("contosoEmailService")
///             .listName("contosoNewsAlerts")
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
/// const suppressionList = new azure_native.communication.SuppressionList("suppressionList", {
///     domainName: "contoso.com",
///     emailServiceName: "contosoEmailService",
///     listName: "contosoNewsAlerts",
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
/// suppression_list = azure_native.communication.SuppressionList("suppressionList",
///     domain_name="contoso.com",
///     email_service_name="contosoEmailService",
///     list_name="contosoNewsAlerts",
///     resource_group_name="contosoResourceGroup",
///     suppression_list_name="aaaa1111-bbbb-2222-3333-aaaa11112222")
///
/// ```
///
/// ```yaml
/// resources:
///   suppressionList:
///     type: azure-native:communication:SuppressionList
///     properties:
///       domainName: contoso.com
///       emailServiceName: contosoEmailService
///       listName: contosoNewsAlerts
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
/// $ pulumi import azure-native:communication:SuppressionList aaaa1111-bbbb-2222-3333-aaaa11112222 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Communication/emailServices/{emailServiceName}/domains/{domainName}/suppressionLists/{suppressionListName}
/// ```
class SuppressionList extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The date the resource was created.
  late final pulumi.Output<String> createdTimeStamp;
  /// The location where the SuppressionListAddress data is stored at rest. This value is inherited from the parent Domains resource.
  late final pulumi.Output<String> dataLocation;
  /// The date the resource was last updated.
  late final pulumi.Output<String> lastUpdatedTimeStamp;
  /// The the name of the suppression list. This value must match one of the valid sender usernames of the sending domain.
  late final pulumi.Output<String?> listName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SuppressionList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SuppressionList]. {@macro pulumi_communication_suppression_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SuppressionList(
    String name, {
    SuppressionListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:communication:SuppressionList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTimeStamp = registerOutput<String>('createdTimeStamp');
    dataLocation = registerOutput<String>('dataLocation');
    lastUpdatedTimeStamp = registerOutput<String>('lastUpdatedTimeStamp');
    listName = registerOutput<String?>('listName');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
