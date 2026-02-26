import 'package:pulumi/pulumi.dart';
import '../cluster_parameter_group_parameter/cluster_parameter_group_parameter.dart';
import 'cluster_parameter_group_args.dart';

/// Manages a DocumentDB Cluster Parameter Group
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.docdb.ClusterParameterGroup("example", {
/// family: "docdb3.6",
/// name: "example",
/// description: "docdb cluster parameter group",
/// parameters: [{
/// name: "tls",
/// value: "enabled",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.docdb.ClusterParameterGroup("example",
/// family="docdb3.6",
/// name="example",
/// description="docdb cluster parameter group",
/// parameters=[{
/// "name": "tls",
/// "value": "enabled",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DocDB.ClusterParameterGroup("example", new()
/// {
/// Family = "docdb3.6",
/// Name = "example",
/// Description = "docdb cluster parameter group",
/// Parameters = new[]
/// {
/// new Aws.DocDB.Inputs.ClusterParameterGroupParameterArgs
/// {
/// Name = "tls",
/// Value = "enabled",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/docdb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := docdb.NewClusterParameterGroup(ctx, "example", &docdb.ClusterParameterGroupArgs{
/// Family:      pulumi.String("docdb3.6"),
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("docdb cluster parameter group"),
/// Parameters: docdb.ClusterParameterGroupParameterArray{
/// &docdb.ClusterParameterGroupParameterArgs{
/// Name:  pulumi.String("tls"),
/// Value: pulumi.String("enabled"),
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
/// import com.pulumi.aws.docdb.ClusterParameterGroup;
/// import com.pulumi.aws.docdb.ClusterParameterGroupArgs;
/// import com.pulumi.aws.docdb.inputs.ClusterParameterGroupParameterArgs;
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
/// var example = new ClusterParameterGroup("example", ClusterParameterGroupArgs.builder()
/// .family("docdb3.6")
/// .name("example")
/// .description("docdb cluster parameter group")
/// .parameters(ClusterParameterGroupParameterArgs.builder()
/// .name("tls")
/// .value("enabled")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:docdb:ClusterParameterGroup
/// properties:
/// family: docdb3.6
/// name: example
/// description: docdb cluster parameter group
/// parameters:
/// - name: tls
/// value: enabled
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DocumentDB Cluster Parameter Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:docdb/clusterParameterGroup:ClusterParameterGroup cluster_pg production-pg-1
/// ```
class ClusterParameterGroup extends CustomResource {
  /// The ARN of the DocumentDB cluster parameter group.
  late final Output<String> arn;

  /// The description of the DocumentDB cluster parameter group. Defaults to "Managed by Pulumi".
  late final Output<String?> description;

  /// The family of the DocumentDB cluster parameter group.
  late final Output<String> family;

  /// The name of the DocumentDB parameter.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// A list of DocumentDB parameters to apply. Setting parameters to system default values may show a difference on imported resources.
  late final Output<List<ClusterParameterGroupParameter>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterParameterGroup(
    String name, {
    ClusterParameterGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:docdb/clusterParameterGroup:ClusterParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.parameters =
        registerOutput<List<ClusterParameterGroupParameter>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
