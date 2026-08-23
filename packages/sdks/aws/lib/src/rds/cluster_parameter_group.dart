import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_parameter_group_args.dart';
import 'cluster_parameter_group_state.dart';

/// Provides an RDS DB cluster parameter group resource. Documentation of the available parameters for various Aurora engines can be found at:
///
/// * [Aurora MySQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Reference.html)
/// * [Aurora PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraPostgreSQL.Reference.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.ClusterParameterGroup("default", {
///     name: "rds-cluster-pg",
///     family: "aurora5.6",
///     description: "RDS default cluster parameter group",
///     parameters: [
///         {
///             name: "character_set_server",
///             value: "utf8",
///         },
///         {
///             name: "character_set_client",
///             value: "utf8",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.ClusterParameterGroup("default",
///     name="rds-cluster-pg",
///     family="aurora5.6",
///     description="RDS default cluster parameter group",
///     parameters=[
///         {
///             "name": "character_set_server",
///             "value": "utf8",
///         },
///         {
///             "name": "character_set_client",
///             "value": "utf8",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.ClusterParameterGroup("default", new()
///     {
///         Name = "rds-cluster-pg",
///         Family = "aurora5.6",
///         Description = "RDS default cluster parameter group",
///         Parameters = new[]
///         {
///             new Aws.Rds.Inputs.ClusterParameterGroupParameterArgs
///             {
///                 Name = "character_set_server",
///                 Value = "utf8",
///             },
///             new Aws.Rds.Inputs.ClusterParameterGroupParameterArgs
///             {
///                 Name = "character_set_client",
///                 Value = "utf8",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewClusterParameterGroup(ctx, "default", &rds.ClusterParameterGroupArgs{
/// 			Name:        pulumi.String("rds-cluster-pg"),
/// 			Family:      pulumi.String("aurora5.6"),
/// 			Description: pulumi.String("RDS default cluster parameter group"),
/// 			Parameters: rds.ClusterParameterGroupParameterArray{
/// 				&rds.ClusterParameterGroupParameterArgs{
/// 					Name:  pulumi.String("character_set_server"),
/// 					Value: pulumi.String("utf8"),
/// 				},
/// 				&rds.ClusterParameterGroupParameterArgs{
/// 					Name:  pulumi.String("character_set_client"),
/// 					Value: pulumi.String("utf8"),
/// 				},
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
/// resource "aws_rds_clusterparametergroup" "default" {
///   name        = "rds-cluster-pg"
///   family      = "aurora5.6"
///   description = "RDS default cluster parameter group"
///   parameters {
///     name  = "character_set_server"
///     value = "utf8"
///   }
///   parameters {
///     name  = "character_set_client"
///     value = "utf8"
///   }
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
///         var default_ = new ClusterParameterGroup("default", ClusterParameterGroupArgs.builder()
///             .name("rds-cluster-pg")
///             .family("aurora5.6")
///             .description("RDS default cluster parameter group")
///             .parameters(
///                 ClusterParameterGroupParameterArgs.builder()
///                     .name("character_set_server")
///                     .value("utf8")
///                     .build(),
///                 ClusterParameterGroupParameterArgs.builder()
///                     .name("character_set_client")
///                     .value("utf8")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:ClusterParameterGroup
///     properties:
///       name: rds-cluster-pg
///       family: aurora5.6
///       description: RDS default cluster parameter group
///       parameters:
///         - name: character_set_server
///           value: utf8
///         - name: character_set_client
///           value: utf8
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS Cluster Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterParameterGroup:ClusterParameterGroup cluster_pg production-pg-1
/// ```
class ClusterParameterGroup extends pulumi.CustomResource {
  /// The ARN of the db cluster parameter group.
  late final pulumi.Output<String> arn;
  /// The description of the DB cluster parameter group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;
  /// The family of the DB cluster parameter group.
  late final pulumi.Output<String> family;
  /// The name of the DB parameter.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-cluster-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-cluster-parameters.html) after initial creation of the group.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ClusterParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterParameterGroup]. {@macro pulumi_rds_cluster_parameter_group_cluster_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterParameterGroup(
    String name, {
    ClusterParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterParameterGroup:ClusterParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ClusterParameterGroup] resource's state with the given [name] and [id].
  static ClusterParameterGroup get(
    String name,
    pulumi.Input<String> id, {
    ClusterParameterGroupState? state,
  }) {
    return ClusterParameterGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterParameterGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterParameterGroup:ClusterParameterGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
