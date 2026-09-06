import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_account_args.dart';
import 'elastic_account_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// NetApp elastic account resource
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2025-12-15-preview, 2026-01-15-preview, 2026-03-15-preview, 2026-04-15-preview, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticAccounts_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticAccount = new AzureNative.NetApp.ElasticAccount("elasticAccount", new()
///     {
///         AccountName = "account1",
///         Location = "eastus",
///         Properties = null,
///         ResourceGroupName = "myRG",
///         Tags =
///         {
///             { "ac-tag1", "account1" },
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewElasticAccount(ctx, "elasticAccount", &netapp.ElasticAccountArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			Location:          pulumi.String("eastus"),
/// 			Properties:        &netapp.ElasticAccountPropertiesArgs{},
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			Tags: pulumi.StringMap{
/// 				"ac-tag1": pulumi.String("account1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_netapp_elasticaccount" "elasticAccount" {
///   account_name        = "account1"
///   location            = "eastus"
///   properties          = {}
///   resource_group_name = "myRG"
///   tags = {
///     "ac-tag1" = "account1"
///   }
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
/// import com.pulumi.azurenative.netapp.ElasticAccount;
/// import com.pulumi.azurenative.netapp.ElasticAccountArgs;
/// import com.pulumi.azurenative.netapp.inputs.ElasticAccountPropertiesArgs;
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
///         var elasticAccount = new ElasticAccount("elasticAccount", ElasticAccountArgs.builder()
///             .accountName("account1")
///             .location("eastus")
///             .properties(ElasticAccountPropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("myRG")
///             .tags(Map.of("ac-tag1", "account1"))
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
/// const elasticAccount = new azure_native.netapp.ElasticAccount("elasticAccount", {
///     accountName: "account1",
///     location: "eastus",
///     properties: {},
///     resourceGroupName: "myRG",
///     tags: {
///         "ac-tag1": "account1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_account = azure_native.netapp.ElasticAccount("elasticAccount",
///     account_name="account1",
///     location="eastus",
///     properties={},
///     resource_group_name="myRG",
///     tags={
///         "ac-tag1": "account1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   elasticAccount:
///     type: azure-native:netapp:ElasticAccount
///     properties:
///       accountName: account1
///       location: eastus
///       properties: {}
///       resourceGroupName: myRG
///       tags:
///         ac-tag1: account1
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
/// $ pulumi import azure-native:netapp:ElasticAccount account1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/elasticAccounts/{accountName}
/// ```
class ElasticAccount extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticAccountPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticAccount]. {@macro pulumi_netapp_elastic_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticAccount(
    String name, {
    ElasticAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:ElasticAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticAccountPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticAccountPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ElasticAccount] resource.
  ElasticAccount.reference(String urn)
    : super(
        'azure-native:netapp:ElasticAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticAccountPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticAccountPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
