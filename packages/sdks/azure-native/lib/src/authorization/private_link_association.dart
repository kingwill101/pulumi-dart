import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_association_args.dart';
import 'private_link_association_properties_expanded_response.dart';

/// Uses Azure REST API version 2020-05-01. In version 2.x of the Azure Native provider, it used API version 2020-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a private link association, associate scope to rmpl.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateLinkAssociation = new AzureNative.Authorization.PrivateLinkAssociation("privateLinkAssociation", new()
///     {
///         GroupId = "my-management-group",
///         PlaId = "00000000-0000-0000-0000-000000000000",
///         Properties = new AzureNative.Authorization.Inputs.PrivateLinkAssociationPropertiesArgs
///         {
///             PrivateLink = "00000000-0000-0000-0000-000000000000",
///             PublicNetworkAccess = AzureNative.Authorization.PublicNetworkAccessOptions.Enabled,
///         },
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
/// 		_, err := authorization.NewPrivateLinkAssociation(ctx, "privateLinkAssociation", &authorization.PrivateLinkAssociationArgs{
/// 			GroupId: pulumi.String("my-management-group"),
/// 			PlaId:   pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Properties: &authorization.PrivateLinkAssociationPropertiesArgs{
/// 				PrivateLink:         pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				PublicNetworkAccess: pulumi.String(authorization.PublicNetworkAccessOptionsEnabled),
/// 			},
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
/// import com.pulumi.azurenative.authorization.PrivateLinkAssociation;
/// import com.pulumi.azurenative.authorization.PrivateLinkAssociationArgs;
/// import com.pulumi.azurenative.authorization.inputs.PrivateLinkAssociationPropertiesArgs;
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
///         var privateLinkAssociation = new PrivateLinkAssociation("privateLinkAssociation", PrivateLinkAssociationArgs.builder()
///             .groupId("my-management-group")
///             .plaId("00000000-0000-0000-0000-000000000000")
///             .properties(PrivateLinkAssociationPropertiesArgs.builder()
///                 .privateLink("00000000-0000-0000-0000-000000000000")
///                 .publicNetworkAccess("Enabled")
///                 .build())
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
/// const privateLinkAssociation = new azure_native.authorization.PrivateLinkAssociation("privateLinkAssociation", {
///     groupId: "my-management-group",
///     plaId: "00000000-0000-0000-0000-000000000000",
///     properties: {
///         privateLink: "00000000-0000-0000-0000-000000000000",
///         publicNetworkAccess: azure_native.authorization.PublicNetworkAccessOptions.Enabled,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_link_association = azure_native.authorization.PrivateLinkAssociation("privateLinkAssociation",
///     group_id="my-management-group",
///     pla_id="00000000-0000-0000-0000-000000000000",
///     properties={
///         "private_link": "00000000-0000-0000-0000-000000000000",
///         "public_network_access": azure_native.authorization.PublicNetworkAccessOptions.ENABLED,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   privateLinkAssociation:
///     type: azure-native:authorization:PrivateLinkAssociation
///     properties:
///       groupId: my-management-group
///       plaId: 00000000-0000-0000-0000-000000000000
///       properties:
///         privateLink: 00000000-0000-0000-0000-000000000000
///         publicNetworkAccess: Enabled
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
/// $ pulumi import azure-native:authorization:PrivateLinkAssociation my-pla /providers/Microsoft.Management/managementGroups/{groupId}/providers/Microsoft.Authorization/privateLinkAssociations/{plaId}
/// ```
class PrivateLinkAssociation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The pla name.
  late final pulumi.Output<String> name;
  /// The private link association properties.
  late final pulumi.Output<PrivateLinkAssociationPropertiesExpandedResponse> properties;
  /// The operation type.
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateLinkAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLinkAssociation]. {@macro pulumi_authorization_private_link_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLinkAssociation(
    String name, {
    PrivateLinkAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:PrivateLinkAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<PrivateLinkAssociationPropertiesExpandedResponse>('properties');
    this.type = registerOutput<String>('type');
  }
}
