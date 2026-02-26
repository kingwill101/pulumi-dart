import 'package:pulumi/pulumi.dart';
import '../job_hadoop_config/job_hadoop_config.dart';
import '../job_hive_config/job_hive_config.dart';
import '../job_pig_config/job_pig_config.dart';
import '../job_placement/job_placement.dart';
import '../job_presto_config/job_presto_config.dart';
import '../job_pyspark_config/job_pyspark_config.dart';
import '../job_reference/job_reference.dart';
import '../job_scheduling/job_scheduling.dart';
import '../job_spark_config/job_spark_config.dart';
import '../job_sparksql_config/job_sparksql_config.dart';
import '../job_status/job_status2.dart';
import 'job_args5.dart';

/// Manages a job resource within a Dataproc cluster within GCE. For more information see
/// [the official dataproc documentation](https://cloud.google.com/dataproc/).
///
/// !> **Note:** This resource does not support 'update' and changing any attributes will cause the resource to be recreated.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mycluster = new gcp.dataproc.Cluster("mycluster", {
/// name: "dproc-cluster-unique-name",
/// region: "us-central1",
/// });
/// // Submit an example spark job to a dataproc cluster
/// const spark = new gcp.dataproc.Job("spark", {
/// region: mycluster.region,
/// forceDelete: true,
/// placement: {
/// clusterName: mycluster.name,
/// },
/// sparkConfig: {
/// mainClass: "org.apache.spark.examples.SparkPi",
/// jarFileUris: ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// args: ["1000"],
/// properties: {
/// "spark.logConf": "true",
/// },
/// loggingConfig: {
/// driverLogLevels: {
/// root: "INFO",
/// },
/// },
/// },
/// });
/// // Submit an example pyspark job to a dataproc cluster
/// const pyspark = new gcp.dataproc.Job("pyspark", {
/// region: mycluster.region,
/// forceDelete: true,
/// placement: {
/// clusterName: mycluster.name,
/// },
/// pysparkConfig: {
/// mainPythonFileUri: "gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py",
/// properties: {
/// "spark.logConf": "true",
/// },
/// },
/// });
/// export const sparkStatus = spark.statuses.apply(statuses => statuses[0].state);
/// export const pysparkStatus = pyspark.statuses.apply(statuses => statuses[0].state);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// mycluster = gcp.dataproc.Cluster("mycluster",
/// name="dproc-cluster-unique-name",
/// region="us-central1")
/// # Submit an example spark job to a dataproc cluster
/// spark = gcp.dataproc.Job("spark",
/// region=mycluster.region,
/// force_delete=True,
/// placement={
/// "cluster_name": mycluster.name,
/// },
/// spark_config={
/// "main_class": "org.apache.spark.examples.SparkPi",
/// "jar_file_uris": ["file:///usr/lib/spark/examples/jars/spark-examples.jar"],
/// "args": ["1000"],
/// "properties": {
/// "spark.logConf": "true",
/// },
/// "logging_config": {
/// "driver_log_levels": {
/// "root": "INFO",
/// },
/// },
/// })
/// # Submit an example pyspark job to a dataproc cluster
/// pyspark = gcp.dataproc.Job("pyspark",
/// region=mycluster.region,
/// force_delete=True,
/// placement={
/// "cluster_name": mycluster.name,
/// },
/// pyspark_config={
/// "main_python_file_uri": "gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py",
/// "properties": {
/// "spark.logConf": "true",
/// },
/// })
/// pulumi.export("sparkStatus", spark.statuses[0].state)
/// pulumi.export("pysparkStatus", pyspark.statuses[0].state)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var mycluster = new Gcp.Dataproc.Cluster("mycluster", new()
/// {
/// Name = "dproc-cluster-unique-name",
/// Region = "us-central1",
/// });
///
/// // Submit an example spark job to a dataproc cluster
/// var spark = new Gcp.Dataproc.Job("spark", new()
/// {
/// Region = mycluster.Region,
/// ForceDelete = true,
/// Placement = new Gcp.Dataproc.Inputs.JobPlacementArgs
/// {
/// ClusterName = mycluster.Name,
/// },
/// SparkConfig = new Gcp.Dataproc.Inputs.JobSparkConfigArgs
/// {
/// MainClass = "org.apache.spark.examples.SparkPi",
/// JarFileUris = new[]
/// {
/// "file:///usr/lib/spark/examples/jars/spark-examples.jar",
/// },
/// Args = new[]
/// {
/// "1000",
/// },
/// Properties =
/// {
/// { "spark.logConf", "true" },
/// },
/// LoggingConfig = new Gcp.Dataproc.Inputs.JobSparkConfigLoggingConfigArgs
/// {
/// DriverLogLevels =
/// {
/// { "root", "INFO" },
/// },
/// },
/// },
/// });
///
/// // Submit an example pyspark job to a dataproc cluster
/// var pyspark = new Gcp.Dataproc.Job("pyspark", new()
/// {
/// Region = mycluster.Region,
/// ForceDelete = true,
/// Placement = new Gcp.Dataproc.Inputs.JobPlacementArgs
/// {
/// ClusterName = mycluster.Name,
/// },
/// PysparkConfig = new Gcp.Dataproc.Inputs.JobPysparkConfigArgs
/// {
/// MainPythonFileUri = "gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py",
/// Properties =
/// {
/// { "spark.logConf", "true" },
/// },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["sparkStatus"] = spark.Statuses.Apply(statuses => statuses[0].State),
/// ["pysparkStatus"] = pyspark.Statuses.Apply(statuses => statuses[0].State),
/// };
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
/// mycluster, err := dataproc.NewCluster(ctx, "mycluster", &dataproc.ClusterArgs{
/// Name:   pulumi.String("dproc-cluster-unique-name"),
/// Region: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// // Submit an example spark job to a dataproc cluster
/// spark, err := dataproc.NewJob(ctx, "spark", &dataproc.JobArgs{
/// Region:      mycluster.Region,
/// ForceDelete: pulumi.Bool(true),
/// Placement: &dataproc.JobPlacementArgs{
/// ClusterName: mycluster.Name,
/// },
/// SparkConfig: &dataproc.JobSparkConfigArgs{
/// MainClass: pulumi.String("org.apache.spark.examples.SparkPi"),
/// JarFileUris: pulumi.StringArray{
/// pulumi.String("file:///usr/lib/spark/examples/jars/spark-examples.jar"),
/// },
/// Args: pulumi.StringArray{
/// pulumi.String("1000"),
/// },
/// Properties: pulumi.StringMap{
/// "spark.logConf": pulumi.String("true"),
/// },
/// LoggingConfig: &dataproc.JobSparkConfigLoggingConfigArgs{
/// DriverLogLevels: pulumi.StringMap{
/// "root": pulumi.String("INFO"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // Submit an example pyspark job to a dataproc cluster
/// pyspark, err := dataproc.NewJob(ctx, "pyspark", &dataproc.JobArgs{
/// Region:      mycluster.Region,
/// ForceDelete: pulumi.Bool(true),
/// Placement: &dataproc.JobPlacementArgs{
/// ClusterName: mycluster.Name,
/// },
/// PysparkConfig: &dataproc.JobPysparkConfigArgs{
/// MainPythonFileUri: pulumi.String("gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py"),
/// Properties: pulumi.StringMap{
/// "spark.logConf": pulumi.String("true"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// ctx.Export("sparkStatus", spark.Statuses.ApplyT(func(statuses []dataproc.JobStatus) (*string, error) {
/// return &statuses[0].State, nil
/// }).(pulumi.StringPtrOutput))
/// ctx.Export("pysparkStatus", pyspark.Statuses.ApplyT(func(statuses []dataproc.JobStatus) (*string, error) {
/// return &statuses[0].State, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
/// import com.pulumi.gcp.dataproc.Job;
/// import com.pulumi.gcp.dataproc.JobArgs;
/// import com.pulumi.gcp.dataproc.inputs.JobPlacementArgs;
/// import com.pulumi.gcp.dataproc.inputs.JobSparkConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.JobSparkConfigLoggingConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.JobPysparkConfigArgs;
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
/// var mycluster = new Cluster("mycluster", ClusterArgs.builder()
/// .name("dproc-cluster-unique-name")
/// .region("us-central1")
/// .build());
///
/// // Submit an example spark job to a dataproc cluster
/// var spark = new Job("spark", JobArgs.builder()
/// .region(mycluster.region())
/// .forceDelete(true)
/// .placement(JobPlacementArgs.builder()
/// .clusterName(mycluster.name())
/// .build())
/// .sparkConfig(JobSparkConfigArgs.builder()
/// .mainClass("org.apache.spark.examples.SparkPi")
/// .jarFileUris("file:///usr/lib/spark/examples/jars/spark-examples.jar")
/// .args("1000")
/// .properties(Map.of("spark.logConf", "true"))
/// .loggingConfig(JobSparkConfigLoggingConfigArgs.builder()
/// .driverLogLevels(Map.of("root", "INFO"))
/// .build())
/// .build())
/// .build());
///
/// // Submit an example pyspark job to a dataproc cluster
/// var pyspark = new Job("pyspark", JobArgs.builder()
/// .region(mycluster.region())
/// .forceDelete(true)
/// .placement(JobPlacementArgs.builder()
/// .clusterName(mycluster.name())
/// .build())
/// .pysparkConfig(JobPysparkConfigArgs.builder()
/// .mainPythonFileUri("gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py")
/// .properties(Map.of("spark.logConf", "true"))
/// .build())
/// .build());
///
/// ctx.export("sparkStatus", spark.statuses().applyValue(_statuses -> _statuses[0].state()));
/// ctx.export("pysparkStatus", pyspark.statuses().applyValue(_statuses -> _statuses[0].state()));
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// mycluster:
/// type: gcp:dataproc:Cluster
/// properties:
/// name: dproc-cluster-unique-name
/// region: us-central1
/// # Submit an example spark job to a dataproc cluster
/// spark:
/// type: gcp:dataproc:Job
/// properties:
/// region: ${mycluster.region}
/// forceDelete: true
/// placement:
/// clusterName: ${mycluster.name}
/// sparkConfig:
/// mainClass: org.apache.spark.examples.SparkPi
/// jarFileUris:
/// - file:///usr/lib/spark/examples/jars/spark-examples.jar
/// args:
/// - '1000'
/// properties:
/// spark.logConf: 'true'
/// loggingConfig:
/// driverLogLevels:
/// root: INFO
/// # Submit an example pyspark job to a dataproc cluster
/// pyspark:
/// type: gcp:dataproc:Job
/// properties:
/// region: ${mycluster.region}
/// forceDelete: true
/// placement:
/// clusterName: ${mycluster.name}
/// pysparkConfig:
/// mainPythonFileUri: gs://dataproc-examples-2f10d78d114f6aaec76462e3c310f31f/src/pyspark/hello-world/hello-world.py
/// properties:
/// spark.logConf: 'true'
/// outputs:
/// # Check out current state of the jobs
/// sparkStatus: ${spark.statuses[0].state}
/// pysparkStatus: ${pyspark.statuses[0].state}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// This resource does not support import.
class Job5 extends CustomResource {
  /// If present, the location of miscellaneous control files which may be used as part of job setup and handling. If not present, control files may be placed in the same location as driver_output_uri.
  late final Output<String> driverControlsFilesUri;

