import 'package:pulumi/pulumi.dart';
import 'instance_partition_args.dart';

/// A Cloud Spanner instance partition is a unit of Cloud Spanner database capacity
/// that can be used to partition data and processing capacity within an instance.
///
///
/// To get more information about InstancePartition, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instances.instancePartitions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/docs/geo-partitioning)
///
/// ## Example Usage
///
/// ### Spanner Instance Partition Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.spanner.Instance("main", {
/// name: "test-instance",
/// config: "nam6",
/// displayName: "main-instance",
/// numNodes: 1,
/// edition: "ENTERPRISE_PLUS",
/// });
/// const partition = new gcp.spanner.InstancePartition("partition", {
/// name: "test-partition",
/// instance: main.name,
/// config: "nam8",
/// displayName: "test-spanner-partition",
/// nodeCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.spanner.Instance("main",
/// name="test-instance",
/// config="nam6",
/// display_name="main-instance",
/// num_nodes=1,
/// edition="ENTERPRISE_PLUS")
/// partition = gcp.spanner.InstancePartition("partition",
/// name="test-partition",
/// instance=main.name,
/// config="nam8",
/// display_name="test-spanner-partition",
/// node_count=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Gcp.Spanner.Instance("main", new()
/// {
/// Name = "test-instance",
/// Config = "nam6",
/// DisplayName = "main-instance",
/// NumNodes = 1,
/// Edition = "ENTERPRISE_PLUS",
/// });
///
/// var partition = new Gcp.Spanner.InstancePartition("partition", new()
/// {
/// Name = "test-partition",
/// Instance = main.Name,
/// Config = "nam8",
/// DisplayName = "test-spanner-partition",
/// NodeCount = 1,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := spanner.NewInstance(ctx, "main", &spanner.InstanceArgs{
/// Name:        pulumi.String("test-instance"),
/// Config:      pulumi.String("nam6"),
/// DisplayName: pulumi.String("main-instance"),
/// NumNodes:    pulumi.Int(1),
/// Edition:     pulumi.String("ENTERPRISE_PLUS"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = spanner.NewInstancePartition(ctx, "partition", &spanner.InstancePartitionArgs{
/// Name:        pulumi.String("test-partition"),
/// Instance:    main.Name,
/// Config:      pulumi.String("nam8"),
/// DisplayName: pulumi.String("test-spanner-partition"),
/// NodeCount:   pulumi.Int(1),
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
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
/// import com.pulumi.gcp.spanner.InstancePartition;
/// import com.pulumi.gcp.spanner.InstancePartitionArgs;
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
/// var main = new Instance("main", InstanceArgs.builder()
/// .name("test-instance")
/// .config("nam6")
/// .displayName("main-instance")
/// .numNodes(1)
/// .edition("ENTERPRISE_PLUS")
/// .build());
///
/// var partition = new InstancePartition("partition", InstancePartitionArgs.builder()
/// .name("test-partition")
/// .instance(main.name())
/// .config("nam8")
/// .displayName("test-spanner-partition")
/// .nodeCount(1)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: gcp:spanner:Instance
/// properties:
/// name: test-instance
/// config: nam6
/// displayName: main-instance
/// numNodes: 1
/// edition: ENTERPRISE_PLUS
/// partition:
/// type: gcp:spanner:InstancePartition
/// properties:
/// name: test-partition
/// instance: ${main.name}
/// config: nam8
/// displayName: test-spanner-partition
/// nodeCount: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// InstancePartition can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/instancePartitions/{{name}}`
///
/// * `{{project}}/{{instance}}/{{name}}`
///
/// * `{{instance}}/{{name}}`
///
/// When using the `pulumi import` command, InstancePartition can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default projects/{{project}}/instances/{{instance}}/instancePartitions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default {{project}}/{{instance}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/instancePartition:InstancePartition default {{instance}}/{{name}}
/// ```
class InstancePartition extends CustomResource {
  /// The name of the instance partition's configuration (similar to a region) which
  /// defines the geographic placement and replication of data in this instance partition.
  late final Output<String> config;

  /// The descriptive name for this instance partition as it appears in UIs.
  /// Must be unique per project and between 4 and 30 characters in length.
  late final Output<String> displayName;

  /// The instance to create the instance partition in.
  late final Output<String> instance;

  /// A unique identifier for the instance partition, which cannot be changed after
  /// the instance partition is created. The name must be between 2 and 64 characters
  /// and match the regular expression [a-z][a-z0-9\\-]{0,61}[a-z0-9].
  late final Output<String> name;

  /// The number of nodes allocated to this instance partition. One node equals
  /// 1000 processing units. Exactly one of either<span pulumi-lang-nodejs=" nodeCount " pulumi-lang-dotnet=" NodeCount " pulumi-lang-go=" nodeCount " pulumi-lang-python=" node_count " pulumi-lang-yaml=" nodeCount " pulumi-lang-java=" nodeCount "> node_count </span>or<span pulumi-lang-nodejs=" processingUnits
  /// " pulumi-lang-dotnet=" ProcessingUnits
  /// " pulumi-lang-go=" processingUnits
  /// " pulumi-lang-python=" processing_units
  /// " pulumi-lang-yaml=" processingUnits
  /// " pulumi-lang-java=" processingUnits
  /// "> processing_units
  /// </span>must be present.
  late final Output<int?> nodeCount;

  /// The number of processing units allocated to this instance partition.
  /// Exactly one of either<span pulumi-lang-nodejs=" nodeCount " pulumi-lang-dotnet=" NodeCount " pulumi-lang-go=" nodeCount " pulumi-lang-python=" node_count " pulumi-lang-yaml=" nodeCount " pulumi-lang-java=" nodeCount "> node_count </span>or<span pulumi-lang-nodejs=" processingUnits " pulumi-lang-dotnet=" ProcessingUnits " pulumi-lang-go=" processingUnits " pulumi-lang-python=" processing_units " pulumi-lang-yaml=" processingUnits " pulumi-lang-java=" processingUnits "> processing_units </span>must be present.
  late final Output<int?> processingUnits;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The current instance partition state. Possible values are:
  /// CREATING: The instance partition is being created. Resources are being
  /// allocated for the instance partition.
  /// READY: The instance partition has been allocated resources and is ready for use.
  late final Output<String> state;

  InstancePartition(
    String name, {
    InstancePartitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/instancePartition:InstancePartition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.instance = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nodeCount = Output.createUnknown<int?>();
    this.processingUnits = Output.createUnknown<int?>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
