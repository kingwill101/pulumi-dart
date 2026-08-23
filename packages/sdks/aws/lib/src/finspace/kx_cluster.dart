import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_cluster_args.dart';
import 'kx_cluster_auto_scaling_configuration.dart';
import 'kx_cluster_capacity_configuration.dart';
import 'kx_cluster_code.dart';
import 'kx_cluster_savedown_storage_configuration.dart';
import 'kx_cluster_scaling_group_configuration.dart';
import 'kx_cluster_state.dart';
import 'kx_cluster_vpc_configuration.dart';

/// Resource for managing an AWS FinSpace Kx Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.finspace.KxCluster("example", {
///     name: "my-tf-kx-cluster",
///     environmentId: exampleAwsFinspaceKxEnvironment.id,
///     type: "HDB",
///     releaseLabel: "1.0",
///     azMode: "SINGLE",
///     availabilityZoneId: "use1-az2",
///     capacityConfiguration: {
///         nodeType: "kx.s.2xlarge",
///         nodeCount: 2,
///     },
///     vpcConfiguration: {
///         vpcId: test.id,
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///         subnetIds: [exampleAwsSubnet.id],
///         ipAddressType: "IP_V4",
///     },
///     cacheStorageConfigurations: [{
///         type: "CACHE_1000",
///         size: 1200,
///     }],
///     databases: [{
///         databaseName: exampleAwsFinspaceKxDatabase.name,
///         cacheConfiguration: [{
///             cacheType: "CACHE_1000",
///             dbPaths: "/",
///         }],
///     }],
///     code: {
///         s3Bucket: testAwsS3Bucket.id,
///         s3Key: object.key,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.finspace.KxCluster("example",
///     name="my-tf-kx-cluster",
///     environment_id=example_aws_finspace_kx_environment["id"],
///     type="HDB",
///     release_label="1.0",
///     az_mode="SINGLE",
///     availability_zone_id="use1-az2",
///     capacity_configuration={
///         "node_type": "kx.s.2xlarge",
///         "node_count": 2,
///     },
///     vpc_configuration={
///         "vpc_id": test["id"],
///         "security_group_ids": [example_aws_security_group["id"]],
///         "subnet_ids": [example_aws_subnet["id"]],
///         "ip_address_type": "IP_V4",
///     },
///     cache_storage_configurations=[{
///         "type": "CACHE_1000",
///         "size": 1200,
///     }],
///     databases=[{
///         "database_name": example_aws_finspace_kx_database["name"],
///         "cache_configuration": [{
///             "cacheType": "CACHE_1000",
///             "dbPaths": "/",
///         }],
///     }],
///     code={
///         "s3_bucket": test_aws_s3_bucket["id"],
///         "s3_key": object["key"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.FinSpace.KxCluster("example", new()
///     {
///         Name = "my-tf-kx-cluster",
///         EnvironmentId = exampleAwsFinspaceKxEnvironment.Id,
///         Type = "HDB",
///         ReleaseLabel = "1.0",
///         AzMode = "SINGLE",
///         AvailabilityZoneId = "use1-az2",
///         CapacityConfiguration = new Aws.FinSpace.Inputs.KxClusterCapacityConfigurationArgs
///         {
///             NodeType = "kx.s.2xlarge",
///             NodeCount = 2,
///         },
///         VpcConfiguration = new Aws.FinSpace.Inputs.KxClusterVpcConfigurationArgs
///         {
///             VpcId = test.Id,
///             SecurityGroupIds = new[]
///             {
///                 exampleAwsSecurityGroup.Id,
///             },
///             SubnetIds = new[]
///             {
///                 exampleAwsSubnet.Id,
///             },
///             IpAddressType = "IP_V4",
///         },
///         CacheStorageConfigurations = new[]
///         {
///             new Aws.FinSpace.Inputs.KxClusterCacheStorageConfigurationArgs
///             {
///                 Type = "CACHE_1000",
///                 Size = 1200,
///             },
///         },
///         Databases = new[]
///         {
///             new Aws.FinSpace.Inputs.KxClusterDatabaseArgs
///             {
///                 DatabaseName = exampleAwsFinspaceKxDatabase.Name,
///                 CacheConfiguration = new[]
///                 {
///
///                     {
///                         { "cacheType", "CACHE_1000" },
///                         { "dbPaths", "/" },
///                     },
///                 },
///             },
///         },
///         Code = new Aws.FinSpace.Inputs.KxClusterCodeArgs
///         {
///             S3Bucket = testAwsS3Bucket.Id,
///             S3Key = @object.Key,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := finspace.NewKxCluster(ctx, "example", &finspace.KxClusterArgs{
/// 			Name:               pulumi.String("my-tf-kx-cluster"),
/// 			EnvironmentId:      pulumi.Any(exampleAwsFinspaceKxEnvironment.Id),
/// 			Type:               pulumi.String("HDB"),
/// 			ReleaseLabel:       pulumi.String("1.0"),
/// 			AzMode:             pulumi.String("SINGLE"),
/// 			AvailabilityZoneId: pulumi.String("use1-az2"),
/// 			CapacityConfiguration: &finspace.KxClusterCapacityConfigurationArgs{
/// 				NodeType:  pulumi.String("kx.s.2xlarge"),
/// 				NodeCount: pulumi.Int(2),
/// 			},
/// 			VpcConfiguration: &finspace.KxClusterVpcConfigurationArgs{
/// 				VpcId: pulumi.Any(test.Id),
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					exampleAwsSecurityGroup.Id,
/// 				},
/// 				SubnetIds: pulumi.StringArray{
/// 					exampleAwsSubnet.Id,
/// 				},
/// 				IpAddressType: pulumi.String("IP_V4"),
/// 			},
/// 			CacheStorageConfigurations: finspace.KxClusterCacheStorageConfigurationArray{
/// 				&finspace.KxClusterCacheStorageConfigurationArgs{
/// 					Type: pulumi.String("CACHE_1000"),
/// 					Size: pulumi.Int(1200),
/// 				},
/// 			},
/// 			Databases: finspace.KxClusterDatabaseArray{
/// 				&finspace.KxClusterDatabaseArgs{
/// 					DatabaseName: pulumi.Any(exampleAwsFinspaceKxDatabase.Name),
/// 					CacheConfiguration: []map[string]string{
/// 						{
/// 							"cacheType": "CACHE_1000",
/// 							"dbPaths":   "/",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Code: &finspace.KxClusterCodeArgs{
/// 				S3Bucket: pulumi.Any(testAwsS3Bucket.Id),
/// 				S3Key:    pulumi.Any(object.Key),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_finspace_kxcluster" "example" {
///   name                 = "my-tf-kx-cluster"
///   environment_id       = exampleAwsFinspaceKxEnvironment.id
///   type                 = "HDB"
///   release_label        = "1.0"
///   az_mode              = "SINGLE"
///   availability_zone_id = "use1-az2"
///   capacity_configuration = {
///     node_type  = "kx.s.2xlarge"
///     node_count = 2
///   }
///   vpc_configuration = {
///     vpc_id             = test.id
///     security_group_ids = [exampleAwsSecurityGroup.id]
///     subnet_ids         = [exampleAwsSubnet.id]
///     ip_address_type    = "IP_V4"
///   }
///   cache_storage_configurations {
///     type = "CACHE_1000"
///     size = 1200
///   }
///   databases {
///     database_name = exampleAwsFinspaceKxDatabase.name
///     cache_configuration = [{
///       "cacheType" = "CACHE_1000"
///       "dbPaths"   = "/"
///     }]
///   }
///   code = {
///     s3_bucket = testAwsS3Bucket.id
///     s3_key    = object.key
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.finspace.KxCluster;
/// import com.pulumi.aws.finspace.KxClusterArgs;
/// import com.pulumi.aws.finspace.inputs.KxClusterCapacityConfigurationArgs;
/// import com.pulumi.aws.finspace.inputs.KxClusterVpcConfigurationArgs;
/// import com.pulumi.aws.finspace.inputs.KxClusterCacheStorageConfigurationArgs;
/// import com.pulumi.aws.finspace.inputs.KxClusterDatabaseArgs;
/// import com.pulumi.aws.finspace.inputs.KxClusterCodeArgs;
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
///         var example = new KxCluster("example", KxClusterArgs.builder()
///             .name("my-tf-kx-cluster")
///             .environmentId(exampleAwsFinspaceKxEnvironment.id())
///             .type("HDB")
///             .releaseLabel("1.0")
///             .azMode("SINGLE")
///             .availabilityZoneId("use1-az2")
///             .capacityConfiguration(KxClusterCapacityConfigurationArgs.builder()
///                 .nodeType("kx.s.2xlarge")
///                 .nodeCount(2)
///                 .build())
///             .vpcConfiguration(KxClusterVpcConfigurationArgs.builder()
///                 .vpcId(test.id())
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .subnetIds(exampleAwsSubnet.id())
///                 .ipAddressType("IP_V4")
///                 .build())
///             .cacheStorageConfigurations(KxClusterCacheStorageConfigurationArgs.builder()
///                 .type("CACHE_1000")
///                 .size(1200)
///                 .build())
///             .databases(KxClusterDatabaseArgs.builder()
///                 .databaseName(exampleAwsFinspaceKxDatabase.name())
///                 .cacheConfiguration(Arrays.asList(Map.ofEntries(
///                     Map.entry("cacheType", "CACHE_1000"),
///                     Map.entry("dbPaths", "/")
///                 )))
///                 .build())
///             .code(KxClusterCodeArgs.builder()
///                 .s3Bucket(testAwsS3Bucket.id())
///                 .s3Key(object.key())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:finspace:KxCluster
///     properties:
///       name: my-tf-kx-cluster
///       environmentId: ${exampleAwsFinspaceKxEnvironment.id}
///       type: HDB
///       releaseLabel: '1.0'
///       azMode: SINGLE
///       availabilityZoneId: use1-az2
///       capacityConfiguration:
///         nodeType: kx.s.2xlarge
///         nodeCount: 2
///       vpcConfiguration:
///         vpcId: ${test.id}
///         securityGroupIds:
///           - ${exampleAwsSecurityGroup.id}
///         subnetIds:
///           - ${exampleAwsSubnet.id}
///         ipAddressType: IP_V4
///       cacheStorageConfigurations:
///         - type: CACHE_1000
///           size: 1200
///       databases:
///         - databaseName: ${exampleAwsFinspaceKxDatabase.name}
///           cacheConfiguration:
///             - cacheType: CACHE_1000
///               dbPaths: /
///       code:
///         s3Bucket: ${testAwsS3Bucket.id}
///         s3Key: ${object.key}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Cluster using the `id` (environment ID and cluster name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxCluster:KxCluster example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-cluster
/// ```
class KxCluster extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX cluster.
  late final pulumi.Output<String> arn;
  /// Configuration based on which FinSpace will scale in or scale out nodes in your cluster. See `autoScalingConfiguration` Block.
  late final pulumi.Output<KxClusterAutoScalingConfiguration?> autoScalingConfiguration;
  /// Availability zone identifiers for the requested regions. Required when `azMode` is set to SINGLE.
  late final pulumi.Output<String?> availabilityZoneId;
  /// Number of availability zones to assign per cluster. Valid values are `SINGLE` (assigns one availability zone per cluster) and `MULTI` (assigns all the availability zones per cluster).
  late final pulumi.Output<String> azMode;
  /// Configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. See `cacheStorageConfigurations` Block.
  late final pulumi.Output<List<Map<String, dynamic>>?> cacheStorageConfigurations;
  /// Structure for the metadata of a cluster. Includes information like the CPUs needed, memory of instances, and number of instances. See `capacityConfiguration` Block.
  late final pulumi.Output<KxClusterCapacityConfiguration?> capacityConfiguration;
  /// Details of the custom code that you want to use inside a cluster when analyzing data. Consists of the S3 source bucket, location, object version, and the relative path from where the custom code is loaded into the cluster. See `code` Block.
  late final pulumi.Output<KxClusterCode?> code;
  /// List of key-value pairs to make available inside the cluster.
  late final pulumi.Output<Map<String, String>?> commandLineArguments;
  /// Timestamp at which the cluster is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> createdTimestamp;
  /// KX database that will be available for querying. See `database` Block.
  late final pulumi.Output<List<Map<String, dynamic>>?> databases;
  /// Description of the cluster.
  late final pulumi.Output<String?> description;
  /// Unique identifier for the KX environment.
  late final pulumi.Output<String> environmentId;
  /// IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
  late final pulumi.Output<String?> executionRole;
  /// Path to Q program that will be run at launch of a cluster. This is a relative path within .zip file that contains the custom code, which will be loaded on the cluster. It must include the file name itself. For example, somedir/init.q.
  late final pulumi.Output<String?> initializationScript;
  /// Last timestamp at which the cluster was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> lastModifiedTimestamp;
  /// Unique name for the cluster that you want to create.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Version of FinSpace Managed kdb to run.
  late final pulumi.Output<String> releaseLabel;
  /// Size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose `type` as RDB. All the data written to this storage space is lost when the cluster node is restarted. See `savedownStorageConfiguration` Block.
  late final pulumi.Output<KxClusterSavedownStorageConfiguration?> savedownStorageConfiguration;
  /// Structure that stores the configuration details of a scaling group. See `scalingGroupConfiguration` Block.
  late final pulumi.Output<KxClusterScalingGroupConfiguration?> scalingGroupConfiguration;
  /// Status of the cluster.
  late final pulumi.Output<String> status;
  /// Reason for the cluster status.
  late final pulumi.Output<String> statusReason;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration to store Tickerplant logs. It consists of a list of volumes that will be mounted to your cluster. For the cluster type Tickerplant, the location of the TP volume on the cluster will be available by using the global variable .aws.tp_log_path. See `tickerplantLogConfiguration` Block.
  late final pulumi.Output<List<Map<String, dynamic>>?> tickerplantLogConfigurations;
  /// Type of KDB database. Valid values are `HDB` (Historical Database), `RDB` (Realtime Database, which requires the `savedownStorageConfiguration` parameter), `GATEWAY`, `GP` (general purpose), and `Tickerplant`.
  late final pulumi.Output<String> type;
  /// Configuration details about the network where the Privatelink endpoint of the cluster resides. See `vpcConfiguration` Block.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<KxClusterVpcConfiguration> vpcConfiguration;

  /// Creates a new [KxCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KxCluster]. {@macro pulumi_finspace_kx_cluster_kx_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KxCluster(
    String name, {
    KxClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxCluster:KxCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoScalingConfiguration = registerOutput<KxClusterAutoScalingConfiguration?>('autoScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterAutoScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availabilityZoneId = registerOutput<String?>('availabilityZoneId');
    azMode = registerOutput<String>('azMode');
    cacheStorageConfigurations = registerOutput<List<Map<String, dynamic>>?>('cacheStorageConfigurations');
    capacityConfiguration = registerOutput<KxClusterCapacityConfiguration?>('capacityConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterCapacityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    code = registerOutput<KxClusterCode?>('code', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterCode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    commandLineArguments = registerOutput<Map<String, String>?>('commandLineArguments');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    databases = registerOutput<List<Map<String, dynamic>>?>('databases');
    description = registerOutput<String?>('description');
    environmentId = registerOutput<String>('environmentId');
    executionRole = registerOutput<String?>('executionRole');
    initializationScript = registerOutput<String?>('initializationScript');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    releaseLabel = registerOutput<String>('releaseLabel');
    savedownStorageConfiguration = registerOutput<KxClusterSavedownStorageConfiguration?>('savedownStorageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterSavedownStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scalingGroupConfiguration = registerOutput<KxClusterScalingGroupConfiguration?>('scalingGroupConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterScalingGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tickerplantLogConfigurations = registerOutput<List<Map<String, dynamic>>?>('tickerplantLogConfigurations');
    type = registerOutput<String>('type');
    vpcConfiguration = registerOutput<KxClusterVpcConfiguration>('vpcConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [KxCluster] resource's state with the given [name] and [id].
  static KxCluster get(
    String name,
    pulumi.Input<String> id, {
    KxClusterState? state,
  }) {
    return KxCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KxCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxCluster:KxCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoScalingConfiguration = registerOutput<KxClusterAutoScalingConfiguration?>('autoScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterAutoScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availabilityZoneId = registerOutput<String?>('availabilityZoneId');
    azMode = registerOutput<String>('azMode');
    cacheStorageConfigurations = registerOutput<List<Map<String, dynamic>>?>('cacheStorageConfigurations');
    capacityConfiguration = registerOutput<KxClusterCapacityConfiguration?>('capacityConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterCapacityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    code = registerOutput<KxClusterCode?>('code', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterCode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    commandLineArguments = registerOutput<Map<String, String>?>('commandLineArguments');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    databases = registerOutput<List<Map<String, dynamic>>?>('databases');
    description = registerOutput<String?>('description');
    environmentId = registerOutput<String>('environmentId');
    executionRole = registerOutput<String?>('executionRole');
    initializationScript = registerOutput<String?>('initializationScript');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    releaseLabel = registerOutput<String>('releaseLabel');
    savedownStorageConfiguration = registerOutput<KxClusterSavedownStorageConfiguration?>('savedownStorageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterSavedownStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scalingGroupConfiguration = registerOutput<KxClusterScalingGroupConfiguration?>('scalingGroupConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterScalingGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tickerplantLogConfigurations = registerOutput<List<Map<String, dynamic>>?>('tickerplantLogConfigurations');
    type = registerOutput<String>('type');
    vpcConfiguration = registerOutput<KxClusterVpcConfiguration>('vpcConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxClusterVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
