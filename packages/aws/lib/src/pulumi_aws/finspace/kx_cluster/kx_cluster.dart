import 'package:pulumi/pulumi.dart';
import '../kx_cluster_auto_scaling_configuration/kx_cluster_auto_scaling_configuration.dart';
import '../kx_cluster_cache_storage_configuration/kx_cluster_cache_storage_configuration.dart';
import '../kx_cluster_capacity_configuration/kx_cluster_capacity_configuration.dart';
import '../kx_cluster_code/kx_cluster_code.dart';
import '../kx_cluster_database/kx_cluster_database.dart';
import '../kx_cluster_savedown_storage_configuration/kx_cluster_savedown_storage_configuration.dart';
import '../kx_cluster_scaling_group_configuration/kx_cluster_scaling_group_configuration.dart';
import '../kx_cluster_tickerplant_log_configuration/kx_cluster_tickerplant_log_configuration.dart';
import '../kx_cluster_vpc_configuration/kx_cluster_vpc_configuration.dart';
import 'kx_cluster_args.dart';

/// Resource for managing an AWS FinSpace Kx Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.finspace.KxCluster("example", {
/// name: "my-tf-kx-cluster",
/// environmentId: exampleAwsFinspaceKxEnvironment.id,
/// type: "HDB",
/// releaseLabel: "1.0",
/// azMode: "SINGLE",
/// availabilityZoneId: "use1-az2",
/// capacityConfiguration: {
/// nodeType: "kx.s.2xlarge",
/// nodeCount: 2,
/// },
/// vpcConfiguration: {
/// vpcId: test.id,
/// securityGroupIds: [exampleAwsSecurityGroup.id],
/// subnetIds: [exampleAwsSubnet.id],
/// ipAddressType: "IP_V4",
/// },
/// cacheStorageConfigurations: [{
/// type: "CACHE_1000",
/// size: 1200,
/// }],
/// databases: [{
/// databaseName: exampleAwsFinspaceKxDatabase.name,
/// cacheConfiguration: [{
/// cacheType: "CACHE_1000",
/// dbPaths: "/",
/// }],
/// }],
/// code: {
/// s3Bucket: testAwsS3Bucket.id,
/// s3Key: object.key,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.finspace.KxCluster("example",
/// name="my-tf-kx-cluster",
/// environment_id=example_aws_finspace_kx_environment["id"],
/// type="HDB",
/// release_label="1.0",
/// az_mode="SINGLE",
/// availability_zone_id="use1-az2",
/// capacity_configuration={
/// "node_type": "kx.s.2xlarge",
/// "node_count": 2,
/// },
/// vpc_configuration={
/// "vpc_id": test["id"],
/// "security_group_ids": [example_aws_security_group["id"]],
/// "subnet_ids": [example_aws_subnet["id"]],
/// "ip_address_type": "IP_V4",
/// },
/// cache_storage_configurations=[{
/// "type": "CACHE_1000",
/// "size": 1200,
/// }],
/// databases=[{
/// "database_name": example_aws_finspace_kx_database["name"],
/// "cache_configuration": [{
/// "cacheType": "CACHE_1000",
/// "dbPaths": "/",
/// }],
/// }],
/// code={
/// "s3_bucket": test_aws_s3_bucket["id"],
/// "s3_key": object["key"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.FinSpace.KxCluster("example", new()
/// {
/// Name = "my-tf-kx-cluster",
/// EnvironmentId = exampleAwsFinspaceKxEnvironment.Id,
/// Type = "HDB",
/// ReleaseLabel = "1.0",
/// AzMode = "SINGLE",
/// AvailabilityZoneId = "use1-az2",
/// CapacityConfiguration = new Aws.FinSpace.Inputs.KxClusterCapacityConfigurationArgs
/// {
/// NodeType = "kx.s.2xlarge",
/// NodeCount = 2,
/// },
/// VpcConfiguration = new Aws.FinSpace.Inputs.KxClusterVpcConfigurationArgs
/// {
/// VpcId = test.Id,
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// IpAddressType = "IP_V4",
/// },
/// CacheStorageConfigurations = new[]
/// {
/// new Aws.FinSpace.Inputs.KxClusterCacheStorageConfigurationArgs
/// {
/// Type = "CACHE_1000",
/// Size = 1200,
/// },
/// },
/// Databases = new[]
/// {
/// new Aws.FinSpace.Inputs.KxClusterDatabaseArgs
/// {
/// DatabaseName = exampleAwsFinspaceKxDatabase.Name,
/// CacheConfiguration = new[]
/// {
///
/// {
/// { "cacheType", "CACHE_1000" },
/// { "dbPaths", "/" },
/// },
/// },
/// },
/// },
/// Code = new Aws.FinSpace.Inputs.KxClusterCodeArgs
/// {
/// S3Bucket = testAwsS3Bucket.Id,
/// S3Key = @object.Key,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := finspace.NewKxCluster(ctx, "example", &finspace.KxClusterArgs{
/// Name:               pulumi.String("my-tf-kx-cluster"),
/// EnvironmentId:      pulumi.Any(exampleAwsFinspaceKxEnvironment.Id),
/// Type:               pulumi.String("HDB"),
/// ReleaseLabel:       pulumi.String("1.0"),
/// AzMode:             pulumi.String("SINGLE"),
/// AvailabilityZoneId: pulumi.String("use1-az2"),
/// CapacityConfiguration: &finspace.KxClusterCapacityConfigurationArgs{
/// NodeType:  pulumi.String("kx.s.2xlarge"),
/// NodeCount: pulumi.Int(2),
/// },
/// VpcConfiguration: &finspace.KxClusterVpcConfigurationArgs{
/// VpcId: pulumi.Any(test.Id),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// IpAddressType: pulumi.String("IP_V4"),
/// },
/// CacheStorageConfigurations: finspace.KxClusterCacheStorageConfigurationArray{
/// &finspace.KxClusterCacheStorageConfigurationArgs{
/// Type: pulumi.String("CACHE_1000"),
/// Size: pulumi.Int(1200),
/// },
/// },
/// Databases: finspace.KxClusterDatabaseArray{
/// &finspace.KxClusterDatabaseArgs{
/// DatabaseName: pulumi.Any(exampleAwsFinspaceKxDatabase.Name),
/// CacheConfiguration: []map[string]interface{}{
/// map[string]interface{}{
/// "cacheType": "CACHE_1000",
/// "dbPaths":   "/",
/// },
/// },
/// },
/// },
/// Code: &finspace.KxClusterCodeArgs{
/// S3Bucket: pulumi.Any(testAwsS3Bucket.Id),
/// S3Key:    pulumi.Any(object.Key),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new KxCluster("example", KxClusterArgs.builder()
/// .name("my-tf-kx-cluster")
/// .environmentId(exampleAwsFinspaceKxEnvironment.id())
/// .type("HDB")
/// .releaseLabel("1.0")
/// .azMode("SINGLE")
/// .availabilityZoneId("use1-az2")
/// .capacityConfiguration(KxClusterCapacityConfigurationArgs.builder()
/// .nodeType("kx.s.2xlarge")
/// .nodeCount(2)
/// .build())
/// .vpcConfiguration(KxClusterVpcConfigurationArgs.builder()
/// .vpcId(test.id())
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .subnetIds(exampleAwsSubnet.id())
/// .ipAddressType("IP_V4")
/// .build())
/// .cacheStorageConfigurations(KxClusterCacheStorageConfigurationArgs.builder()
/// .type("CACHE_1000")
/// .size(1200)
/// .build())
/// .databases(KxClusterDatabaseArgs.builder()
/// .databaseName(exampleAwsFinspaceKxDatabase.name())
/// .cacheConfiguration(List.of(Map.ofEntries(
/// Map.entry("cacheType", "CACHE_1000"),
/// Map.entry("dbPaths", "/")
/// )))
/// .build())
/// .code(KxClusterCodeArgs.builder()
/// .s3Bucket(testAwsS3Bucket.id())
/// .s3Key(object.key())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:finspace:KxCluster
/// properties:
/// name: my-tf-kx-cluster
/// environmentId: ${exampleAwsFinspaceKxEnvironment.id}
/// type: HDB
/// releaseLabel: '1.0'
/// azMode: SINGLE
/// availabilityZoneId: use1-az2
/// capacityConfiguration:
/// nodeType: kx.s.2xlarge
/// nodeCount: 2
/// vpcConfiguration:
/// vpcId: ${test.id}
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// ipAddressType: IP_V4
/// cacheStorageConfigurations:
/// - type: CACHE_1000
/// size: 1200
/// databases:
/// - databaseName: ${exampleAwsFinspaceKxDatabase.name}
/// cacheConfiguration:
/// - cacheType: CACHE_1000
/// dbPaths: /
/// code:
/// s3Bucket: ${testAwsS3Bucket.id}
/// s3Key: ${object.key}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Cluster using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> (environment ID and cluster name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxCluster:KxCluster example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-cluster
/// ```
class KxCluster extends CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX cluster.
  late final Output<String> arn;

  /// Configuration based on which FinSpace will scale in or scale out nodes in your cluster. See auto_scaling_configuration.
  late final Output<KxClusterAutoScalingConfiguration?>
      autoScalingConfiguration;

  /// The availability zone identifiers for the requested regions. Required when <span pulumi-lang-nodejs="`azMode`" pulumi-lang-dotnet="`AzMode`" pulumi-lang-go="`azMode`" pulumi-lang-python="`az_mode`" pulumi-lang-yaml="`azMode`" pulumi-lang-java="`azMode`">`az_mode`</span> is set to SINGLE.
  late final Output<String?> availabilityZoneId;

  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * SINGLE - Assigns one availability zone per cluster.
  /// * MULTI - Assigns all the availability zones per cluster.
  late final Output<String> azMode;

  /// Configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. See cache_storage_configuration.
  late final Output<List<KxClusterCacheStorageConfiguration>?>
      cacheStorageConfigurations;

  /// Structure for the metadata of a cluster. Includes information like the CPUs needed, memory of instances, and number of instances. See capacity_configuration.
  late final Output<KxClusterCapacityConfiguration?> capacityConfiguration;

  /// Details of the custom code that you want to use inside a cluster when analyzing data. Consists of the S3 source bucket, location, object version, and the relative path from where the custom code is loaded into the cluster. See code.
  late final Output<KxClusterCode?> code;

  /// List of key-value pairs to make available inside the cluster.
  late final Output<Map<String, String>?> commandLineArguments;

  /// Timestamp at which the cluster is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final Output<String> createdTimestamp;

  /// KX database that will be available for querying. Defined below.
  late final Output<List<KxClusterDatabase>?> databases;

  /// Description of the cluster.
  late final Output<String?> description;

  /// Unique identifier for the KX environment.
  late final Output<String> environmentId;

  /// An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
  late final Output<String?> executionRole;

  /// Path to Q program that will be run at launch of a cluster. This is a relative path within .zip file that contains the custom code, which will be loaded on the cluster. It must include the file name itself. For example, somedir/init.q.
  late final Output<String?> initializationScript;

  /// Last timestamp at which the cluster was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final Output<String> lastModifiedTimestamp;

  /// Unique name for the cluster that you want to create.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Version of FinSpace Managed kdb to run.
  late final Output<String> releaseLabel;

  /// Size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> as RDB. All the data written to this storage space is lost when the cluster node is restarted. See savedown_storage_configuration.
  late final Output<KxClusterSavedownStorageConfiguration?>
      savedownStorageConfiguration;

  /// The structure that stores the configuration details of a scaling group.
  late final Output<KxClusterScalingGroupConfiguration?>
      scalingGroupConfiguration;
  late final Output<String> status;
  late final Output<String> statusReason;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A configuration to store Tickerplant logs. It consists of a list of volumes that will be mounted to your cluster. For the cluster type Tickerplant , the location of the TP volume on the cluster will be available by using the global variable .aws.tp_log_path.
  late final Output<List<KxClusterTickerplantLogConfiguration>?>
      tickerplantLogConfigurations;

  /// Type of KDB database. The following types are available:
  /// * HDB - Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed KX databases mounted to the cluster.
  /// * RDB - Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the `savedownStorageConfiguration` parameter.
  /// * GATEWAY - A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.
  /// * GP - A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only `SINGLE` AZ mode.
  /// * Tickerplant - A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.
  late final Output<String> type;

  /// Configuration details about the network where the Privatelink endpoint of the cluster resides. See vpc_configuration.
  ///
  /// The following arguments are optional:
  late final Output<KxClusterVpcConfiguration> vpcConfiguration;

  KxCluster(
    String name, {
    KxClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxCluster:KxCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.autoScalingConfiguration =
        Output.createUnknown<KxClusterAutoScalingConfiguration?>();
    this.availabilityZoneId = Output.createUnknown<String?>();
    this.azMode = Output.createUnknown<String>();
    this.cacheStorageConfigurations =
        Output.createUnknown<List<KxClusterCacheStorageConfiguration>?>();
    this.capacityConfiguration =
        Output.createUnknown<KxClusterCapacityConfiguration?>();
    this.code = Output.createUnknown<KxClusterCode?>();
    this.commandLineArguments = Output.createUnknown<Map<String, String>?>();
    this.createdTimestamp = Output.createUnknown<String>();
    this.databases = Output.createUnknown<List<KxClusterDatabase>?>();
    this.description = Output.createUnknown<String?>();
    this.environmentId = Output.createUnknown<String>();
    this.executionRole = Output.createUnknown<String?>();
    this.initializationScript = Output.createUnknown<String?>();
    this.lastModifiedTimestamp = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.releaseLabel = Output.createUnknown<String>();
    this.savedownStorageConfiguration =
        Output.createUnknown<KxClusterSavedownStorageConfiguration?>();
    this.scalingGroupConfiguration =
        Output.createUnknown<KxClusterScalingGroupConfiguration?>();
    this.status = Output.createUnknown<String>();
    this.statusReason = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tickerplantLogConfigurations =
        Output.createUnknown<List<KxClusterTickerplantLogConfiguration>?>();
    this.type = Output.createUnknown<String>();
    this.vpcConfiguration = Output.createUnknown<KxClusterVpcConfiguration>();
  }
}
