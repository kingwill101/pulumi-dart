import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_policy_args.dart';

/// Data Lake Analytics compute policy information.
///
/// Uses Azure REST API version 2019-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the specified compute policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var computePolicy = new AzureNative.DataLakeAnalytics.ComputePolicy("computePolicy", new()
///     {
///         AccountName = "contosoadla",
///         ComputePolicyName = "test_policy",
///         MaxDegreeOfParallelismPerJob = 10,
///         MinPriorityPerJob = 30,
///         ObjectId = "776b9091-8916-4638-87f7-9c989a38da98",
///         ObjectType = AzureNative.DataLakeAnalytics.AADObjectType.User,
///         ResourceGroupName = "contosorg",
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
/// 	datalakeanalytics "github.com/pulumi/pulumi-azure-native-sdk/datalakeanalytics/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalakeanalytics.NewComputePolicy(ctx, "computePolicy", &datalakeanalytics.ComputePolicyArgs{
/// 			AccountName:                  pulumi.String("contosoadla"),
/// 			ComputePolicyName:            pulumi.String("test_policy"),
/// 			MaxDegreeOfParallelismPerJob: pulumi.Int(10),
/// 			MinPriorityPerJob:            pulumi.Int(30),
/// 			ObjectId:                     pulumi.String("776b9091-8916-4638-87f7-9c989a38da98"),
/// 			ObjectType:                   pulumi.String(datalakeanalytics.AADObjectTypeUser),
/// 			ResourceGroupName:            pulumi.String("contosorg"),
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
/// import com.pulumi.azurenative.datalakeanalytics.ComputePolicy;
/// import com.pulumi.azurenative.datalakeanalytics.ComputePolicyArgs;
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
///         var computePolicy = new ComputePolicy("computePolicy", ComputePolicyArgs.builder()
///             .accountName("contosoadla")
///             .computePolicyName("test_policy")
///             .maxDegreeOfParallelismPerJob(10)
///             .minPriorityPerJob(30)
///             .objectId("776b9091-8916-4638-87f7-9c989a38da98")
///             .objectType("User")
///             .resourceGroupName("contosorg")
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
/// const computePolicy = new azure_native.datalakeanalytics.ComputePolicy("computePolicy", {
///     accountName: "contosoadla",
///     computePolicyName: "test_policy",
///     maxDegreeOfParallelismPerJob: 10,
///     minPriorityPerJob: 30,
///     objectId: "776b9091-8916-4638-87f7-9c989a38da98",
///     objectType: azure_native.datalakeanalytics.AADObjectType.User,
///     resourceGroupName: "contosorg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compute_policy = azure_native.datalakeanalytics.ComputePolicy("computePolicy",
///     account_name="contosoadla",
///     compute_policy_name="test_policy",
///     max_degree_of_parallelism_per_job=10,
///     min_priority_per_job=30,
///     object_id="776b9091-8916-4638-87f7-9c989a38da98",
///     object_type=azure_native.datalakeanalytics.AADObjectType.USER,
///     resource_group_name="contosorg")
///
/// ```
///
/// ```yaml
/// resources:
///   computePolicy:
///     type: azure-native:datalakeanalytics:ComputePolicy
///     properties:
///       accountName: contosoadla
///       computePolicyName: test_policy
///       maxDegreeOfParallelismPerJob: 10
///       minPriorityPerJob: 30
///       objectId: 776b9091-8916-4638-87f7-9c989a38da98
///       objectType: User
///       resourceGroupName: contosorg
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
/// $ pulumi import azure-native:datalakeanalytics:ComputePolicy test_policy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/computePolicies/{computePolicyName}
/// ```
class ComputePolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The maximum degree of parallelism per job this user can use to submit jobs.
  late final pulumi.Output<int> maxDegreeOfParallelismPerJob;
  /// The minimum priority per job this user can use to submit jobs.
  late final pulumi.Output<int> minPriorityPerJob;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The AAD object identifier for the entity to create a policy for.
  late final pulumi.Output<String> objectId;
  /// The type of AAD object the object identifier refers to.
  late final pulumi.Output<String> objectType;
  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ComputePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComputePolicy]. {@macro pulumi_datalakeanalytics_compute_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComputePolicy(
    String name, {
    ComputePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datalakeanalytics:ComputePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    maxDegreeOfParallelismPerJob = registerOutput<int>('maxDegreeOfParallelismPerJob');
    minPriorityPerJob = registerOutput<int>('minPriorityPerJob');
    this.name = registerOutput<String>('name');
    objectId = registerOutput<String>('objectId');
    objectType = registerOutput<String>('objectType');
    type = registerOutput<String>('type');
  }
}
