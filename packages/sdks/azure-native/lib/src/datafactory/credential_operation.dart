import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_operation_args.dart';
import 'managed_identity_credential_response.dart';

/// Credential resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Credentials_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var credentialOperation = new AzureNative.DataFactory.CredentialOperation("credentialOperation", new()
///     {
///         CredentialName = "exampleCredential",
///         FactoryName = "exampleFactoryName",
///         Properties = new AzureNative.DataFactory.Inputs.ManagedIdentityCredentialArgs
///         {
///             ResourceId = "/subscriptions/12345678-1234-1234-1234-12345678abc/resourcegroups/exampleResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleUami",
///             Type = "ManagedIdentity",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewCredentialOperation(ctx, "credentialOperation", &datafactory.CredentialOperationArgs{
/// 			CredentialName: pulumi.String("exampleCredential"),
/// 			FactoryName:    pulumi.String("exampleFactoryName"),
/// 			Properties: &datafactory.ManagedIdentityCredentialArgs{
/// 				ResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-12345678abc/resourcegroups/exampleResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleUami"),
/// 				Type:       pulumi.String("ManagedIdentity"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// import com.pulumi.azurenative.datafactory.CredentialOperation;
/// import com.pulumi.azurenative.datafactory.CredentialOperationArgs;
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
///         var credentialOperation = new CredentialOperation("credentialOperation", CredentialOperationArgs.builder()
///             .credentialName("exampleCredential")
///             .factoryName("exampleFactoryName")
///             .properties(ManagedIdentityCredentialArgs.builder()
///                 .resourceId("/subscriptions/12345678-1234-1234-1234-12345678abc/resourcegroups/exampleResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleUami")
///                 .type("ManagedIdentity")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const credentialOperation = new azure_native.datafactory.CredentialOperation("credentialOperation", {
///     credentialName: "exampleCredential",
///     factoryName: "exampleFactoryName",
///     properties: {
///         resourceId: "/subscriptions/12345678-1234-1234-1234-12345678abc/resourcegroups/exampleResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleUami",
///         type: "ManagedIdentity",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// credential_operation = azure_native.datafactory.CredentialOperation("credentialOperation",
///     credential_name="exampleCredential",
///     factory_name="exampleFactoryName",
///     properties={
///         "resource_id": "/subscriptions/12345678-1234-1234-1234-12345678abc/resourcegroups/exampleResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleUami",
///         "type": "ManagedIdentity",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   credentialOperation:
///     type: azure-native:datafactory:CredentialOperation
///     properties:
///       credentialName: exampleCredential
///       factoryName: exampleFactoryName
///       properties:
///         resourceId: /subscriptions/12345678-1234-1234-1234-12345678abc/resourcegroups/exampleResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleUami
///         type: ManagedIdentity
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:CredentialOperation exampleCredential /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/credentials/{credentialName}
/// ```
class CredentialOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Etag identifies change in the resource.
  late final pulumi.Output<String> etag;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// Properties of credentials.
  late final pulumi.Output<ManagedIdentityCredentialResponse> properties;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [CredentialOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CredentialOperation]. {@macro pulumi_datafactory_credential_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CredentialOperation(
    String name, {
    CredentialOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datafactory:CredentialOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedIdentityCredentialResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedIdentityCredentialResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
