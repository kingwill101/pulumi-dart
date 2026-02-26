import 'package:pulumi/pulumi.dart';
import 'cluster_endpoint_args.dart';

/// Provides an Neptune Cluster Endpoint Resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.neptune.ClusterEndpoint("example", {
/// clusterIdentifier: test.clusterIdentifier,
/// clusterEndpointIdentifier: "example",
/// endpointType: "READER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.ClusterEndpoint("example",
/// cluster_identifier=test["clusterIdentifier"],
/// cluster_endpoint_identifier="example",
/// endpoint_type="READER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Neptune.ClusterEndpoint("example", new()
/// {
/// ClusterIdentifier = test.ClusterIdentifier,
/// ClusterEndpointIdentifier = "example",
/// EndpointType = "READER",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := neptune.NewClusterEndpoint(ctx, "example", &neptune.ClusterEndpointArgs{
/// ClusterIdentifier:         pulumi.Any(test.ClusterIdentifier),
/// ClusterEndpointIdentifier: pulumi.String("example"),
/// EndpointType:              pulumi.String("READER"),
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
/// import com.pulumi.aws.neptune.ClusterEndpoint;
/// import com.pulumi.aws.neptune.ClusterEndpointArgs;
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
/// var example = new ClusterEndpoint("example", ClusterEndpointArgs.builder()
/// .clusterIdentifier(test.clusterIdentifier())
/// .clusterEndpointIdentifier("example")
/// .endpointType("READER")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:neptune:ClusterEndpoint
/// properties:
/// clusterIdentifier: ${test.clusterIdentifier}
/// clusterEndpointIdentifier: example
/// endpointType: READER
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.neptune.ClusterEndpoint`" pulumi-lang-dotnet="`aws.neptune.ClusterEndpoint`" pulumi-lang-go="`neptune.ClusterEndpoint`" pulumi-lang-python="`neptune.ClusterEndpoint`" pulumi-lang-yaml="`aws.neptune.ClusterEndpoint`" pulumi-lang-java="`aws.neptune.ClusterEndpoint`">`aws.neptune.ClusterEndpoint`</span> using the `cluster-identifier:endpoint-identfier`. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterEndpoint:ClusterEndpoint example my-cluster:my-endpoint
/// ```
class ClusterEndpoint extends CustomResource {
  /// The Neptune Cluster Endpoint Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// The identifier of the endpoint.
  late final Output<String> clusterEndpointIdentifier;

  /// The DB cluster identifier of the DB cluster associated with the endpoint.
  late final Output<String> clusterIdentifier;

  /// The DNS address of the endpoint.
  late final Output<String> endpoint;

  /// The type of the endpoint. One of: `READER`, `WRITER`, `ANY`.
  late final Output<String> endpointType;

  /// List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.
  late final Output<List<String>?> excludedMembers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of DB instance identifiers that are part of the custom endpoint group.
  late final Output<List<String>?> staticMembers;

  /// A map of tags to assign to the Neptune cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterEndpoint(
    String name, {
    ClusterEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterEndpoint:ClusterEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterEndpointIdentifier =
        registerOutput<String>('clusterEndpointIdentifier');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointType = registerOutput<String>('endpointType');
    this.excludedMembers = registerOutput<List<String>?>('excludedMembers');
    this.region = registerOutput<String>('region');
    this.staticMembers = registerOutput<List<String>?>('staticMembers');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