  /// A URI pointing to the location of the stdout of the job's driver program.
  late final Output<String> driverOutputResourceUri;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  ///
  /// * `scheduling.max_failures_per_hour` - (Required) Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  ///
  /// * `scheduling.max_failures_total` - (Required) Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed.
  late final Output<Map<String, String>> effectiveLabels;

  /// By default, you can only delete inactive jobs within
  /// Dataproc. Setting this to true, and calling destroy, will ensure that the
  /// job is first cancelled before issuing the delete.
  late final Output<bool?> forceDelete;

  /// The config of Hadoop job
  late final Output<JobHadoopConfig?> hadoopConfig;

  /// The config of hive job
  late final Output<JobHiveConfig?> hiveConfig;

  /// The list of labels (key/value pairs) to add to the job.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The config of pag job.
  late final Output<JobPigConfig?> pigConfig;

  /// The config of job placement.
  late final Output<JobPlacement> placement;

  /// The config of presto job
  late final Output<JobPrestoConfig?> prestoConfig;

  /// The project in which the <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span> can be found and jobs
  /// subsequently run against. If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The config of pySpark job.
  late final Output<JobPysparkConfig?> pysparkConfig;

  /// The reference of the job
  late final Output<JobReference> reference;

  /// The Cloud Dataproc region. This essentially determines which clusters are available
  /// for this job to be submitted to. If not specified, defaults to <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  late final Output<String?> region;

