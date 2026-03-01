import 'package:pulumi/pulumi.dart' as pulumi;
import 'afdtarget_group_args.dart';
import 'system_data_response.dart';
import 'target_endpoint_response.dart';

/// AFDTargetGroup comprises a list of Endpoints that is used for tunnelling protocols to allow certain traffic.
///
/// Uses Azure REST API version 2024-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2024-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AfdTargetGroups_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var afdTargetGroup = new AzureNative.Cdn.AFDTargetGroup("afdTargetGroup", new()
///     {
///         ProfileName = "profile1",
///         ResourceGroupName = "RG",
///         TargetEndpoints = new[]
///         {
///             new AzureNative.Cdn.Inputs.TargetEndpointArgs
///             {
///                 Ports = new[]
///                 {
///                     443,
///                     80,
///                 },
///                 TargetFqdn = "host1.foo.com",
///             },
///             new AzureNative.Cdn.Inputs.TargetEndpointArgs
///             {
///                 Ports = new[]
///                 {
///                     443,
///                     80,
///                 },
///                 TargetFqdn = "host2.contoso.com",
///             },
///         },
///         TargetGroupName = "targetgroup1",
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
/// 	cdn "github.com/pulumi/pulumi-azure-native-sdk/cdn/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.NewAFDTargetGroup(ctx, "afdTargetGroup", &cdn.AFDTargetGroupArgs{
/// 			ProfileName:       pulumi.String("profile1"),
/// 			ResourceGroupName: pulumi.String("RG"),
/// 			TargetEndpoints: cdn.TargetEndpointArray{
/// 				&cdn.TargetEndpointArgs{
/// 					Ports: pulumi.IntArray{
/// 						pulumi.Int(443),
/// 						pulumi.Int(80),
/// 					},
/// 					TargetFqdn: pulumi.String("host1.foo.com"),
/// 				},
/// 				&cdn.TargetEndpointArgs{
/// 					Ports: pulumi.IntArray{
/// 						pulumi.Int(443),
/// 						pulumi.Int(80),
/// 					},
/// 					TargetFqdn: pulumi.String("host2.contoso.com"),
/// 				},
/// 			},
/// 			TargetGroupName: pulumi.String("targetgroup1"),
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
/// import com.pulumi.azurenative.cdn.AFDTargetGroup;
/// import com.pulumi.azurenative.cdn.AFDTargetGroupArgs;
/// import com.pulumi.azurenative.cdn.inputs.TargetEndpointArgs;
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
///         var afdTargetGroup = new AFDTargetGroup("afdTargetGroup", AFDTargetGroupArgs.builder()
///             .profileName("profile1")
///             .resourceGroupName("RG")
///             .targetEndpoints(
///                 TargetEndpointArgs.builder()
///                     .ports(
///                         443,
///                         80)
///                     .targetFqdn("host1.foo.com")
///                     .build(),
///                 TargetEndpointArgs.builder()
///                     .ports(
///                         443,
///                         80)
///                     .targetFqdn("host2.contoso.com")
///                     .build())
///             .targetGroupName("targetgroup1")
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
/// const afdTargetGroup = new azure_native.cdn.AFDTargetGroup("afdTargetGroup", {
///     profileName: "profile1",
///     resourceGroupName: "RG",
///     targetEndpoints: [
///         {
///             ports: [
///                 443,
///                 80,
///             ],
///             targetFqdn: "host1.foo.com",
///         },
///         {
///             ports: [
///                 443,
///                 80,
///             ],
///             targetFqdn: "host2.contoso.com",
///         },
///     ],
///     targetGroupName: "targetgroup1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// afd_target_group = azure_native.cdn.AFDTargetGroup("afdTargetGroup",
///     profile_name="profile1",
///     resource_group_name="RG",
///     target_endpoints=[
///         {
///             "ports": [
///                 443,
///                 80,
///             ],
///             "target_fqdn": "host1.foo.com",
///         },
///         {
///             "ports": [
///                 443,
///                 80,
///             ],
///             "target_fqdn": "host2.contoso.com",
///         },
///     ],
///     target_group_name="targetgroup1")
///
/// ```
///
/// ```yaml
/// resources:
///   afdTargetGroup:
///     type: azure-native:cdn:AFDTargetGroup
///     properties:
///       profileName: profile1
///       resourceGroupName: RG
///       targetEndpoints:
///         - ports:
///             - 443
///             - 80
///           targetFqdn: host1.foo.com
///         - ports:
///             - 443
///             - 80
///           targetFqdn: host2.contoso.com
///       targetGroupName: targetgroup1
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
/// $ pulumi import azure-native:cdn:AFDTargetGroup targetgroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/targetGroups/{targetGroupName}
/// ```
class AFDTargetGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> deploymentStatus;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Provisioning status
  late final pulumi.Output<String> provisioningState;
  /// Read only system data
  late final pulumi.Output<SystemDataResponse> systemData;
  /// TargetEndpoint list referenced by this target group.
  late final pulumi.Output<List<TargetEndpointResponse>> targetEndpoints;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [AFDTargetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AFDTargetGroup]. {@macro pulumi_cdn_afdtarget_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AFDTargetGroup(
    String name, {
    AFDTargetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cdn:AFDTargetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.deploymentStatus = registerOutput<String>('deploymentStatus');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.targetEndpoints = registerOutput<List<TargetEndpointResponse>>('targetEndpoints');
    this.type = registerOutput<String>('type');
  }
}
