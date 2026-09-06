import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_node_old_response_response.dart';
import 'enterprise_customer_operation_args.dart';
import 'system_data_response.dart';

/// ConnectedCache Resource. Represents the high level Nodes needed to provision CacheNode and customer resources used in private preview
///
/// Uses Azure REST API version 2023-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EnterpriseCustomerOperations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enterpriseCustomerOperation = new AzureNative.ConnectedCache.EnterpriseCustomerOperation("enterpriseCustomerOperation", new()
///     {
///         CustomerResourceName = "l",
///         Location = "zdzhhkjyogrqxwihkifnmeyhwpujbr",
///         Properties = new AzureNative.ConnectedCache.Inputs.CacheNodeOldResponseArgs
///         {
///             StatusCode = "oldkroffqtkryqffpsi",
///             StatusDetails = "lhwvcz",
///             StatusText = "bs",
///         },
///         ResourceGroupName = "rgConnectedCache",
///         Tags =
///         {
///             { "key4215", "zjbszvlzf" },
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
/// 	connectedcache "github.com/pulumi/pulumi-azure-native-sdk/connectedcache/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedcache.NewEnterpriseCustomerOperation(ctx, "enterpriseCustomerOperation", &connectedcache.EnterpriseCustomerOperationArgs{
/// 			CustomerResourceName: pulumi.String("l"),
/// 			Location:             pulumi.String("zdzhhkjyogrqxwihkifnmeyhwpujbr"),
/// 			Properties: &connectedcache.CacheNodeOldResponseArgs{
/// 				StatusCode:    pulumi.String("oldkroffqtkryqffpsi"),
/// 				StatusDetails: pulumi.String("lhwvcz"),
/// 				StatusText:    pulumi.String("bs"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgConnectedCache"),
/// 			Tags: pulumi.StringMap{
/// 				"key4215": pulumi.String("zjbszvlzf"),
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
/// resource "azure-native_connectedcache_enterprisecustomeroperation" "enterpriseCustomerOperation" {
///   customer_resource_name = "l"
///   location               = "zdzhhkjyogrqxwihkifnmeyhwpujbr"
///   properties = {
///     status_code    = "oldkroffqtkryqffpsi"
///     status_details = "lhwvcz"
///     status_text    = "bs"
///   }
///   resource_group_name = "rgConnectedCache"
///   tags = {
///     "key4215" = "zjbszvlzf"
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
/// import com.pulumi.azurenative.connectedcache.EnterpriseCustomerOperation;
/// import com.pulumi.azurenative.connectedcache.EnterpriseCustomerOperationArgs;
/// import com.pulumi.azurenative.connectedcache.inputs.CacheNodeOldResponseArgs;
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
///         var enterpriseCustomerOperation = new EnterpriseCustomerOperation("enterpriseCustomerOperation", EnterpriseCustomerOperationArgs.builder()
///             .customerResourceName("l")
///             .location("zdzhhkjyogrqxwihkifnmeyhwpujbr")
///             .properties(CacheNodeOldResponseArgs.builder()
///                 .statusCode("oldkroffqtkryqffpsi")
///                 .statusDetails("lhwvcz")
///                 .statusText("bs")
///                 .build())
///             .resourceGroupName("rgConnectedCache")
///             .tags(Map.of("key4215", "zjbszvlzf"))
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
/// const enterpriseCustomerOperation = new azure_native.connectedcache.EnterpriseCustomerOperation("enterpriseCustomerOperation", {
///     customerResourceName: "l",
///     location: "zdzhhkjyogrqxwihkifnmeyhwpujbr",
///     properties: {
///         statusCode: "oldkroffqtkryqffpsi",
///         statusDetails: "lhwvcz",
///         statusText: "bs",
///     },
///     resourceGroupName: "rgConnectedCache",
///     tags: {
///         key4215: "zjbszvlzf",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// enterprise_customer_operation = azure_native.connectedcache.EnterpriseCustomerOperation("enterpriseCustomerOperation",
///     customer_resource_name="l",
///     location="zdzhhkjyogrqxwihkifnmeyhwpujbr",
///     properties={
///         "status_code": "oldkroffqtkryqffpsi",
///         "status_details": "lhwvcz",
///         "status_text": "bs",
///     },
///     resource_group_name="rgConnectedCache",
///     tags={
///         "key4215": "zjbszvlzf",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   enterpriseCustomerOperation:
///     type: azure-native:connectedcache:EnterpriseCustomerOperation
///     properties:
///       customerResourceName: l
///       location: zdzhhkjyogrqxwihkifnmeyhwpujbr
///       properties:
///         statusCode: oldkroffqtkryqffpsi
///         statusDetails: lhwvcz
///         statusText: bs
///       resourceGroupName: rgConnectedCache
///       tags:
///         key4215: zjbszvlzf
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
/// $ pulumi import azure-native:connectedcache:EnterpriseCustomerOperation MCCTPTest2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedCache/enterpriseCustomers/{customerResourceName}
/// ```
class EnterpriseCustomerOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CacheNodeOldResponseResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnterpriseCustomerOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseCustomerOperation]. {@macro pulumi_connectedcache_enterprise_customer_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseCustomerOperation(
    String name, {
    EnterpriseCustomerOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedcache:EnterpriseCustomerOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CacheNodeOldResponseResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheNodeOldResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EnterpriseCustomerOperation] resource.
  EnterpriseCustomerOperation.reference(String urn)
    : super(
        'azure-native:connectedcache:EnterpriseCustomerOperation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CacheNodeOldResponseResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CacheNodeOldResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
