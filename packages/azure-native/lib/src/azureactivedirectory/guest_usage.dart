import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_usage_args.dart';
import 'system_data_response.dart';

/// Guest Usages Resource
///
/// Uses Azure REST API version 2023-05-17-preview. In version 2.x of the Azure Native provider, it used API version 2021-04-01.
///
/// Other available API versions: 2021-04-01, 2023-01-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureactivedirectory [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GuestUsages_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var guestUsage = new AzureNative.AzureActiveDirectory.GuestUsage("guestUsage", new()
///     {
///         ResourceGroupName = "contosoResourceGroup",
///         ResourceName = "contoso.onmicrosoft.com",
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
/// 	azureactivedirectory "github.com/pulumi/pulumi-azure-native-sdk/azureactivedirectory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azureactivedirectory.NewGuestUsage(ctx, "guestUsage", &azureactivedirectory.GuestUsageArgs{
/// 			ResourceGroupName: pulumi.String("contosoResourceGroup"),
/// 			ResourceName:      pulumi.String("contoso.onmicrosoft.com"),
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
/// import com.pulumi.azurenative.azureactivedirectory.GuestUsage;
/// import com.pulumi.azurenative.azureactivedirectory.GuestUsageArgs;
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
///         var guestUsage = new GuestUsage("guestUsage", GuestUsageArgs.builder()
///             .resourceGroupName("contosoResourceGroup")
///             .resourceName("contoso.onmicrosoft.com")
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
/// const guestUsage = new azure_native.azureactivedirectory.GuestUsage("guestUsage", {
///     resourceGroupName: "contosoResourceGroup",
///     resourceName: "contoso.onmicrosoft.com",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// guest_usage = azure_native.azureactivedirectory.GuestUsage("guestUsage",
///     resource_group_name="contosoResourceGroup",
///     resource_name_="contoso.onmicrosoft.com")
///
/// ```
///
/// ```yaml
/// resources:
///   guestUsage:
///     type: azure-native:azureactivedirectory:GuestUsage
///     properties:
///       resourceGroupName: contosoResourceGroup
///       resourceName: contoso.onmicrosoft.com
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
/// $ pulumi import azure-native:azureactivedirectory:GuestUsage contoso.onmicrosoft.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureActiveDirectory/guestUsages/{resourceName}
/// ```
class GuestUsage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Location of the Guest Usages resource.
  late final pulumi.Output<String?> location;
  /// The name of the Guest Usages resource.
  late final pulumi.Output<String> name;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Key-value pairs of additional resource provisioning properties.
  late final pulumi.Output<Map<String, String>?> tags;
  /// An identifier for the tenant for which the resource is being created
  late final pulumi.Output<String?> tenantId;
  /// The type of the Guest Usages resource.
  late final pulumi.Output<String> type;

  /// Creates a new [GuestUsage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GuestUsage]. {@macro pulumi_azureactivedirectory_guest_usage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GuestUsage(
    String name, {
    GuestUsageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azureactivedirectory:GuestUsage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tenantId = registerOutput<String?>('tenantId');
    this.type = registerOutput<String>('type');
  }
}