  /// Optional. Job scheduling configuration.
  late final Output<JobScheduling?> scheduling;

  /// The config of the Spark job.
  late final Output<JobSparkConfig?> sparkConfig;

  /// The config of SparkSql job
  late final Output<JobSparksqlConfig?> sparksqlConfig;

  /// The status of the job.
  late final Output<List<JobStatus2>> statuses;

  Job5(
    String name, {
    JobArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/job:Job',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.driverControlsFilesUri = Output.createUnknown<String>();
    this.driverOutputResourceUri = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.forceDelete = Output.createUnknown<bool?>();
    this.hadoopConfig = Output.createUnknown<JobHadoopConfig?>();
    this.hiveConfig = Output.createUnknown<JobHiveConfig?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.pigConfig = Output.createUnknown<JobPigConfig?>();
    this.placement = Output.createUnknown<JobPlacement>();
    this.prestoConfig = Output.createUnknown<JobPrestoConfig?>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.pysparkConfig = Output.createUnknown<JobPysparkConfig?>();
    this.reference = Output.createUnknown<JobReference>();
    this.region = Output.createUnknown<String?>();
    this.scheduling = Output.createUnknown<JobScheduling?>();
    this.sparkConfig = Output.createUnknown<JobSparkConfig?>();
    this.sparksqlConfig = Output.createUnknown<JobSparksqlConfig?>();
    this.statuses = Output.createUnknown<List<JobStatus2>>();
  }
}
