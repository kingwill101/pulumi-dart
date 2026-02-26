import 'package:pulumi/pulumi.dart';
import '../cluster_parameter_group_parameter/cluster_parameter_group_parameter3.dart';
import 'cluster_parameter_group_args3.dart';

/// Provides an RDS DB cluster parameter group resource. Documentation of the available parameters for various Aurora engines can be found at:
///
/// * [Aurora MySQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Reference.html)
/// * [Aurora PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraPostgreSQL.Reference.html)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.ClusterParameterGroup("default", {
/// name: "rds-cluster-pg",
/// family: "aurora5.6",
/// description: "RDS default cluster parameter group",
/// parameters: [
/// {
/// name: "character_set_server",
/// value: "utf8",
/// },
/// {
/// name: "character_set_client",
/// value: "utf8",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.ClusterParameterGroup("default",
/// name="rds-cluster-pg",
/// family="aurora5.6",
/// description="RDS default cluster parameter group",
/// parameters=[
/// {
/// "name": "character_set_server",
/// "value": "utf8",
/// },
/// {
/// "name": "character_set_client",
/// "value": "utf8",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Rds.ClusterParameterGroup("default", new()
/// {
/// Name = "rds-cluster-pg",
/// Family = "aurora5.6",
/// Description = "RDS default cluster parameter group",
/// Parameters = new[]
/// {
/// new Aws.Rds.Inputs.ClusterParameterGroupParameterArgs
/// {
/// Name = "character_set_server",
/// Value = "utf8",
/// },
/// new Aws.Rds.Inputs.ClusterParameterGroupParameterArgs
/// {
/// Name = "character_set_client",
/// Value = "utf8",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewClusterParameterGroup(ctx, "default", &rds.ClusterParameterGroupArgs{
/// Name:        pulumi.String("rds-cluster-pg"),
/// Family:      pulumi.String("aurora5.6"),
/// Description: pulumi.String("RDS default cluster parameter group"),
/// Parameters: rds.ClusterParameterGroupParameterArray{
/// &rds.ClusterParameterGroupParameterArgs{
/// Name:  pulumi.String("character_set_server"),
/// Value: pulumi.String("utf8"),
/// },
/// &rds.ClusterParameterGroupParameterArgs{
/// Name:  pulumi.String("character_set_client"),
/// Value: pulumi.String("utf8"),
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
/// import com.pulumi.aws.rds.ClusterParameterGroup;
/// import com.pulumi.aws.rds.ClusterParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ClusterParameterGroupParameterArgs;
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
/// var default_ = new ClusterParameterGroup("default", ClusterParameterGroupArgs.builder()
/// .name("rds-cluster-pg")
/// .family("aurora5.6")
/// .description("RDS default cluster parameter group")
/// .parameters(
/// ClusterParameterGroupParameterArgs.builder()
/// .name("character_set_server")
/// .value("utf8")
/// .build(),
/// ClusterParameterGroupParameterArgs.builder()
/// .name("character_set_client")
/// .value("utf8")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:rds:ClusterParameterGroup
/// properties:
/// name: rds-cluster-pg
/// family: aurora5.6
/// description: RDS default cluster parameter group
/// parameters:
/// - name: character_set_server
/// value: utf8
/// - name: character_set_client
/// value: utf8
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import RDS Cluster Parameter Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterParameterGroup:ClusterParameterGroup cluster_pg production-pg-1
/// ```
class ClusterParameterGroup3 extends CustomResource {
  /// The ARN of the db cluster parameter group.
  late final Output<String> arn;

  /// The description of the DB cluster parameter group. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// The family of the DB cluster parameter group.
  late final Output<String> family;

  /// The name of the DB parameter.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-cluster-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-cluster-parameters.html) after initial creation of the group.
  late final Output<List<ClusterParameterGroupParameter3>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterParameterGroup3(
    String name, {
    ClusterParameterGroupArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterParameterGroup:ClusterParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.family = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.parameters =
        Output.createUnknown<List<ClusterParameterGroupParameter3>?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
