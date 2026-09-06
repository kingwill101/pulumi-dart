import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_config_response.dart';
import 'broker_authorization_args.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';

/// MQ broker/authorization resource
///
/// Uses Azure REST API version 2023-10-04-preview. In version 2.x of the Azure Native provider, it used API version 2023-10-04-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### BrokerAuthorization_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var brokerAuthorization = new AzureNative.IoTOperationsMQ.BrokerAuthorization("brokerAuthorization", new()
///     {
///         AuthorizationName = "C15G",
///         AuthorizationPolicies = new AzureNative.IoTOperationsMQ.Inputs.AuthorizationConfigArgs
///         {
///             EnableCache = true,
///             Rules = new[]
///             {
///                 new AzureNative.IoTOperationsMQ.Inputs.AuthorizationBasicRuleArgs
///                 {
///                     BrokerResources = new[]
///                     {
///                         new AzureNative.IoTOperationsMQ.Inputs.ResourceInfoDefinitionArgs
///                         {
///                             Method = AzureNative.IoTOperationsMQ.ResourceInfoDefinitionMethods.Connect,
///                             Topics = new[]
///                             {
///                                 "v",
///                             },
///                         },
///                     },
///                     Principals = new AzureNative.IoTOperationsMQ.Inputs.PrincipalDefinitionArgs
///                     {
///                         Attributes = new[]
///                         {
///                             null,
///                         },
///                         Clientids = new[]
///                         {
///                             "smrfzvniq",
///                         },
///                         Usernames = new[]
///                         {
///                             "jtwwmsrzriat",
///                         },
///                     },
///                 },
///             },
///         },
///         BrokerName = "7E0-tXS-6u1h-Vx396----",
///         ExtendedLocation = new AzureNative.IoTOperationsMQ.Inputs.ExtendedLocationPropertyArgs
///         {
///             Name = "an",
///             Type = AzureNative.IoTOperationsMQ.ExtendedLocationType.CustomLocation,
///         },
///         ListenerRef = new[]
///         {
///             "mxgpbyb",
///         },
///         Location = "bvgohixie",
///         MqName = "Zz22-b2VC-9",
///         ResourceGroupName = "rgiotoperationsmq",
///         Tags = null,
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
/// 	iotoperationsmq "github.com/pulumi/pulumi-azure-native-sdk/iotoperationsmq/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iotoperationsmq.NewBrokerAuthorization(ctx, "brokerAuthorization", &iotoperationsmq.BrokerAuthorizationArgs{
/// 			AuthorizationName: pulumi.String("C15G"),
/// 			AuthorizationPolicies: &iotoperationsmq.AuthorizationConfigArgs{
/// 				EnableCache: pulumi.Bool(true),
/// 				Rules: iotoperationsmq.AuthorizationBasicRuleArray{
/// 					&iotoperationsmq.AuthorizationBasicRuleArgs{
/// 						BrokerResources: iotoperationsmq.ResourceInfoDefinitionArray{
/// 							&iotoperationsmq.ResourceInfoDefinitionArgs{
/// 								Method: pulumi.String(iotoperationsmq.ResourceInfoDefinitionMethodsConnect),
/// 								Topics: pulumi.StringArray{
/// 									pulumi.String("v"),
/// 								},
/// 							},
/// 						},
/// 						Principals: &iotoperationsmq.PrincipalDefinitionArgs{
/// 							Attributes: pulumi.StringMapArray{
/// 								pulumi.StringMap{},
/// 							},
/// 							Clientids: pulumi.StringArray{
/// 								pulumi.String("smrfzvniq"),
/// 							},
/// 							Usernames: pulumi.StringArray{
/// 								pulumi.String("jtwwmsrzriat"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BrokerName: pulumi.String("7E0-tXS-6u1h-Vx396----"),
/// 			ExtendedLocation: &iotoperationsmq.ExtendedLocationPropertyArgs{
/// 				Name: pulumi.String("an"),
/// 				Type: pulumi.String(iotoperationsmq.ExtendedLocationTypeCustomLocation),
/// 			},
/// 			ListenerRef: pulumi.StringArray{
/// 				pulumi.String("mxgpbyb"),
/// 			},
/// 			Location:          pulumi.String("bvgohixie"),
/// 			MqName:            pulumi.String("Zz22-b2VC-9"),
/// 			ResourceGroupName: pulumi.String("rgiotoperationsmq"),
/// 			Tags:              pulumi.StringMap{},
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
/// resource "azure-native_iotoperationsmq_brokerauthorization" "brokerAuthorization" {
///   authorization_name = "C15G"
///   authorization_policies = {
///     enable_cache = true
///     rules = [{
///       "brokerResources" = [{
///         "method" = "Connect"
///         "topics" = ["v"]
///       }]
///       "principals" = {
///         "attributes" = [{}]
///         "clientids"  = ["smrfzvniq"]
///         "usernames"  = ["jtwwmsrzriat"]
///       }
///     }]
///   }
///   broker_name = "7E0-tXS-6u1h-Vx396----"
///   extended_location = {
///     name = "an"
///     type = "CustomLocation"
///   }
///   listener_ref        = ["mxgpbyb"]
///   location            = "bvgohixie"
///   mq_name             = "Zz22-b2VC-9"
///   resource_group_name = "rgiotoperationsmq"
///   tags                = {}
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
/// import com.pulumi.azurenative.iotoperationsmq.BrokerAuthorization;
/// import com.pulumi.azurenative.iotoperationsmq.BrokerAuthorizationArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.AuthorizationConfigArgs;
/// import com.pulumi.azurenative.iotoperationsmq.inputs.ExtendedLocationPropertyArgs;
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
///         var brokerAuthorization = new BrokerAuthorization("brokerAuthorization", BrokerAuthorizationArgs.builder()
///             .authorizationName("C15G")
///             .authorizationPolicies(AuthorizationConfigArgs.builder()
///                 .enableCache(true)
///                 .rules(AuthorizationBasicRuleArgs.builder()
///                     .brokerResources(ResourceInfoDefinitionArgs.builder()
///                         .method("Connect")
///                         .topics("v")
///                         .build())
///                     .principals(PrincipalDefinitionArgs.builder()
///                         .attributes(Map.ofEntries(
///                         ))
///                         .clientids("smrfzvniq")
///                         .usernames("jtwwmsrzriat")
///                         .build())
///                     .build())
///                 .build())
///             .brokerName("7E0-tXS-6u1h-Vx396----")
///             .extendedLocation(ExtendedLocationPropertyArgs.builder()
///                 .name("an")
///                 .type("CustomLocation")
///                 .build())
///             .listenerRef("mxgpbyb")
///             .location("bvgohixie")
///             .mqName("Zz22-b2VC-9")
///             .resourceGroupName("rgiotoperationsmq")
///             .tags(Map.ofEntries(
///             ))
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
/// const brokerAuthorization = new azure_native.iotoperationsmq.BrokerAuthorization("brokerAuthorization", {
///     authorizationName: "C15G",
///     authorizationPolicies: {
///         enableCache: true,
///         rules: [{
///             brokerResources: [{
///                 method: azure_native.iotoperationsmq.ResourceInfoDefinitionMethods.Connect,
///                 topics: ["v"],
///             }],
///             principals: {
///                 attributes: [{}],
///                 clientids: ["smrfzvniq"],
///                 usernames: ["jtwwmsrzriat"],
///             },
///         }],
///     },
///     brokerName: "7E0-tXS-6u1h-Vx396----",
///     extendedLocation: {
///         name: "an",
///         type: azure_native.iotoperationsmq.ExtendedLocationType.CustomLocation,
///     },
///     listenerRef: ["mxgpbyb"],
///     location: "bvgohixie",
///     mqName: "Zz22-b2VC-9",
///     resourceGroupName: "rgiotoperationsmq",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// broker_authorization = azure_native.iotoperationsmq.BrokerAuthorization("brokerAuthorization",
///     authorization_name="C15G",
///     authorization_policies={
///         "enable_cache": True,
///         "rules": [{
///             "broker_resources": [{
///                 "method": azure_native.iotoperationsmq.ResourceInfoDefinitionMethods.CONNECT,
///                 "topics": ["v"],
///             }],
///             "principals": {
///                 "attributes": [{}],
///                 "clientids": ["smrfzvniq"],
///                 "usernames": ["jtwwmsrzriat"],
///             },
///         }],
///     },
///     broker_name="7E0-tXS-6u1h-Vx396----",
///     extended_location={
///         "name": "an",
///         "type": azure_native.iotoperationsmq.ExtendedLocationType.CUSTOM_LOCATION,
///     },
///     listener_ref=["mxgpbyb"],
///     location="bvgohixie",
///     mq_name="Zz22-b2VC-9",
///     resource_group_name="rgiotoperationsmq",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   brokerAuthorization:
///     type: azure-native:iotoperationsmq:BrokerAuthorization
///     properties:
///       authorizationName: C15G
///       authorizationPolicies:
///         enableCache: true
///         rules:
///           - brokerResources:
///               - method: Connect
///                 topics:
///                   - v
///             principals:
///               attributes:
///                 - {}
///               clientids:
///                 - smrfzvniq
///               usernames:
///                 - jtwwmsrzriat
///       brokerName: 7E0-tXS-6u1h-Vx396----
///       extendedLocation:
///         name: an
///         type: CustomLocation
///       listenerRef:
///         - mxgpbyb
///       location: bvgohixie
///       mqName: Zz22-b2VC-9
///       resourceGroupName: rgiotoperationsmq
///       tags: {}
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
/// $ pulumi import azure-native:iotoperationsmq:BrokerAuthorization nwffklaehhtmhqcpjauqprvykdjzzd /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IoTOperationsMQ/mq/{mqName}/broker/{brokerName}/authorization/{authorizationName}
/// ```
class BrokerAuthorization extends pulumi.CustomResource {
  /// The list of authorization policies supported by the Authorization Resource.
  late final pulumi.Output<AuthorizationConfigResponse> authorizationPolicies;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Extended Location
  late final pulumi.Output<ExtendedLocationPropertyResponse> extendedLocation;
  /// The array of listener Resources it supports.
  late final pulumi.Output<List<String>> listenerRef;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BrokerAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BrokerAuthorization]. {@macro pulumi_iotoperationsmq_broker_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BrokerAuthorization(
    String name, {
    BrokerAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:iotoperationsmq:BrokerAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationPolicies = registerOutput<AuthorizationConfigResponse>('authorizationPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorizationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listenerRef = registerOutput<List<String>>('listenerRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [BrokerAuthorization] resource.
  BrokerAuthorization.reference(String urn)
    : super(
        'azure-native:iotoperationsmq:BrokerAuthorization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authorizationPolicies = registerOutput<AuthorizationConfigResponse>('authorizationPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorizationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    extendedLocation = registerOutput<ExtendedLocationPropertyResponse>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listenerRef = registerOutput<List<String>>('listenerRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
