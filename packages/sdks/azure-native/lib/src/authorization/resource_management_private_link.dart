import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_management_private_link_args.dart';
import 'resource_management_private_link_endpoint_connections_response.dart';

/// Uses Azure REST API version 2020-05-01. In version 2.x of the Azure Native provider, it used API version 2020-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Resource Management Private Link.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var resourceManagementPrivateLink = new AzureNative.Authorization.ResourceManagementPrivateLink("resourceManagementPrivateLink", new()
///     {
///         Location = "eastus",
///         ResourceGroupName = "my-resource-group",
///         RmplName = "my-rmplName",
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
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewResourceManagementPrivateLink(ctx, "resourceManagementPrivateLink", &authorization.ResourceManagementPrivateLinkArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			RmplName:          pulumi.String("my-rmplName"),
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
/// import com.pulumi.azurenative.authorization.ResourceManagementPrivateLink;
/// import com.pulumi.azurenative.authorization.ResourceManagementPrivateLinkArgs;
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
///         var resourceManagementPrivateLink = new ResourceManagementPrivateLink("resourceManagementPrivateLink", ResourceManagementPrivateLinkArgs.builder()
///             .location("eastus")
///             .resourceGroupName("my-resource-group")
///             .rmplName("my-rmplName")
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
/// const resourceManagementPrivateLink = new azure_native.authorization.ResourceManagementPrivateLink("resourceManagementPrivateLink", {
///     location: "eastus",
///     resourceGroupName: "my-resource-group",
///     rmplName: "my-rmplName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// resource_management_private_link = azure_native.authorization.ResourceManagementPrivateLink("resourceManagementPrivateLink",
///     location="eastus",
///     resource_group_name="my-resource-group",
///     rmpl_name="my-rmplName")
///
/// ```
///
/// ```yaml
/// resources:
///   resourceManagementPrivateLink:
///     type: azure-native:authorization:ResourceManagementPrivateLink
///     properties:
///       location: eastus
///       resourceGroupName: my-resource-group
///       rmplName: my-rmplName
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
/// $ pulumi import azure-native:authorization:ResourceManagementPrivateLink my-pla /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Authorization/resourceManagementPrivateLinks/{rmplName}
/// ```
class ResourceManagementPrivateLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// the region of the rmpl
  late final pulumi.Output<String?> location;
  /// The rmpl Name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<ResourceManagementPrivateLinkEndpointConnectionsResponse> properties;
  /// The operation type.
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceManagementPrivateLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceManagementPrivateLink]. {@macro pulumi_authorization_resource_management_private_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceManagementPrivateLink(
    String name, {
    ResourceManagementPrivateLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:ResourceManagementPrivateLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ResourceManagementPrivateLinkEndpointConnectionsResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceManagementPrivateLinkEndpointConnectionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
