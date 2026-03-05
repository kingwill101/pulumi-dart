import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_args.dart';
import 'private_endpoint_connection_properties_response.dart';

/// A private endpoint connection for a project.
///
/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PrivateEndpointConnections_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateEndpointConnection = new AzureNative.Migrate.PrivateEndpointConnection("privateEndpointConnection", new()
///     {
///         ETag = "\"00009300-0000-0300-0000-602b967b0000\"",
///         PrivateEndpointConnectionName = "custestpece80project3980pe.7e35576b-3df4-478e-9759-f64351cf4f43",
///         ProjectName = "abgoyalWEselfhostb72bproject",
///         Properties = new AzureNative.Migrate.Inputs.PrivateEndpointConnectionPropertiesArgs
///         {
///             PrivateLinkServiceConnectionState = new AzureNative.Migrate.Inputs.PrivateLinkServiceConnectionStateArgs
///             {
///                 ActionsRequired = "",
///                 Status = AzureNative.Migrate.PrivateEndpointServiceConnectionStatus.Approved,
///             },
///         },
///         ResourceGroupName = "abgoyal-westEurope",
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewPrivateEndpointConnection(ctx, "privateEndpointConnection", &migrate.PrivateEndpointConnectionArgs{
/// 			ETag:                          pulumi.String("\"00009300-0000-0300-0000-602b967b0000\""),
/// 			PrivateEndpointConnectionName: pulumi.String("custestpece80project3980pe.7e35576b-3df4-478e-9759-f64351cf4f43"),
/// 			ProjectName:                   pulumi.String("abgoyalWEselfhostb72bproject"),
/// 			Properties: &migrate.PrivateEndpointConnectionPropertiesArgs{
/// 				PrivateLinkServiceConnectionState: &migrate.PrivateLinkServiceConnectionStateArgs{
/// 					ActionsRequired: pulumi.String(""),
/// 					Status:          pulumi.String(migrate.PrivateEndpointServiceConnectionStatusApproved),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("abgoyal-westEurope"),
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
/// import com.pulumi.azurenative.migrate.PrivateEndpointConnection;
/// import com.pulumi.azurenative.migrate.PrivateEndpointConnectionArgs;
/// import com.pulumi.azurenative.migrate.inputs.PrivateEndpointConnectionPropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.PrivateLinkServiceConnectionStateArgs;
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
///         var privateEndpointConnection = new PrivateEndpointConnection("privateEndpointConnection", PrivateEndpointConnectionArgs.builder()
///             .eTag("\"00009300-0000-0300-0000-602b967b0000\"")
///             .privateEndpointConnectionName("custestpece80project3980pe.7e35576b-3df4-478e-9759-f64351cf4f43")
///             .projectName("abgoyalWEselfhostb72bproject")
///             .properties(PrivateEndpointConnectionPropertiesArgs.builder()
///                 .privateLinkServiceConnectionState(PrivateLinkServiceConnectionStateArgs.builder()
///                     .actionsRequired("")
///                     .status("Approved")
///                     .build())
///                 .build())
///             .resourceGroupName("abgoyal-westEurope")
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
/// const privateEndpointConnection = new azure_native.migrate.PrivateEndpointConnection("privateEndpointConnection", {
///     eTag: "\"00009300-0000-0300-0000-602b967b0000\"",
///     privateEndpointConnectionName: "custestpece80project3980pe.7e35576b-3df4-478e-9759-f64351cf4f43",
///     projectName: "abgoyalWEselfhostb72bproject",
///     properties: {
///         privateLinkServiceConnectionState: {
///             actionsRequired: "",
///             status: azure_native.migrate.PrivateEndpointServiceConnectionStatus.Approved,
///         },
///     },
///     resourceGroupName: "abgoyal-westEurope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// private_endpoint_connection = azure_native.migrate.PrivateEndpointConnection("privateEndpointConnection",
///     e_tag="\"00009300-0000-0300-0000-602b967b0000\"",
///     private_endpoint_connection_name="custestpece80project3980pe.7e35576b-3df4-478e-9759-f64351cf4f43",
///     project_name="abgoyalWEselfhostb72bproject",
///     properties={
///         "private_link_service_connection_state": {
///             "actions_required": "",
///             "status": azure_native.migrate.PrivateEndpointServiceConnectionStatus.APPROVED,
///         },
///     },
///     resource_group_name="abgoyal-westEurope")
///
/// ```
///
/// ```yaml
/// resources:
///   privateEndpointConnection:
///     type: azure-native:migrate:PrivateEndpointConnection
///     properties:
///       eTag: '"00009300-0000-0300-0000-602b967b0000"'
///       privateEndpointConnectionName: custestpece80project3980pe.7e35576b-3df4-478e-9759-f64351cf4f43
///       projectName: abgoyalWEselfhostb72bproject
///       properties:
///         privateLinkServiceConnectionState:
///           actionsRequired: ""
///           status: Approved
///       resourceGroupName: abgoyal-westEurope
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
/// $ pulumi import azure-native:migrate:PrivateEndpointConnection custestpece80project3980pe.7e35576b-3df4-478e-9759-f64351cf4f43 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentprojects/{projectName}/privateEndpointConnections/{privateEndpointConnectionName}
/// ```
class PrivateEndpointConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// For optimistic concurrency control.
  late final pulumi.Output<String?> eTag;

  /// Name of the private endpoint endpoint connection.
  late final pulumi.Output<String> name;

  /// Properties of the private endpoint endpoint connection.
  late final pulumi.Output<PrivateEndpointConnectionPropertiesResponse>
  properties;

  /// Type of the object = [Microsoft.Migrate/assessmentProjects/privateEndpointConnections].
  late final pulumi.Output<String> type;

  /// Creates a new [PrivateEndpointConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateEndpointConnection]. {@macro pulumi_migrate_private_endpoint_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateEndpointConnection(
    String name, {
    PrivateEndpointConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:PrivateEndpointConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PrivateEndpointConnectionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PrivateEndpointConnectionPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
