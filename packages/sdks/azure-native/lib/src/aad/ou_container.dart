import 'package:pulumi/pulumi.dart' as pulumi;
import 'ou_container_args.dart';
import 'system_data_response.dart';

/// Resource for OuContainer.
///
/// Uses Azure REST API version 2022-12-01. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2025-05-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native aad [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Domain Service
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ouContainer = new AzureNative.Aad.OuContainer("ouContainer", new()
///     {
///         AccountName = "AccountName1",
///         DomainServiceName = "OuContainer.com",
///         OuContainerName = "OuContainer1",
///         Password = "<password>",
///         ResourceGroupName = "OuContainerResourceGroup",
///         Spn = "Spn1",
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
/// 	aad "github.com/pulumi/pulumi-azure-native-sdk/aad/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aad.NewOuContainer(ctx, "ouContainer", &aad.OuContainerArgs{
/// 			AccountName:       pulumi.String("AccountName1"),
/// 			DomainServiceName: pulumi.String("OuContainer.com"),
/// 			OuContainerName:   pulumi.String("OuContainer1"),
/// 			Password:          pulumi.String("<password>"),
/// 			ResourceGroupName: pulumi.String("OuContainerResourceGroup"),
/// 			Spn:               pulumi.String("Spn1"),
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
/// import com.pulumi.azurenative.aad.OuContainer;
/// import com.pulumi.azurenative.aad.OuContainerArgs;
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
///         var ouContainer = new OuContainer("ouContainer", OuContainerArgs.builder()
///             .accountName("AccountName1")
///             .domainServiceName("OuContainer.com")
///             .ouContainerName("OuContainer1")
///             .password("<password>")
///             .resourceGroupName("OuContainerResourceGroup")
///             .spn("Spn1")
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
/// const ouContainer = new azure_native.aad.OuContainer("ouContainer", {
///     accountName: "AccountName1",
///     domainServiceName: "OuContainer.com",
///     ouContainerName: "OuContainer1",
///     password: "<password>",
///     resourceGroupName: "OuContainerResourceGroup",
///     spn: "Spn1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// ou_container = azure_native.aad.OuContainer("ouContainer",
///     account_name="AccountName1",
///     domain_service_name="OuContainer.com",
///     ou_container_name="OuContainer1",
///     password="<password>",
///     resource_group_name="OuContainerResourceGroup",
///     spn="Spn1")
///
/// ```
///
/// ```yaml
/// resources:
///   ouContainer:
///     type: azure-native:aad:OuContainer
///     properties:
///       accountName: AccountName1
///       domainServiceName: OuContainer.com
///       ouContainerName: OuContainer1
///       password: <password>
///       resourceGroupName: OuContainerResourceGroup
///       spn: Spn1
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
/// $ pulumi import azure-native:aad:OuContainer OuContainer.com/OuContainer1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Aad/domainServices/{domainServiceName}/ouContainer/{ouContainerName}
/// ```
class OuContainer extends pulumi.CustomResource {
  /// The list of container accounts
  late final pulumi.Output<List<Map<String, dynamic>>?> accounts;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The OuContainer name
  late final pulumi.Output<String> containerId;
  /// The Deployment id
  late final pulumi.Output<String> deploymentId;
  /// Distinguished Name of OuContainer instance
  late final pulumi.Output<String> distinguishedName;
  /// The domain name of Domain Services.
  late final pulumi.Output<String> domainName;
  /// Resource etag
  late final pulumi.Output<String?> etag;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The current deployment or provisioning state, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Status of OuContainer instance
  late final pulumi.Output<String> serviceStatus;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Azure Active Directory tenant id
  late final pulumi.Output<String> tenantId;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [OuContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OuContainer]. {@macro pulumi_aad_ou_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OuContainer(
    String name, {
    OuContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:aad:OuContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accounts = registerOutput<List<Map<String, dynamic>>?>('accounts');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerId = registerOutput<String>('containerId');
    deploymentId = registerOutput<String>('deploymentId');
    distinguishedName = registerOutput<String>('distinguishedName');
    domainName = registerOutput<String>('domainName');
    etag = registerOutput<String?>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    serviceStatus = registerOutput<String>('serviceStatus');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tenantId = registerOutput<String>('tenantId');
    type = registerOutput<String>('type');
  }
}
