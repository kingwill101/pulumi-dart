import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_args.dart';

/// An application security group in a resource group.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create application security group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationSecurityGroup = new AzureNative.Network.ApplicationSecurityGroup("applicationSecurityGroup", new()
///     {
///         ApplicationSecurityGroupName = "test-asg",
///         Location = "westus",
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewApplicationSecurityGroup(ctx, "applicationSecurityGroup", &network.ApplicationSecurityGroupArgs{
/// 			ApplicationSecurityGroupName: pulumi.String("test-asg"),
/// 			Location:                     pulumi.String("westus"),
/// 			ResourceGroupName:            pulumi.String("rg1"),
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
/// resource "azure-native_network_applicationsecuritygroup" "applicationSecurityGroup" {
///   application_security_group_name = "test-asg"
///   location                        = "westus"
///   resource_group_name             = "rg1"
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
/// import com.pulumi.azurenative.network.ApplicationSecurityGroup;
/// import com.pulumi.azurenative.network.ApplicationSecurityGroupArgs;
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
///         var applicationSecurityGroup = new ApplicationSecurityGroup("applicationSecurityGroup", ApplicationSecurityGroupArgs.builder()
///             .applicationSecurityGroupName("test-asg")
///             .location("westus")
///             .resourceGroupName("rg1")
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
/// const applicationSecurityGroup = new azure_native.network.ApplicationSecurityGroup("applicationSecurityGroup", {
///     applicationSecurityGroupName: "test-asg",
///     location: "westus",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_security_group = azure_native.network.ApplicationSecurityGroup("applicationSecurityGroup",
///     application_security_group_name="test-asg",
///     location="westus",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   applicationSecurityGroup:
///     type: azure-native:network:ApplicationSecurityGroup
///     properties:
///       applicationSecurityGroupName: test-asg
///       location: westus
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:ApplicationSecurityGroup test-asg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationSecurityGroups/{applicationSecurityGroupName}
/// ```
class ApplicationSecurityGroupNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the application security group resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource GUID property of the application security group resource. It uniquely identifies a resource, even if the user changes its name or migrate the resource across subscriptions or resource groups.
  late final pulumi.Output<String> resourceGuid;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationSecurityGroupNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationSecurityGroupNetwork]. {@macro pulumi_network_application_security_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationSecurityGroupNetwork(
    String name, {
    ApplicationSecurityGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ApplicationSecurityGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ApplicationSecurityGroupNetwork] resource.
  ApplicationSecurityGroupNetwork.reference(String urn)
    : super(
        'azure-native:network:ApplicationSecurityGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
