import 'package:pulumi/pulumi.dart';
import '../batch_environment_config/batch_environment_config.dart';
import '../batch_pyspark_batch/batch_pyspark_batch.dart';
import '../batch_runtime_config/batch_runtime_config.dart';
import '../batch_runtime_info/batch_runtime_info.dart';
import '../batch_spark_batch/batch_spark_batch.dart';
import '../batch_spark_rbatch/batch_spark_rbatch.dart';
import '../batch_spark_sql_batch/batch_spark_sql_batch.dart';
import '../batch_state_history/batch_state_history.dart';
import 'batch_args.dart';

/// Dataproc Serverless Batches lets you run Spark workloads without requiring you to
/// provision and manage your own Dataproc cluster.
///
///
/// To get more information about Batch, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.batches)
/// * How-to Guides
/// * [Dataproc Serverless Batches Intro](https://cloud.google.com/dataproc-serverless/docs/overview)
///
/// ## Example Usage
///
/// ### Dataproc Batch Spark
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleBatchSpark = new gcp.dataproc.Batch("example_batch_spark", {
/// batchId: "tf-test-batch_60646",
/// location: "us-central1",
/// labels: {
/// batch_test: "terraform",
/// },
/// runtimeConfig: {
/// properties: {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// },
/// environmentConfig: {
/// executionConfig: {
/// subnetworkUri: "default",
/// ttl: "3600s",
/// networkTags: ["tag1"],
/// },
/// },
/// sparkBatch: {
/// mainClass: "org.apache.spark.examples.SparkPi",
/// args: ["10"],
/// jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_batch_spark = gcp.dataproc.Batch("example_batch_spark",
/// batch_id="tf-test-batch_60646",
/// location="us-central1",
/// labels={
/// "batch_test": "terraform",
/// },
/// runtime_config={
/// "properties": {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// },
/// environment_config={
/// "execution_config": {
/// "subnetwork_uri": "default",
/// "ttl": "3600s",
/// "network_tags": ["tag1"],
/// },
/// },
/// spark_batch={
/// "main_class": "org.apache.spark.examples.SparkPi",
/// "args": ["10"],
/// "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleBatchSpark = new Gcp.Dataproc.Batch("example_batch_spark", new()
/// {
/// BatchId = "tf-test-batch_60646",
/// Location = "us-central1",
/// Labels =
/// {
/// { "batch_test", "terraform" },
/// },
/// RuntimeConfig = new Gcp.Dataproc.Inputs.BatchRuntimeConfigArgs
/// {
/// Properties =
/// {
/// { "spark.dynamicAllocation.enabled", "false" },
/// { "spark.executor.instances", "2" },
/// },
/// },
/// EnvironmentConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigArgs
/// {
/// ExecutionConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigExecutionConfigArgs
/// {
/// SubnetworkUri = "default",
/// Ttl = "3600s",
/// NetworkTags = new[]
/// {
/// "tag1",
/// },
/// },
/// },
/// SparkBatch = new Gcp.Dataproc.Inputs.BatchSparkBatchArgs
/// {
/// MainClass = "org.apache.spark.examples.SparkPi",
/// Args = new[]
/// {
/// "10",
/// },
/// JarFileUris = new[]
/// {
/// "file:///usr/lib/spark/examples/jars/spark-examples.jar",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewBatch(ctx, "example_batch_spark", &dataproc.BatchArgs{
/// BatchId:  pulumi.String("tf-test-batch_60646"),
/// Location: pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "batch_test": pulumi.String("terraform"),
/// },
/// RuntimeConfig: &dataproc.BatchRuntimeConfigArgs{
/// Properties: pulumi.StringMap{
/// "spark.dynamicAllocation.enabled": pulumi.String("false"),
/// "spark.executor.instances":        pulumi.String("2"),
/// },
/// },
/// EnvironmentConfig: &dataproc.BatchEnvironmentConfigArgs{
/// ExecutionConfig: &dataproc.BatchEnvironmentConfigExecutionConfigArgs{
/// SubnetworkUri: pulumi.String("default"),
/// Ttl:           pulumi.String("3600s"),
/// NetworkTags: pulumi.StringArray{
/// pulumi.String("tag1"),
/// },
/// },
/// },
/// SparkBatch: &dataproc.BatchSparkBatchArgs{
/// MainClass: pulumi.String("org.apache.spark.examples.SparkPi"),
/// Args: pulumi.StringArray{
/// pulumi.String("10"),
/// },
/// JarFileUris: pulumi.StringArray{
/// pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// },
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
/// import com.pulumi.gcp.dataproc.Batch;
/// import com.pulumi.gcp.dataproc.BatchArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigExecutionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchSparkBatchArgs;
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
/// var exampleBatchSpark = new Batch("exampleBatchSpark", BatchArgs.builder()
/// .batchId("tf-test-batch_60646")
/// .location("us-central1")
/// .labels(Map.of("batch_test", "terraform"))
/// .runtimeConfig(BatchRuntimeConfigArgs.builder()
/// .properties(Map.ofEntries(
/// Map.entry("spark.dynamicAllocation.enabled", "false"),
/// Map.entry("spark.executor.instances", "2")
/// ))
/// .build())
/// .environmentConfig(BatchEnvironmentConfigArgs.builder()
/// .executionConfig(BatchEnvironmentConfigExecutionConfigArgs.builder()
/// .subnetworkUri("default")
/// .ttl("3600s")
/// .networkTags("tag1")
/// .build())
/// .build())
/// .sparkBatch(BatchSparkBatchArgs.builder()
/// .mainClass("org.apache.spark.examples.SparkPi")
/// .args("10")
/// .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleBatchSpark:
/// type: gcp:dataproc:Batch
/// name: example_batch_spark
/// properties:
/// batchId: tf-test-batch_60646
/// location: us-central1
/// labels:
/// batch_test: terraform
/// runtimeConfig:
/// properties:
/// spark.dynamicAllocation.enabled: 'false'
/// spark.executor.instances: '2'
/// environmentConfig:
/// executionConfig:
/// subnetworkUri: default
/// ttl: 3600s
/// networkTags:
/// - tag1
/// sparkBatch:
/// mainClass: org.apache.spark.examples.SparkPi
/// args:
/// - '10'
/// jarFileUris:
/// - file:///usr/lib/spark/examples/jars/spark-examples.jar
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Batch Spark Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const gcsAccount = gcp.storage.getProjectServiceAccount({});
/// const bucket = new gcp.storage.Bucket("bucket", {
/// uniformBucketLevelAccess: true,
/// name: "dataproc-bucket",
/// location: "US",
/// forceDestroy: true,
/// });
/// const cryptoKeyMember1 = new gcp.kms.CryptoKeyIAMMember("crypto_key_member_1", {
/// cryptoKeyId: "example-key",
/// role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member: project.then(project => `serviceAccount:service-${project.number}@dataproc-accounts.iam.gserviceaccount.com`),
/// });
/// const ms = new gcp.dataproc.MetastoreService("ms", {
/// serviceId: "dataproc-batch",
/// location: "us-central1",
/// port: 9080,
/// tier: "DEVELOPER",
/// maintenanceWindow: {
/// hourOfDay: 2,
/// dayOfWeek: "SUNDAY",
/// },
/// hiveMetastoreConfig: {
/// version: "3.1.2",
/// },
/// });
/// const basic = new gcp.dataproc.Cluster("basic", {
/// name: "dataproc-batch",
/// region: "us-central1",
/// clusterConfig: {
/// softwareConfig: {
/// overrideProperties: {
/// "dataproc:dataproc.allow.zero.workers": "true",
/// "spark:spark.history.fs.logDirectory": pulumi.interpolate`gs://${bucket.name}/*/spark-job-history`,
/// },
/// },
/// endpointConfig: {
/// enableHttpPortAccess: true,
/// },
/// masterConfig: {
/// numInstances: 1,
/// machineType: "e2-standard-2",
/// diskConfig: {
/// bootDiskSizeGb: 35,
/// },
/// },
/// metastoreConfig: {
/// dataprocMetastoreService: ms.name,
/// },
/// },
/// });
/// const exampleBatchSpark = new gcp.dataproc.Batch("example_batch_spark", {
/// batchId: "dataproc-batch",
/// location: "us-central1",
/// labels: {
/// batch_test: "terraform",
/// },
/// runtimeConfig: {
/// properties: {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// version: "2.2",
/// },
/// environmentConfig: {
/// executionConfig: {
/// ttl: "3600s",
/// networkTags: ["tag1"],
/// kmsKey: "example-key",
/// networkUri: "default",
/// serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
/// stagingBucket: bucket.name,
/// authenticationConfig: {
/// userWorkloadAuthenticationType: "SERVICE_ACCOUNT",
/// },
/// },
/// peripheralsConfig: {
/// metastoreService: ms.name,
/// sparkHistoryServerConfig: {
/// dataprocCluster: basic.id,
/// },
/// },
/// },
/// sparkBatch: {
/// mainClass: "org.apache.spark.examples.SparkPi",
/// args: ["10"],
/// jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// },
/// }, {
/// dependsOn: [cryptoKeyMember1],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// gcs_account = gcp.storage.get_project_service_account()
/// bucket = gcp.storage.Bucket("bucket",
/// uniform_bucket_level_access=True,
/// name="dataproc-bucket",
/// location="US",
/// force_destroy=True)
/// crypto_key_member1 = gcp.kms.CryptoKeyIAMMember("crypto_key_member_1",
/// crypto_key_id="example-key",
/// role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member=f"serviceAccount:service-{project.number}@dataproc-accounts.iam.gserviceaccount.com")
/// ms = gcp.dataproc.MetastoreService("ms",
/// service_id="dataproc-batch",
/// location="us-central1",
/// port=9080,
/// tier="DEVELOPER",
/// maintenance_window={
/// "hour_of_day": 2,
/// "day_of_week": "SUNDAY",
/// },
/// hive_metastore_config={
/// "version": "3.1.2",
/// })
/// basic = gcp.dataproc.Cluster("basic",
/// name="dataproc-batch",
/// region="us-central1",
/// cluster_config={
/// "software_config": {
/// "override_properties": {
/// "dataproc:dataproc.allow.zero.workers": "true",
/// "spark:spark.history.fs.logDirectory": bucket.name.apply(lambda name: f"gs://{name}/*/spark-job-history"),
/// },
/// },
/// "endpoint_config": {
/// "enable_http_port_access": True,
/// },
/// "master_config": {
/// "num_instances": 1,
/// "machine_type": "e2-standard-2",
/// "disk_config": {
/// "boot_disk_size_gb": 35,
/// },
/// },
/// "metastore_config": {
/// "dataproc_metastore_service": ms.name,
/// },
/// })
/// example_batch_spark = gcp.dataproc.Batch("example_batch_spark",
/// batch_id="dataproc-batch",
/// location="us-central1",
/// labels={
/// "batch_test": "terraform",
/// },
/// runtime_config={
/// "properties": {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// "version": "2.2",
/// },
/// environment_config={
/// "execution_config": {
/// "ttl": "3600s",
/// "network_tags": ["tag1"],
/// "kms_key": "example-key",
/// "network_uri": "default",
/// "service_account": f"{project.number}-compute@developer.gserviceaccount.com",
/// "staging_bucket": bucket.name,
/// "authentication_config": {
/// "user_workload_authentication_type": "SERVICE_ACCOUNT",
/// },
/// },
/// "peripherals_config": {
/// "metastore_service": ms.name,
/// "spark_history_server_config": {
/// "dataproc_cluster": basic.id,
/// },
/// },
/// },
/// spark_batch={
/// "main_class": "org.apache.spark.examples.SparkPi",
/// "args": ["10"],
/// "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// },
/// opts = pulumi.ResourceOptions(depends_on=[crypto_key_member1]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke();
///
/// var bucket = new Gcp.Storage.Bucket("bucket", new()
/// {
/// UniformBucketLevelAccess = true,
/// Name = "dataproc-bucket",
/// Location = "US",
/// ForceDestroy = true,
/// });
///
/// var cryptoKeyMember1 = new Gcp.Kms.CryptoKeyIAMMember("crypto_key_member_1", new()
/// {
/// CryptoKeyId = "example-key",
/// Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@dataproc-accounts.iam.gserviceaccount.com",
/// });
///
/// var ms = new Gcp.Dataproc.MetastoreService("ms", new()
/// {
/// ServiceId = "dataproc-batch",
/// Location = "us-central1",
/// Port = 9080,
/// Tier = "DEVELOPER",
/// MaintenanceWindow = new Gcp.Dataproc.Inputs.MetastoreServiceMaintenanceWindowArgs
/// {
/// HourOfDay = 2,
/// DayOfWeek = "SUNDAY",
/// },
/// HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
/// {
/// Version = "3.1.2",
/// },
/// });
///
/// var basic = new Gcp.Dataproc.Cluster("basic", new()
/// {
/// Name = "dataproc-batch",
/// Region = "us-central1",
/// ClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigArgs
/// {
/// SoftwareConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigSoftwareConfigArgs
/// {
/// OverrideProperties =
/// {
/// { "dataproc:dataproc.allow.zero.workers", "true" },
/// { "spark:spark.history.fs.logDirectory", bucket.Name.Apply(name => $"gs://{name}/*/spark-job-history") },
/// },
/// },
/// EndpointConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigEndpointConfigArgs
/// {
/// EnableHttpPortAccess = true,
/// },
/// MasterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigArgs
/// {
/// NumInstances = 1,
/// MachineType = "e2-standard-2",
/// DiskConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigDiskConfigArgs
/// {
/// BootDiskSizeGb = 35,
/// },
/// },
/// MetastoreConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMetastoreConfigArgs
/// {
/// DataprocMetastoreService = ms.Name,
/// },
/// },
/// });
///
/// var exampleBatchSpark = new Gcp.Dataproc.Batch("example_batch_spark", new()
/// {
/// BatchId = "dataproc-batch",
/// Location = "us-central1",
/// Labels =
/// {
/// { "batch_test", "terraform" },
/// },
/// RuntimeConfig = new Gcp.Dataproc.Inputs.BatchRuntimeConfigArgs
/// {
/// Properties =
/// {
/// { "spark.dynamicAllocation.enabled", "false" },
/// { "spark.executor.instances", "2" },
/// },
/// Version = "2.2",
/// },
/// EnvironmentConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigArgs
/// {
/// ExecutionConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigExecutionConfigArgs
/// {
/// Ttl = "3600s",
/// NetworkTags = new[]
/// {
/// "tag1",
/// },
/// KmsKey = "example-key",
/// NetworkUri = "default",
/// ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
/// StagingBucket = bucket.Name,
/// AuthenticationConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigExecutionConfigAuthenticationConfigArgs
/// {
/// UserWorkloadAuthenticationType = "SERVICE_ACCOUNT",
/// },
/// },
/// PeripheralsConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigPeripheralsConfigArgs
/// {
/// MetastoreService = ms.Name,
/// SparkHistoryServerConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfigArgs
/// {
/// DataprocCluster = basic.Id,
/// },
/// },
/// },
/// SparkBatch = new Gcp.Dataproc.Inputs.BatchSparkBatchArgs
/// {
/// MainClass = "org.apache.spark.examples.SparkPi",
/// Args = new[]
/// {
/// "10",
/// },
/// JarFileUris = new[]
/// {
/// "file:///usr/lib/spark/examples/jars/spark-examples.jar",
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// cryptoKeyMember1,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// UniformBucketLevelAccess: pulumi.Bool(true),
/// Name:                     pulumi.String("dataproc-bucket"),
/// Location:                 pulumi.String("US"),
/// ForceDestroy:             pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// cryptoKeyMember1, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key_member_1", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.String("example-key"),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// Member:      pulumi.Sprintf("serviceAccount:service-%v@dataproc-accounts.iam.gserviceaccount.com", project.Number),
/// })
/// if err != nil {
/// return err
/// }
/// ms, err := dataproc.NewMetastoreService(ctx, "ms", &dataproc.MetastoreServiceArgs{
/// ServiceId: pulumi.String("dataproc-batch"),
/// Location:  pulumi.String("us-central1"),
/// Port:      pulumi.Int(9080),
/// Tier:      pulumi.String("DEVELOPER"),
/// MaintenanceWindow: &dataproc.MetastoreServiceMaintenanceWindowArgs{
/// HourOfDay: pulumi.Int(2),
/// DayOfWeek: pulumi.String("SUNDAY"),
/// },
/// HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// Version: pulumi.String("3.1.2"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// basic, err := dataproc.NewCluster(ctx, "basic", &dataproc.ClusterArgs{
/// Name:   pulumi.String("dataproc-batch"),
/// Region: pulumi.String("us-central1"),
/// ClusterConfig: &dataproc.ClusterClusterConfigArgs{
/// SoftwareConfig: &dataproc.ClusterClusterConfigSoftwareConfigArgs{
/// OverrideProperties: pulumi.StringMap{
/// "dataproc:dataproc.allow.zero.workers": pulumi.String("true"),
/// "spark:spark.history.fs.logDirectory": bucket.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("gs://%v/*/spark-job-history", name), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// EndpointConfig: &dataproc.ClusterClusterConfigEndpointConfigArgs{
/// EnableHttpPortAccess: pulumi.Bool(true),
/// },
/// MasterConfig: &dataproc.ClusterClusterConfigMasterConfigArgs{
/// NumInstances: pulumi.Int(1),
/// MachineType:  pulumi.String("e2-standard-2"),
/// DiskConfig: &dataproc.ClusterClusterConfigMasterConfigDiskConfigArgs{
/// BootDiskSizeGb: pulumi.Int(35),
/// },
/// },
/// MetastoreConfig: &dataproc.ClusterClusterConfigMetastoreConfigArgs{
/// DataprocMetastoreService: ms.Name,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = dataproc.NewBatch(ctx, "example_batch_spark", &dataproc.BatchArgs{
/// BatchId:  pulumi.String("dataproc-batch"),
/// Location: pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "batch_test": pulumi.String("terraform"),
/// },
/// RuntimeConfig: &dataproc.BatchRuntimeConfigArgs{
/// Properties: pulumi.StringMap{
/// "spark.dynamicAllocation.enabled": pulumi.String("false"),
/// "spark.executor.instances":        pulumi.String("2"),
/// },
/// Version: pulumi.String("2.2"),
/// },
/// EnvironmentConfig: &dataproc.BatchEnvironmentConfigArgs{
/// ExecutionConfig: &dataproc.BatchEnvironmentConfigExecutionConfigArgs{
/// Ttl: pulumi.String("3600s"),
/// NetworkTags: pulumi.StringArray{
/// pulumi.String("tag1"),
/// },
/// KmsKey:         pulumi.String("example-key"),
/// NetworkUri:     pulumi.String("default"),
/// ServiceAccount: pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// StagingBucket:  bucket.Name,
/// AuthenticationConfig: &dataproc.BatchEnvironmentConfigExecutionConfigAuthenticationConfigArgs{
/// UserWorkloadAuthenticationType: pulumi.String("SERVICE_ACCOUNT"),
/// },
/// },
/// PeripheralsConfig: &dataproc.BatchEnvironmentConfigPeripheralsConfigArgs{
/// MetastoreService: ms.Name,
/// SparkHistoryServerConfig: &dataproc.BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfigArgs{
/// DataprocCluster: basic.ID(),
/// },
/// },
/// },
/// SparkBatch: &dataproc.BatchSparkBatchArgs{
/// MainClass: pulumi.String("org.apache.spark.examples.SparkPi"),
/// Args: pulumi.StringArray{
/// pulumi.String("10"),
/// },
/// JarFileUris: pulumi.StringArray{
/// pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// cryptoKeyMember1,
/// }))
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceMaintenanceWindowArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigEndpointConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigDiskConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.Batch;
/// import com.pulumi.gcp.dataproc.BatchArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigExecutionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigExecutionConfigAuthenticationConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigPeripheralsConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchSparkBatchArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
/// .build());
///
/// var bucket = new Bucket("bucket", BucketArgs.builder()
/// .uniformBucketLevelAccess(true)
/// .name("dataproc-bucket")
/// .location("US")
/// .forceDestroy(true)
/// .build());
///
/// var cryptoKeyMember1 = new CryptoKeyIAMMember("cryptoKeyMember1", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId("example-key")
/// .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
/// .member(String.format("serviceAccount:service-%s@dataproc-accounts.iam.gserviceaccount.com", project.number()))
/// .build());
///
/// var ms = new MetastoreService("ms", MetastoreServiceArgs.builder()
/// .serviceId("dataproc-batch")
/// .location("us-central1")
/// .port(9080)
/// .tier("DEVELOPER")
/// .maintenanceWindow(MetastoreServiceMaintenanceWindowArgs.builder()
/// .hourOfDay(2)
/// .dayOfWeek("SUNDAY")
/// .build())
/// .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
/// .version("3.1.2")
/// .build())
/// .build());
///
/// var basic = new Cluster("basic", ClusterArgs.builder()
/// .name("dataproc-batch")
/// .region("us-central1")
/// .clusterConfig(ClusterClusterConfigArgs.builder()
/// .softwareConfig(ClusterClusterConfigSoftwareConfigArgs.builder()
/// .overrideProperties(Map.ofEntries(
/// Map.entry("dataproc:dataproc.allow.zero.workers", "true"),
/// Map.entry("spark:spark.history.fs.logDirectory", bucket.name().applyValue(_name -> String.format("gs://%s/*/spark-job-history", _name)))
/// ))
/// .build())
/// .endpointConfig(ClusterClusterConfigEndpointConfigArgs.builder()
/// .enableHttpPortAccess(true)
/// .build())
/// .masterConfig(ClusterClusterConfigMasterConfigArgs.builder()
/// .numInstances(1)
/// .machineType("e2-standard-2")
/// .diskConfig(ClusterClusterConfigMasterConfigDiskConfigArgs.builder()
/// .bootDiskSizeGb(35)
/// .build())
/// .build())
/// .metastoreConfig(ClusterClusterConfigMetastoreConfigArgs.builder()
/// .dataprocMetastoreService(ms.name())
/// .build())
/// .build())
/// .build());
///
/// var exampleBatchSpark = new Batch("exampleBatchSpark", BatchArgs.builder()
/// .batchId("dataproc-batch")
/// .location("us-central1")
/// .labels(Map.of("batch_test", "terraform"))
/// .runtimeConfig(BatchRuntimeConfigArgs.builder()
/// .properties(Map.ofEntries(
/// Map.entry("spark.dynamicAllocation.enabled", "false"),
/// Map.entry("spark.executor.instances", "2")
/// ))
/// .version("2.2")
/// .build())
/// .environmentConfig(BatchEnvironmentConfigArgs.builder()
/// .executionConfig(BatchEnvironmentConfigExecutionConfigArgs.builder()
/// .ttl("3600s")
/// .networkTags("tag1")
/// .kmsKey("example-key")
/// .networkUri("default")
/// .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
/// .stagingBucket(bucket.name())
/// .authenticationConfig(BatchEnvironmentConfigExecutionConfigAuthenticationConfigArgs.builder()
/// .userWorkloadAuthenticationType("SERVICE_ACCOUNT")
/// .build())
/// .build())
/// .peripheralsConfig(BatchEnvironmentConfigPeripheralsConfigArgs.builder()
/// .metastoreService(ms.name())
/// .sparkHistoryServerConfig(BatchEnvironmentConfigPeripheralsConfigSparkHistoryServerConfigArgs.builder()
/// .dataprocCluster(basic.id())
/// .build())
/// .build())
/// .build())
/// .sparkBatch(BatchSparkBatchArgs.builder()
/// .mainClass("org.apache.spark.examples.SparkPi")
/// .args("10")
/// .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(cryptoKeyMember1)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleBatchSpark:
/// type: gcp:dataproc:Batch
/// name: example_batch_spark
/// properties:
/// batchId: dataproc-batch
/// location: us-central1
/// labels:
/// batch_test: terraform
/// runtimeConfig:
/// properties:
/// spark.dynamicAllocation.enabled: 'false'
/// spark.executor.instances: '2'
/// version: '2.2'
/// environmentConfig:
/// executionConfig:
/// ttl: 3600s
/// networkTags:
/// - tag1
/// kmsKey: example-key
/// networkUri: default
/// serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
/// stagingBucket: ${bucket.name}
/// authenticationConfig:
/// userWorkloadAuthenticationType: SERVICE_ACCOUNT
/// peripheralsConfig:
/// metastoreService: ${ms.name}
/// sparkHistoryServerConfig:
/// dataprocCluster: ${basic.id}
/// sparkBatch:
/// mainClass: org.apache.spark.examples.SparkPi
/// args:
/// - '10'
/// jarFileUris:
/// - file:///usr/lib/spark/examples/jars/spark-examples.jar
/// options:
/// dependsOn:
/// - ${cryptoKeyMember1}
/// bucket:
/// type: gcp:storage:Bucket
/// properties:
/// uniformBucketLevelAccess: true
/// name: dataproc-bucket
/// location: US
/// forceDestroy: true
/// cryptoKeyMember1:
/// type: gcp:kms:CryptoKeyIAMMember
/// name: crypto_key_member_1
/// properties:
/// cryptoKeyId: example-key
/// role: roles/cloudkms.cryptoKeyEncrypterDecrypter
/// member: serviceAccount:service-${project.number}@dataproc-accounts.iam.gserviceaccount.com
/// basic:
/// type: gcp:dataproc:Cluster
/// properties:
/// name: dataproc-batch
/// region: us-central1
/// clusterConfig:
/// softwareConfig:
/// overrideProperties:
/// dataproc:dataproc.allow.zero.workers: 'true'
/// spark:spark.history.fs.logDirectory: gs://${bucket.name}/*/spark-job-history
/// endpointConfig:
/// enableHttpPortAccess: true
/// masterConfig:
/// numInstances: 1
/// machineType: e2-standard-2
/// diskConfig:
/// bootDiskSizeGb: 35
/// metastoreConfig:
/// dataprocMetastoreService: ${ms.name}
/// ms:
/// type: gcp:dataproc:MetastoreService
/// properties:
/// serviceId: dataproc-batch
/// location: us-central1
/// port: 9080
/// tier: DEVELOPER
/// maintenanceWindow:
/// hourOfDay: 2
/// dayOfWeek: SUNDAY
/// hiveMetastoreConfig:
/// version: 3.1.2
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// gcsAccount:
/// fn::invoke:
/// function: gcp:storage:getProjectServiceAccount
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Batch Sparksql
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleBatchSparsql = new gcp.dataproc.Batch("example_batch_sparsql", {
/// batchId: "tf-test-batch_9394",
/// location: "us-central1",
/// runtimeConfig: {
/// properties: {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// },
/// environmentConfig: {
/// executionConfig: {
/// subnetworkUri: "default",
/// },
/// },
/// sparkSqlBatch: {
/// queryFileUri: "gs://dataproc-examples/spark-sql/natality/cigarette_correlations.sql",
/// jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// queryVariables: {
/// name: "value",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_batch_sparsql = gcp.dataproc.Batch("example_batch_sparsql",
/// batch_id="tf-test-batch_9394",
/// location="us-central1",
/// runtime_config={
/// "properties": {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// },
/// environment_config={
/// "execution_config": {
/// "subnetwork_uri": "default",
/// },
/// },
/// spark_sql_batch={
/// "query_file_uri": "gs://dataproc-examples/spark-sql/natality/cigarette_correlations.sql",
/// "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// "query_variables": {
/// "name": "value",
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleBatchSparsql = new Gcp.Dataproc.Batch("example_batch_sparsql", new()
/// {
/// BatchId = "tf-test-batch_9394",
/// Location = "us-central1",
/// RuntimeConfig = new Gcp.Dataproc.Inputs.BatchRuntimeConfigArgs
/// {
/// Properties =
/// {
/// { "spark.dynamicAllocation.enabled", "false" },
/// { "spark.executor.instances", "2" },
/// },
/// },
/// EnvironmentConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigArgs
/// {
/// ExecutionConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigExecutionConfigArgs
/// {
/// SubnetworkUri = "default",
/// },
/// },
/// SparkSqlBatch = new Gcp.Dataproc.Inputs.BatchSparkSqlBatchArgs
/// {
/// QueryFileUri = "gs://dataproc-examples/spark-sql/natality/cigarette_correlations.sql",
/// JarFileUris = new[]
/// {
/// "file:///usr/lib/spark/examples/jars/spark-examples.jar",
/// },
/// QueryVariables =
/// {
/// { "name", "value" },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewBatch(ctx, "example_batch_sparsql", &dataproc.BatchArgs{
/// BatchId:  pulumi.String("tf-test-batch_9394"),
/// Location: pulumi.String("us-central1"),
/// RuntimeConfig: &dataproc.BatchRuntimeConfigArgs{
/// Properties: pulumi.StringMap{
/// "spark.dynamicAllocation.enabled": pulumi.String("false"),
/// "spark.executor.instances":        pulumi.String("2"),
/// },
/// },
/// EnvironmentConfig: &dataproc.BatchEnvironmentConfigArgs{
/// ExecutionConfig: &dataproc.BatchEnvironmentConfigExecutionConfigArgs{
/// SubnetworkUri: pulumi.String("default"),
/// },
/// },
/// SparkSqlBatch: &dataproc.BatchSparkSqlBatchArgs{
/// QueryFileUri: pulumi.String("gs://dataproc-examples/spark-sql/natality/cigarette_correlations.sql"),
/// JarFileUris: pulumi.StringArray{
/// pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// },
/// QueryVariables: pulumi.StringMap{
/// "name": pulumi.String("value"),
/// },
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
/// import com.pulumi.gcp.dataproc.Batch;
/// import com.pulumi.gcp.dataproc.BatchArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigExecutionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchSparkSqlBatchArgs;
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
/// var exampleBatchSparsql = new Batch("exampleBatchSparsql", BatchArgs.builder()
/// .batchId("tf-test-batch_9394")
/// .location("us-central1")
/// .runtimeConfig(BatchRuntimeConfigArgs.builder()
/// .properties(Map.ofEntries(
/// Map.entry("spark.dynamicAllocation.enabled", "false"),
/// Map.entry("spark.executor.instances", "2")
/// ))
/// .build())
/// .environmentConfig(BatchEnvironmentConfigArgs.builder()
/// .executionConfig(BatchEnvironmentConfigExecutionConfigArgs.builder()
/// .subnetworkUri("default")
/// .build())
/// .build())
/// .sparkSqlBatch(BatchSparkSqlBatchArgs.builder()
/// .queryFileUri("gs://dataproc-examples/spark-sql/natality/cigarette_correlations.sql")
/// .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
/// .queryVariables(Map.of("name", "value"))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleBatchSparsql:
/// type: gcp:dataproc:Batch
/// name: example_batch_sparsql
/// properties:
/// batchId: tf-test-batch_9394
/// location: us-central1
/// runtimeConfig:
/// properties:
/// spark.dynamicAllocation.enabled: 'false'
/// spark.executor.instances: '2'
/// environmentConfig:
/// executionConfig:
/// subnetworkUri: default
/// sparkSqlBatch:
/// queryFileUri: gs://dataproc-examples/spark-sql/natality/cigarette_correlations.sql
/// jarFileUris:
/// - file:///usr/lib/spark/examples/jars/spark-examples.jar
/// queryVariables:
/// name: value
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Batch Pyspark
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleBatchPyspark = new gcp.dataproc.Batch("example_batch_pyspark", {
/// batchId: "tf-test-batch_11380",
/// location: "us-central1",
/// runtimeConfig: {
/// properties: {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// },
/// environmentConfig: {
/// executionConfig: {
/// subnetworkUri: "default",
/// },
/// },
/// pysparkBatch: {
/// mainPythonFileUri: "https://storage.googleapis.com/terraform-batches/test_util.py",
/// args: ["10"],
/// jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// pythonFileUris: ["gs://dataproc-examples/pyspark/hello-world/hello-world.py"],
/// archiveUris: [
/// "https://storage.googleapis.com/terraform-batches/animals.txt.tar.gz#unpacked",
/// "https://storage.googleapis.com/terraform-batches/animals.txt.jar",
/// "https://storage.googleapis.com/terraform-batches/animals.txt",
/// ],
/// fileUris: ["https://storage.googleapis.com/terraform-batches/people.txt"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_batch_pyspark = gcp.dataproc.Batch("example_batch_pyspark",
/// batch_id="tf-test-batch_11380",
/// location="us-central1",
/// runtime_config={
/// "properties": {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// },
/// environment_config={
/// "execution_config": {
/// "subnetwork_uri": "default",
/// },
/// },
/// pyspark_batch={
/// "main_python_file_uri": "https://storage.googleapis.com/terraform-batches/test_util.py",
/// "args": ["10"],
/// "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// "python_file_uris": ["gs://dataproc-examples/pyspark/hello-world/hello-world.py"],
/// "archive_uris": [
/// "https://storage.googleapis.com/terraform-batches/animals.txt.tar.gz#unpacked",
/// "https://storage.googleapis.com/terraform-batches/animals.txt.jar",
/// "https://storage.googleapis.com/terraform-batches/animals.txt",
/// ],
/// "file_uris": ["https://storage.googleapis.com/terraform-batches/people.txt"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleBatchPyspark = new Gcp.Dataproc.Batch("example_batch_pyspark", new()
/// {
/// BatchId = "tf-test-batch_11380",
/// Location = "us-central1",
/// RuntimeConfig = new Gcp.Dataproc.Inputs.BatchRuntimeConfigArgs
/// {
/// Properties =
/// {
/// { "spark.dynamicAllocation.enabled", "false" },
/// { "spark.executor.instances", "2" },
/// },
/// },
/// EnvironmentConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigArgs
/// {
/// ExecutionConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigExecutionConfigArgs
/// {
/// SubnetworkUri = "default",
/// },
/// },
/// PysparkBatch = new Gcp.Dataproc.Inputs.BatchPysparkBatchArgs
/// {
/// MainPythonFileUri = "https://storage.googleapis.com/terraform-batches/test_util.py",
/// Args = new[]
/// {
/// "10",
/// },
/// JarFileUris = new[]
/// {
/// "file:///usr/lib/spark/examples/jars/spark-examples.jar",
/// },
/// PythonFileUris = new[]
/// {
/// "gs://dataproc-examples/pyspark/hello-world/hello-world.py",
/// },
/// ArchiveUris = new[]
/// {
/// "https://storage.googleapis.com/terraform-batches/animals.txt.tar.gz#unpacked",
/// "https://storage.googleapis.com/terraform-batches/animals.txt.jar",
/// "https://storage.googleapis.com/terraform-batches/animals.txt",
/// },
/// FileUris = new[]
/// {
/// "https://storage.googleapis.com/terraform-batches/people.txt",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewBatch(ctx, "example_batch_pyspark", &dataproc.BatchArgs{
/// BatchId:  pulumi.String("tf-test-batch_11380"),
/// Location: pulumi.String("us-central1"),
/// RuntimeConfig: &dataproc.BatchRuntimeConfigArgs{
/// Properties: pulumi.StringMap{
/// "spark.dynamicAllocation.enabled": pulumi.String("false"),
/// "spark.executor.instances":        pulumi.String("2"),
/// },
/// },
/// EnvironmentConfig: &dataproc.BatchEnvironmentConfigArgs{
/// ExecutionConfig: &dataproc.BatchEnvironmentConfigExecutionConfigArgs{
/// SubnetworkUri: pulumi.String("default"),
/// },
/// },
/// PysparkBatch: &dataproc.BatchPysparkBatchArgs{
/// MainPythonFileUri: pulumi.String("https://storage.googleapis.com/terraform-batches/test_util.py"),
/// Args: pulumi.StringArray{
/// pulumi.String("10"),
/// },
/// JarFileUris: pulumi.StringArray{
/// pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// },
/// PythonFileUris: pulumi.StringArray{
/// pulumi.String("gs://dataproc-examples/pyspark/hello-world/hello-world.py"),
/// },
/// ArchiveUris: pulumi.StringArray{
/// pulumi.String("https://storage.googleapis.com/terraform-batches/animals.txt.tar.gz#unpacked"),
/// pulumi.String("https://storage.googleapis.com/terraform-batches/animals.txt.jar"),
/// pulumi.String("https://storage.googleapis.com/terraform-batches/animals.txt"),
/// },
/// FileUris: pulumi.StringArray{
/// pulumi.String("https://storage.googleapis.com/terraform-batches/people.txt"),
/// },
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
/// import com.pulumi.gcp.dataproc.Batch;
/// import com.pulumi.gcp.dataproc.BatchArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigExecutionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchPysparkBatchArgs;
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
/// var exampleBatchPyspark = new Batch("exampleBatchPyspark", BatchArgs.builder()
/// .batchId("tf-test-batch_11380")
/// .location("us-central1")
/// .runtimeConfig(BatchRuntimeConfigArgs.builder()
/// .properties(Map.ofEntries(
/// Map.entry("spark.dynamicAllocation.enabled", "false"),
/// Map.entry("spark.executor.instances", "2")
/// ))
/// .build())
/// .environmentConfig(BatchEnvironmentConfigArgs.builder()
/// .executionConfig(BatchEnvironmentConfigExecutionConfigArgs.builder()
/// .subnetworkUri("default")
/// .build())
/// .build())
/// .pysparkBatch(BatchPysparkBatchArgs.builder()
/// .mainPythonFileUri("https://storage.googleapis.com/terraform-batches/test_util.py")
/// .args("10")
/// .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
/// .pythonFileUris("gs://dataproc-examples/pyspark/hello-world/hello-world.py")
/// .archiveUris(
/// "https://storage.googleapis.com/terraform-batches/animals.txt.tar.gz#unpacked",
/// "https://storage.googleapis.com/terraform-batches/animals.txt.jar",
/// "https://storage.googleapis.com/terraform-batches/animals.txt")
/// .fileUris("https://storage.googleapis.com/terraform-batches/people.txt")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleBatchPyspark:
/// type: gcp:dataproc:Batch
/// name: example_batch_pyspark
/// properties:
/// batchId: tf-test-batch_11380
/// location: us-central1
/// runtimeConfig:
/// properties:
/// spark.dynamicAllocation.enabled: 'false'
/// spark.executor.instances: '2'
/// environmentConfig:
/// executionConfig:
/// subnetworkUri: default
/// pysparkBatch:
/// mainPythonFileUri: https://storage.googleapis.com/terraform-batches/test_util.py
/// args:
/// - '10'
/// jarFileUris:
/// - file:///usr/lib/spark/examples/jars/spark-examples.jar
/// pythonFileUris:
/// - gs://dataproc-examples/pyspark/hello-world/hello-world.py
/// archiveUris:
/// - https://storage.googleapis.com/terraform-batches/animals.txt.tar.gz#unpacked
/// - https://storage.googleapis.com/terraform-batches/animals.txt.jar
/// - https://storage.googleapis.com/terraform-batches/animals.txt
/// fileUris:
/// - https://storage.googleapis.com/terraform-batches/people.txt
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Batch Sparkr
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleBatchSparkr = new gcp.dataproc.Batch("example_batch_sparkr", {
/// batchId: "tf-test-batch_35305",
/// location: "us-central1",
/// labels: {
/// batch_test: "terraform",
/// },
/// runtimeConfig: {
/// properties: {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// },
/// environmentConfig: {
/// executionConfig: {
/// subnetworkUri: "default",
/// ttl: "3600s",
/// networkTags: ["tag1"],
/// },
/// },
/// sparkRBatch: {
/// mainRFileUri: "https://storage.googleapis.com/terraform-batches/spark-r-flights.r",
/// args: ["https://storage.googleapis.com/terraform-batches/flights.csv"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_batch_sparkr = gcp.dataproc.Batch("example_batch_sparkr",
/// batch_id="tf-test-batch_35305",
/// location="us-central1",
/// labels={
/// "batch_test": "terraform",
/// },
/// runtime_config={
/// "properties": {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// },
/// environment_config={
/// "execution_config": {
/// "subnetwork_uri": "default",
/// "ttl": "3600s",
/// "network_tags": ["tag1"],
/// },
/// },
/// spark_r_batch={
/// "main_r_file_uri": "https://storage.googleapis.com/terraform-batches/spark-r-flights.r",
/// "args": ["https://storage.googleapis.com/terraform-batches/flights.csv"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleBatchSparkr = new Gcp.Dataproc.Batch("example_batch_sparkr", new()
/// {
/// BatchId = "tf-test-batch_35305",
/// Location = "us-central1",
/// Labels =
/// {
/// { "batch_test", "terraform" },
/// },
/// RuntimeConfig = new Gcp.Dataproc.Inputs.BatchRuntimeConfigArgs
/// {
/// Properties =
/// {
/// { "spark.dynamicAllocation.enabled", "false" },
/// { "spark.executor.instances", "2" },
/// },
/// },
/// EnvironmentConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigArgs
/// {
/// ExecutionConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigExecutionConfigArgs
/// {
/// SubnetworkUri = "default",
/// Ttl = "3600s",
/// NetworkTags = new[]
/// {
/// "tag1",
/// },
/// },
/// },
/// SparkRBatch = new Gcp.Dataproc.Inputs.BatchSparkRBatchArgs
/// {
/// MainRFileUri = "https://storage.googleapis.com/terraform-batches/spark-r-flights.r",
/// Args = new[]
/// {
/// "https://storage.googleapis.com/terraform-batches/flights.csv",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewBatch(ctx, "example_batch_sparkr", &dataproc.BatchArgs{
/// BatchId:  pulumi.String("tf-test-batch_35305"),
/// Location: pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "batch_test": pulumi.String("terraform"),
/// },
/// RuntimeConfig: &dataproc.BatchRuntimeConfigArgs{
/// Properties: pulumi.StringMap{
/// "spark.dynamicAllocation.enabled": pulumi.String("false"),
/// "spark.executor.instances":        pulumi.String("2"),
/// },
/// },
/// EnvironmentConfig: &dataproc.BatchEnvironmentConfigArgs{
/// ExecutionConfig: &dataproc.BatchEnvironmentConfigExecutionConfigArgs{
/// SubnetworkUri: pulumi.String("default"),
/// Ttl:           pulumi.String("3600s"),
/// NetworkTags: pulumi.StringArray{
/// pulumi.String("tag1"),
/// },
/// },
/// },
/// SparkRBatch: &dataproc.BatchSparkRBatchArgs{
/// MainRFileUri: pulumi.String("https://storage.googleapis.com/terraform-batches/spark-r-flights.r"),
/// Args: pulumi.StringArray{
/// pulumi.String("https://storage.googleapis.com/terraform-batches/flights.csv"),
/// },
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
/// import com.pulumi.gcp.dataproc.Batch;
/// import com.pulumi.gcp.dataproc.BatchArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigExecutionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchSparkRBatchArgs;
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
/// var exampleBatchSparkr = new Batch("exampleBatchSparkr", BatchArgs.builder()
/// .batchId("tf-test-batch_35305")
/// .location("us-central1")
/// .labels(Map.of("batch_test", "terraform"))
/// .runtimeConfig(BatchRuntimeConfigArgs.builder()
/// .properties(Map.ofEntries(
/// Map.entry("spark.dynamicAllocation.enabled", "false"),
/// Map.entry("spark.executor.instances", "2")
/// ))
/// .build())
/// .environmentConfig(BatchEnvironmentConfigArgs.builder()
/// .executionConfig(BatchEnvironmentConfigExecutionConfigArgs.builder()
/// .subnetworkUri("default")
/// .ttl("3600s")
/// .networkTags("tag1")
/// .build())
/// .build())
/// .sparkRBatch(BatchSparkRBatchArgs.builder()
/// .mainRFileUri("https://storage.googleapis.com/terraform-batches/spark-r-flights.r")
/// .args("https://storage.googleapis.com/terraform-batches/flights.csv")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleBatchSparkr:
/// type: gcp:dataproc:Batch
/// name: example_batch_sparkr
/// properties:
/// batchId: tf-test-batch_35305
/// location: us-central1
/// labels:
/// batch_test: terraform
/// runtimeConfig:
/// properties:
/// spark.dynamicAllocation.enabled: 'false'
/// spark.executor.instances: '2'
/// environmentConfig:
/// executionConfig:
/// subnetworkUri: default
/// ttl: 3600s
/// networkTags:
/// - tag1
/// sparkRBatch:
/// mainRFileUri: https://storage.googleapis.com/terraform-batches/spark-r-flights.r
/// args:
/// - https://storage.googleapis.com/terraform-batches/flights.csv
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Dataproc Batch Autotuning
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleBatchAutotuning = new gcp.dataproc.Batch("example_batch_autotuning", {
/// batchId: "tf-test-batch_62793",
/// location: "us-central1",
/// labels: {
/// batch_test: "terraform",
/// },
/// runtimeConfig: {
/// version: "2.2",
/// properties: {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// cohort: "tf-dataproc-batch-example",
/// autotuningConfig: {
/// scenarios: [
/// "SCALING",
/// "MEMORY",
/// ],
/// },
/// },
/// environmentConfig: {
/// executionConfig: {
/// subnetworkUri: "default",
/// ttl: "3600s",
/// },
/// },
/// sparkBatch: {
/// mainClass: "org.apache.spark.examples.SparkPi",
/// args: ["10"],
/// jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_batch_autotuning = gcp.dataproc.Batch("example_batch_autotuning",
/// batch_id="tf-test-batch_62793",
/// location="us-central1",
/// labels={
/// "batch_test": "terraform",
/// },
/// runtime_config={
/// "version": "2.2",
/// "properties": {
/// "spark.dynamicAllocation.enabled": "false",
/// "spark.executor.instances": "2",
/// },
/// "cohort": "tf-dataproc-batch-example",
/// "autotuning_config": {
/// "scenarios": [
/// "SCALING",
/// "MEMORY",
/// ],
/// },
/// },
/// environment_config={
/// "execution_config": {
/// "subnetwork_uri": "default",
/// "ttl": "3600s",
/// },
/// },
/// spark_batch={
/// "main_class": "org.apache.spark.examples.SparkPi",
/// "args": ["10"],
/// "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleBatchAutotuning = new Gcp.Dataproc.Batch("example_batch_autotuning", new()
/// {
/// BatchId = "tf-test-batch_62793",
/// Location = "us-central1",
/// Labels =
/// {
/// { "batch_test", "terraform" },
/// },
/// RuntimeConfig = new Gcp.Dataproc.Inputs.BatchRuntimeConfigArgs
/// {
/// Version = "2.2",
/// Properties =
/// {
/// { "spark.dynamicAllocation.enabled", "false" },
/// { "spark.executor.instances", "2" },
/// },
/// Cohort = "tf-dataproc-batch-example",
/// AutotuningConfig = new Gcp.Dataproc.Inputs.BatchRuntimeConfigAutotuningConfigArgs
/// {
/// Scenarios = new[]
/// {
/// "SCALING",
/// "MEMORY",
/// },
/// },
/// },
/// EnvironmentConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigArgs
/// {
/// ExecutionConfig = new Gcp.Dataproc.Inputs.BatchEnvironmentConfigExecutionConfigArgs
/// {
/// SubnetworkUri = "default",
/// Ttl = "3600s",
/// },
/// },
/// SparkBatch = new Gcp.Dataproc.Inputs.BatchSparkBatchArgs
/// {
/// MainClass = "org.apache.spark.examples.SparkPi",
/// Args = new[]
/// {
/// "10",
/// },
/// JarFileUris = new[]
/// {
/// "file:///usr/lib/spark/examples/jars/spark-examples.jar",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.NewBatch(ctx, "example_batch_autotuning", &dataproc.BatchArgs{
/// BatchId:  pulumi.String("tf-test-batch_62793"),
/// Location: pulumi.String("us-central1"),
/// Labels: pulumi.StringMap{
/// "batch_test": pulumi.String("terraform"),
/// },
/// RuntimeConfig: &dataproc.BatchRuntimeConfigArgs{
/// Version: pulumi.String("2.2"),
/// Properties: pulumi.StringMap{
/// "spark.dynamicAllocation.enabled": pulumi.String("false"),
/// "spark.executor.instances":        pulumi.String("2"),
/// },
/// Cohort: pulumi.String("tf-dataproc-batch-example"),
/// AutotuningConfig: &dataproc.BatchRuntimeConfigAutotuningConfigArgs{
/// Scenarios: pulumi.StringArray{
/// pulumi.String("SCALING"),
/// pulumi.String("MEMORY"),
/// },
/// },
/// },
/// EnvironmentConfig: &dataproc.BatchEnvironmentConfigArgs{
/// ExecutionConfig: &dataproc.BatchEnvironmentConfigExecutionConfigArgs{
/// SubnetworkUri: pulumi.String("default"),
/// Ttl:           pulumi.String("3600s"),
/// },
/// },
/// SparkBatch: &dataproc.BatchSparkBatchArgs{
/// MainClass: pulumi.String("org.apache.spark.examples.SparkPi"),
/// Args: pulumi.StringArray{
/// pulumi.String("10"),
/// },
/// JarFileUris: pulumi.StringArray{
/// pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// },
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
/// import com.pulumi.gcp.dataproc.Batch;
/// import com.pulumi.gcp.dataproc.BatchArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchRuntimeConfigAutotuningConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchEnvironmentConfigExecutionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.BatchSparkBatchArgs;
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
/// var exampleBatchAutotuning = new Batch("exampleBatchAutotuning", BatchArgs.builder()
/// .batchId("tf-test-batch_62793")
/// .location("us-central1")
/// .labels(Map.of("batch_test", "terraform"))
/// .runtimeConfig(BatchRuntimeConfigArgs.builder()
/// .version("2.2")
/// .properties(Map.ofEntries(
/// Map.entry("spark.dynamicAllocation.enabled", "false"),
/// Map.entry("spark.executor.instances", "2")
/// ))
/// .cohort("tf-dataproc-batch-example")
/// .autotuningConfig(BatchRuntimeConfigAutotuningConfigArgs.builder()
/// .scenarios(
/// "SCALING",
/// "MEMORY")
/// .build())
/// .build())
/// .environmentConfig(BatchEnvironmentConfigArgs.builder()
/// .executionConfig(BatchEnvironmentConfigExecutionConfigArgs.builder()
/// .subnetworkUri("default")
/// .ttl("3600s")
/// .build())
/// .build())
/// .sparkBatch(BatchSparkBatchArgs.builder()
/// .mainClass("org.apache.spark.examples.SparkPi")
/// .args("10")
/// .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleBatchAutotuning:
/// type: gcp:dataproc:Batch
/// name: example_batch_autotuning
/// properties:
/// batchId: tf-test-batch_62793
/// location: us-central1
/// labels:
/// batch_test: terraform
/// runtimeConfig:
/// version: '2.2'
/// properties:
/// spark.dynamicAllocation.enabled: 'false'
/// spark.executor.instances: '2'
/// cohort: tf-dataproc-batch-example
/// autotuningConfig:
/// scenarios:
/// - SCALING
/// - MEMORY
/// environmentConfig:
/// executionConfig:
/// subnetworkUri: default
/// ttl: 3600s
/// sparkBatch:
/// mainClass: org.apache.spark.examples.SparkPi
/// args:
/// - '10'
/// jarFileUris:
/// - file:///usr/lib/spark/examples/jars/spark-examples.jar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Batch can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/batches/{{batch_id}}`
///
/// * `{{project}}/{{location}}/{{batch_id}}`
///
/// * `{{location}}/{{batch_id}}`
///
/// When using the `pulumi import` command, Batch can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/batch:Batch default projects/{{project}}/locations/{{location}}/batches/{{batch_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/batch:Batch default {{project}}/{{location}}/{{batch_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/batch:Batch default {{location}}/{{batch_id}}
/// ```
class Batch extends CustomResource {
  /// The ID to use for the batch, which will become the final component of the batch's resource name.
  /// This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  late final Output<String?> batchId;

  /// The time when the batch was created.
  late final Output<String> createTime;

  /// The email address of the user who created the batch.
  late final Output<String> creator;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Environment configuration for the batch execution.
  /// Structure is documented below.
  late final Output<BatchEnvironmentConfig?> environmentConfig;

  /// The labels to associate with this batch.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location in which the batch will be created in.
  late final Output<String?> location;

  /// The resource name of the batch.
  late final Output<String> name;

  /// The resource name of the operation associated with this batch.
  late final Output<String> operation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// PySpark batch config.
  /// Structure is documented below.
  late final Output<BatchPysparkBatch?> pysparkBatch;

  /// Runtime configuration for the batch execution.
  /// Structure is documented below.
  late final Output<BatchRuntimeConfig?> runtimeConfig;

  /// Runtime information about batch execution.
  /// Structure is documented below.
  late final Output<List<BatchRuntimeInfo>> runtimeInfos;

  /// Spark batch config.
  /// Structure is documented below.
  late final Output<BatchSparkBatch?> sparkBatch;

  /// SparkR batch config.
  /// Structure is documented below.
  late final Output<BatchSparkRBatch?> sparkRBatch;

  /// Spark SQL batch config.
  /// Structure is documented below.
  late final Output<BatchSparkSqlBatch?> sparkSqlBatch;

  /// (Output)
  /// The state of the batch at this point in history. For possible values, see the [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.batches#State).
  late final Output<String> state;

  /// Historical state information for the batch.
  /// Structure is documented below.
  late final Output<List<BatchStateHistory>> stateHistories;

  /// (Output)
  /// Details about the state at this point in history.
  late final Output<String> stateMessage;

  /// Batch state details, such as a failure description if the state is FAILED.
  late final Output<String> stateTime;

  /// A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  late final Output<String> uuid;

  Batch(
    String name, {
    BatchArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/batch:Batch',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.batchId = registerOutput<String?>('batchId');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.environmentConfig =
        registerOutput<BatchEnvironmentConfig?>('environmentConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<String>('operation');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pysparkBatch = registerOutput<BatchPysparkBatch?>('pysparkBatch');
    this.runtimeConfig = registerOutput<BatchRuntimeConfig?>('runtimeConfig');
    this.runtimeInfos = registerOutput<List<BatchRuntimeInfo>>('runtimeInfos');
    this.sparkBatch = registerOutput<BatchSparkBatch?>('sparkBatch');
    this.sparkRBatch = registerOutput<BatchSparkRBatch?>('sparkRBatch');
    this.sparkSqlBatch = registerOutput<BatchSparkSqlBatch?>('sparkSqlBatch');
    this.state = registerOutput<String>('state');
    this.stateHistories =
        registerOutput<List<BatchStateHistory>>('stateHistories');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.stateTime = registerOutput<String>('stateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
