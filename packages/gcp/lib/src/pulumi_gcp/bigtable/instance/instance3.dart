import 'package:pulumi/pulumi.dart';
import '../instance_cluster/instance_cluster.dart';
import 'instance_args3.dart';

/// ## subcategory: "Cloud Bigtable"
///
/// description: |-
/// Creates a Google Bigtable instance.
/// ---
///
/// #<span pulumi-lang-nodejs=" gcp.bigtable.Instance
/// " pulumi-lang-dotnet=" gcp.bigtable.Instance
/// " pulumi-lang-go=" bigtable.Instance
/// " pulumi-lang-python=" bigtable.Instance
/// " pulumi-lang-yaml=" gcp.bigtable.Instance
/// " pulumi-lang-java=" gcp.bigtable.Instance
/// "> gcp.bigtable.Instance
/// </span>
/// Creates a Google Bigtable instance. For more information see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.clusters)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigtable/docs)
///
/// ## Example Usage
///
/// ### Simple Instance
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const production_instance = new gcp.bigtable.Instance("production-instance", {
/// name: "tf-instance",
/// clusters: [{
/// clusterId: "tf-instance-cluster",
/// numNodes: 1,
/// storageType: "HDD",
/// }],
/// labels: {
/// "my-label": "prod-label",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// production_instance = gcp.bigtable.Instance("production-instance",
/// name="tf-instance",
/// clusters=[{
/// "cluster_id": "tf-instance-cluster",
/// "num_nodes": 1,
/// "storage_type": "HDD",
/// }],
/// labels={
/// "my-label": "prod-label",
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
/// var production_instance = new Gcp.BigTable.Instance("production-instance", new()
/// {
/// Name = "tf-instance",
/// Clusters = new[]
/// {
/// new Gcp.BigTable.Inputs.InstanceClusterArgs
/// {
/// ClusterId = "tf-instance-cluster",
/// NumNodes = 1,
/// StorageType = "HDD",
/// },
/// },
/// Labels =
/// {
/// { "my-label", "prod-label" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigtable.NewInstance(ctx, "production-instance", &bigtable.InstanceArgs{
/// Name: pulumi.String("tf-instance"),
/// Clusters: bigtable.InstanceClusterArray{
/// &bigtable.InstanceClusterArgs{
/// ClusterId:   pulumi.String("tf-instance-cluster"),
/// NumNodes:    pulumi.Int(1),
/// StorageType: pulumi.String("HDD"),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "my-label": pulumi.String("prod-label"),
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
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
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
/// var production_instance = new Instance("production-instance", InstanceArgs.builder()
/// .name("tf-instance")
/// .clusters(InstanceClusterArgs.builder()
/// .clusterId("tf-instance-cluster")
/// .numNodes(1)
/// .storageType("HDD")
/// .build())
/// .labels(Map.of("my-label", "prod-label"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// production-instance:
/// type: gcp:bigtable:Instance
/// properties:
/// name: tf-instance
/// clusters:
/// - clusterId: tf-instance-cluster
/// numNodes: 1
/// storageType: HDD
/// labels:
/// my-label: prod-label
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Replicated Instance
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const production_instance = new gcp.bigtable.Instance("production-instance", {
/// name: "tf-instance",
/// clusters: [
/// {
/// clusterId: "tf-instance-cluster1",
/// numNodes: 1,
/// storageType: "HDD",
/// zone: "us-central1-c",
/// },
/// {
/// clusterId: "tf-instance-cluster2",
/// storageType: "HDD",
/// zone: "us-central1-b",
/// autoscalingConfig: {
/// minNodes: 1,
/// maxNodes: 3,
/// cpuTarget: 50,
/// },
/// },
/// ],
/// labels: {
/// "my-label": "prod-label",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// production_instance = gcp.bigtable.Instance("production-instance",
/// name="tf-instance",
/// clusters=[
/// {
/// "cluster_id": "tf-instance-cluster1",
/// "num_nodes": 1,
/// "storage_type": "HDD",
/// "zone": "us-central1-c",
/// },
/// {
/// "cluster_id": "tf-instance-cluster2",
/// "storage_type": "HDD",
/// "zone": "us-central1-b",
/// "autoscaling_config": {
/// "min_nodes": 1,
/// "max_nodes": 3,
/// "cpu_target": 50,
/// },
/// },
/// ],
/// labels={
/// "my-label": "prod-label",
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
/// var production_instance = new Gcp.BigTable.Instance("production-instance", new()
/// {
/// Name = "tf-instance",
/// Clusters = new[]
/// {
/// new Gcp.BigTable.Inputs.InstanceClusterArgs
/// {
/// ClusterId = "tf-instance-cluster1",
/// NumNodes = 1,
/// StorageType = "HDD",
/// Zone = "us-central1-c",
/// },
/// new Gcp.BigTable.Inputs.InstanceClusterArgs
/// {
/// ClusterId = "tf-instance-cluster2",
/// StorageType = "HDD",
/// Zone = "us-central1-b",
/// AutoscalingConfig = new Gcp.BigTable.Inputs.InstanceClusterAutoscalingConfigArgs
/// {
/// MinNodes = 1,
/// MaxNodes = 3,
/// CpuTarget = 50,
/// },
/// },
/// },
/// Labels =
/// {
/// { "my-label", "prod-label" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigtable.NewInstance(ctx, "production-instance", &bigtable.InstanceArgs{
/// Name: pulumi.String("tf-instance"),
/// Clusters: bigtable.InstanceClusterArray{
/// &bigtable.InstanceClusterArgs{
/// ClusterId:   pulumi.String("tf-instance-cluster1"),
/// NumNodes:    pulumi.Int(1),
/// StorageType: pulumi.String("HDD"),
/// Zone:        pulumi.String("us-central1-c"),
/// },
/// &bigtable.InstanceClusterArgs{
/// ClusterId:   pulumi.String("tf-instance-cluster2"),
/// StorageType: pulumi.String("HDD"),
/// Zone:        pulumi.String("us-central1-b"),
/// AutoscalingConfig: &bigtable.InstanceClusterAutoscalingConfigArgs{
/// MinNodes:  pulumi.Int(1),
/// MaxNodes:  pulumi.Int(3),
/// CpuTarget: pulumi.Int(50),
/// },
/// },
/// },
/// Labels: pulumi.StringMap{
/// "my-label": pulumi.String("prod-label"),
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
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterAutoscalingConfigArgs;
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
/// var production_instance = new Instance("production-instance", InstanceArgs.builder()
/// .name("tf-instance")
/// .clusters(
/// InstanceClusterArgs.builder()
/// .clusterId("tf-instance-cluster1")
/// .numNodes(1)
/// .storageType("HDD")
/// .zone("us-central1-c")
/// .build(),
/// InstanceClusterArgs.builder()
/// .clusterId("tf-instance-cluster2")
/// .storageType("HDD")
/// .zone("us-central1-b")
/// .autoscalingConfig(InstanceClusterAutoscalingConfigArgs.builder()
/// .minNodes(1)
/// .maxNodes(3)
/// .cpuTarget(50)
/// .build())
/// .build())
/// .labels(Map.of("my-label", "prod-label"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// production-instance:
/// type: gcp:bigtable:Instance
/// properties:
/// name: tf-instance
/// clusters:
/// - clusterId: tf-instance-cluster1
/// numNodes: 1
/// storageType: HDD
/// zone: us-central1-c
/// - clusterId: tf-instance-cluster2
/// storageType: HDD
/// zone: us-central1-b
/// autoscalingConfig:
/// minNodes: 1
/// maxNodes: 3
/// cpuTarget: 50
/// labels:
/// my-label: prod-label
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Bigtable Instances can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Bigtable Instances can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/instance:Instance default projects/{{project}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/instance:Instance default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/instance:Instance default {{name}}
/// ```
class Instance3 extends CustomResource {
  /// A block of cluster configuration options. This can be specified at least once, and up
  /// to as many as possible within 8 cloud regions. Removing the field entirely from the config will cause the provider
  /// to default to the backend value. See structure below.
  ///
  /// -----
  late final Output<List<InstanceCluster>> clusters;

  /// Whether or not to allow this provider to destroy the instance. Unless this field is set to false
  /// in the statefile, a `pulumi destroy` or `pulumi up` that would delete the instance will fail.
  late final Output<bool?> deletionProtection;

  /// The human-readable display name of the Bigtable instance. Defaults to the instance <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  ///
  /// -----
  late final Output<Map<String, String>> effectiveLabels;

  /// Deleting a BigTable instance can be blocked if any backups are present in the instance. When <span pulumi-lang-nodejs="`forceDestroy`" pulumi-lang-dotnet="`ForceDestroy`" pulumi-lang-go="`forceDestroy`" pulumi-lang-python="`force_destroy`" pulumi-lang-yaml="`forceDestroy`" pulumi-lang-java="`forceDestroy`">`force_destroy`</span> is set to true, the Provider will delete all backups found in the BigTable instance before attempting to delete the instance itself. Defaults to false.
  late final Output<bool?> forceDestroy;

  /// The instance type to create. One of `"DEVELOPMENT"` or `"PRODUCTION"`. Defaults to `"PRODUCTION"`.
  /// It is recommended to leave this field unspecified since the distinction between `"DEVELOPMENT"` and `"PRODUCTION"` instances is going away,
  /// and all instances will become `"PRODUCTION"` instances. This means that new and existing `"DEVELOPMENT"` instances will be converted to
  /// `"PRODUCTION"` instances. It is recommended for users to use `"PRODUCTION"` instances in any case, since a 1-node `"PRODUCTION"` instance
  /// is functionally identical to a `"DEVELOPMENT"` instance, but without the accompanying restrictions.
  late final Output<String?> instanceType;

  /// A set of key/value label pairs to assign to the resource. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  Instance3(
    String name, {
    InstanceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusters = Output.createUnknown<List<InstanceCluster>>();
    this.deletionProtection = Output.createUnknown<bool?>();
    this.displayName = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.instanceType = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
  }
}
