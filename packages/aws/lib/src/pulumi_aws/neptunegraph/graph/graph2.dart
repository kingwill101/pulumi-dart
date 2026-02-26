import 'package:pulumi/pulumi.dart';
import '../graph_timeouts/graph_timeouts.dart';
import '../graph_vector_search_configuration/graph_vector_search_configuration.dart';
import 'graph_args2.dart';

/// The <span pulumi-lang-nodejs="`aws.neptunegraph.Graph`" pulumi-lang-dotnet="`aws.neptunegraph.Graph`" pulumi-lang-go="`neptunegraph.Graph`" pulumi-lang-python="`neptunegraph.Graph`" pulumi-lang-yaml="`aws.neptunegraph.Graph`" pulumi-lang-java="`aws.neptunegraph.Graph`">`aws.neptunegraph.Graph`</span> resource creates an Amazon Analytics Graph.
///
/// ## Example Usage
///
/// ### Neptune Graph (with Vector Search configuration)
///
/// Creates a Neptune Graph with 16GB provisioned memory, vector search capability with 128 dimensions, and a single replica for high availability.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create Neptune Graph
/// const example = new aws.neptunegraph.Graph("example", {
/// graphName: "example-graph-test-20250203",
/// provisionedMemory: 16,
/// deletionProtection: false,
/// publicConnectivity: false,
/// replicaCount: 1,
/// kmsKeyIdentifier: "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// vectorSearchConfiguration: {
/// vectorSearchDimension: 128,
/// },
/// tags: {
/// Environment: "Development",
/// ModifiedBy: "AWS",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create Neptune Graph
/// example = aws.neptunegraph.Graph("example",
/// graph_name="example-graph-test-20250203",
/// provisioned_memory=16,
/// deletion_protection=False,
/// public_connectivity=False,
/// replica_count=1,
/// kms_key_identifier="arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// vector_search_configuration={
/// "vector_search_dimension": 128,
/// },
/// tags={
/// "Environment": "Development",
/// "ModifiedBy": "AWS",
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
/// // Create Neptune Graph
/// var example = new Aws.NeptuneGraph.Graph("example", new()
/// {
/// GraphName = "example-graph-test-20250203",
/// ProvisionedMemory = 16,
/// DeletionProtection = false,
/// PublicConnectivity = false,
/// ReplicaCount = 1,
/// KmsKeyIdentifier = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// VectorSearchConfiguration = new Aws.NeptuneGraph.Inputs.GraphVectorSearchConfigurationArgs
/// {
/// VectorSearchDimension = 128,
/// },
/// Tags =
/// {
/// { "Environment", "Development" },
/// { "ModifiedBy", "AWS" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptunegraph"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Create Neptune Graph
/// _, err := neptunegraph.NewGraph(ctx, "example", &neptunegraph.GraphArgs{
/// GraphName:          pulumi.String("example-graph-test-20250203"),
/// ProvisionedMemory:  pulumi.Int(16),
/// DeletionProtection: pulumi.Bool(false),
/// PublicConnectivity: pulumi.Bool(false),
/// ReplicaCount:       pulumi.Int(1),
/// KmsKeyIdentifier:   pulumi.String("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"),
/// VectorSearchConfiguration: &neptunegraph.GraphVectorSearchConfigurationArgs{
/// VectorSearchDimension: pulumi.Int(128),
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("Development"),
/// "ModifiedBy":  pulumi.String("AWS"),
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
/// import com.pulumi.aws.neptunegraph.Graph;
/// import com.pulumi.aws.neptunegraph.GraphArgs;
/// import com.pulumi.aws.neptunegraph.inputs.GraphVectorSearchConfigurationArgs;
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
/// // Create Neptune Graph
/// var example = new Graph("example", GraphArgs.builder()
/// .graphName("example-graph-test-20250203")
/// .provisionedMemory(16)
/// .deletionProtection(false)
/// .publicConnectivity(false)
/// .replicaCount(1)
/// .kmsKeyIdentifier("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012")
/// .vectorSearchConfiguration(GraphVectorSearchConfigurationArgs.builder()
/// .vectorSearchDimension(128)
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Environment", "Development"),
/// Map.entry("ModifiedBy", "AWS")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create Neptune Graph
/// example:
/// type: aws:neptunegraph:Graph
/// properties:
/// graphName: example-graph-test-20250203
/// provisionedMemory: 16
/// deletionProtection: false
/// publicConnectivity: false
/// replicaCount: 1
/// kmsKeyIdentifier: arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
/// vectorSearchConfiguration:
/// vectorSearchDimension: 128
/// tags:
/// Environment: Development
/// ModifiedBy: AWS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.neptunegraph.Graph`" pulumi-lang-dotnet="`aws.neptunegraph.Graph`" pulumi-lang-go="`neptunegraph.Graph`" pulumi-lang-python="`neptunegraph.Graph`" pulumi-lang-yaml="`aws.neptunegraph.Graph`" pulumi-lang-java="`aws.neptunegraph.Graph`">`aws.neptunegraph.Graph`</span> using the graph identifier. For example:
///
/// ```sh
/// $ pulumi import aws:neptunegraph/graph:Graph example "graph_id"
/// ```
class Graph2 extends CustomResource {
  /// (String) Graph resource ARN
  late final Output<String> arn;

  /// Value that indicates whether the Graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.
  late final Output<bool> deletionProtection;

  /// (String) The connection endpoint for the graph. For example: `g-12a3bcdef4.us-east-1.neptune-graph.amazonaws.com`
  late final Output<String> endpoint;

  /// Contains a user-supplied name for the Graph. If omitted, Terraform will assign a random, unique identifier.
  late final Output<String> graphName;

  /// Allows user to specify name prefix and have remainder of name automatically generated.
  late final Output<String?> graphNamePrefix;

  /// The ARN for the KMS encryption key. By Default, Neptune Analytics will use an AWS provided key ("AWS_OWNED_KEY"). This parameter is used if you want to encrypt the graph using a KMS Customer Managed Key (CMK).
  late final Output<String> kmsKeyIdentifier;

  /// The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.
  ///
  /// The following arguments are optional:
  late final Output<int> provisionedMemory;

  /// Specifies whether the Graph can be reached over the internet. Access to all graphs requires IAM authentication.  When the Graph is publicly reachable, its Domain Name System (DNS) endpoint resolves to the public IP address from the internet.  When the Graph isn't publicly reachable, you need to create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private IP address that is reachable from the VPC.
  late final Output<bool> publicConnectivity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the number of replicas you want when finished. All replicas will be provisioned in different availability zones.  Replica Count should always be less than or equal to 2.
  late final Output<int> replicaCount;

  /// Key-value tags for the graph. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<GraphTimeouts?> timeouts;

  /// Vector Search Configuration (see below for nested schema of vector_search_configuration)
  late final Output<GraphVectorSearchConfiguration?> vectorSearchConfiguration;

  Graph2(
    String name, {
    GraphArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptunegraph/graph:Graph',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deletionProtection = Output.createUnknown<bool>();
    this.endpoint = Output.createUnknown<String>();
    this.graphName = Output.createUnknown<String>();
    this.graphNamePrefix = Output.createUnknown<String?>();
    this.kmsKeyIdentifier = Output.createUnknown<String>();
    this.provisionedMemory = Output.createUnknown<int>();
    this.publicConnectivity = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.replicaCount = Output.createUnknown<int>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<GraphTimeouts?>();
    this.vectorSearchConfiguration =
        Output.createUnknown<GraphVectorSearchConfiguration?>();
  }
}
