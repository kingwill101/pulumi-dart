import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_args.dart';
import 'parameter_group_parameter.dart';
import 'parameter_group_state.dart';

/// Provides an RDS DB parameter group resource. Documentation of the available parameters for various RDS engines can be found at:
///
/// * [Aurora MySQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Reference.html)
/// * [Aurora PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraPostgreSQL.Reference.html)
/// * [MariaDB Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.MariaDB.Parameters.html)
/// * [Oracle Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ModifyInstance.Oracle.html#USER_ModifyInstance.Oracle.sqlnet)
/// * [PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.PostgreSQL.CommonDBATasks.html#Appendix.PostgreSQL.CommonDBATasks.Parameters)
///
/// &gt; **Hands-on:** For an example of the `aws.rds.ParameterGroup` in use, follow the Manage AWS RDS Instances tutorial on HashiCorp Learn.
///
/// &gt; **NOTE:** If you encounter a pulumi preview showing parameter changes after an apply (_i.e._, _perpetual diffs_), see the Problematic Plan Changes example below for additional guidance.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.ParameterGroup("default", {
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
///     name: "rds-pg",
///     family: "mysql5.6",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.ParameterGroup("default",
///     parameters=[
///         {
///             "name": "character_set_server",
///             "value": "utf8",
///         },
///         {
///             "name": "character_set_client",
///             "value": "utf8",
///         },
///     ],
///     name="rds-pg",
///     family="mysql5.6")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.ParameterGroup("default", new()
///     {
///         Parameters = new[]
///         {
///             new Aws.Rds.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "character_set_server",
///                 Value = "utf8",
///             },
///             new Aws.Rds.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "character_set_client",
///                 Value = "utf8",
///             },
///         },
///         Name = "rds-pg",
///         Family = "mysql5.6",
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
/// 		_, err := rds.NewParameterGroup(ctx, "default", &rds.ParameterGroupArgs{
/// 			Parameters: rds.ParameterGroupParameterArray{
/// 				&rds.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("character_set_server"),
/// 					Value: pulumi.String("utf8"),
/// 				},
/// 				&rds.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("character_set_client"),
/// 					Value: pulumi.String("utf8"),
/// 				},
/// 			},
/// 			Name:   pulumi.String("rds-pg"),
/// 			Family: pulumi.String("mysql5.6"),
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
/// resource "aws_rds_parametergroup" "default" {
///   parameters {
///     name  = "character_set_server"
///     value = "utf8"
///   }
///   parameters {
///     name  = "character_set_client"
///     value = "utf8"
///   }
///   name   = "rds-pg"
///   family = "mysql5.6"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
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
///         var default_ = new ParameterGroup("default", ParameterGroupArgs.builder()
///             .parameters(
///                 ParameterGroupParameterArgs.builder()
///                     .name("character_set_server")
///                     .value("utf8")
///                     .build(),
///                 ParameterGroupParameterArgs.builder()
///                     .name("character_set_client")
///                     .value("utf8")
///                     .build())
///             .name("rds-pg")
///             .family("mysql5.6")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:ParameterGroup
///     properties:
///       parameters:
///         - name: character_set_server
///           value: utf8
///         - name: character_set_client
///           value: utf8
///       name: rds-pg
///       family: mysql5.6
/// ```
///
///
/// ### Example of Problematic Configuration
///
/// The following Terraform configuration includes a parameter that overlaps with an AWS default parameter, using the same `name` (`defaultPasswordLifetime`) and `value` (`0`). However:
///
/// - AWS sets the default `applyMethod` for this parameter to `pending-reboot`.
/// - The AWS Provider defaults all parameters' `applyMethod` to `immediate`.
///
/// This configuration attempts to change _only_ the `applyMethod` from `pending-reboot` to `immediate`, which is not allowed by AWS.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.ParameterGroup("test", {
///     parameters: [{
///         name: "default_password_lifetime",
///         value: "0",
///     }],
///     name: "random-test-parameter",
///     family: "mysql5.7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.ParameterGroup("test",
///     parameters=[{
///         "name": "default_password_lifetime",
///         "value": "0",
///     }],
///     name="random-test-parameter",
///     family="mysql5.7")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Rds.ParameterGroup("test", new()
///     {
///         Parameters = new[]
///         {
///             new Aws.Rds.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "default_password_lifetime",
///                 Value = "0",
///             },
///         },
///         Name = "random-test-parameter",
///         Family = "mysql5.7",
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
/// 		_, err := rds.NewParameterGroup(ctx, "test", &rds.ParameterGroupArgs{
/// 			Parameters: rds.ParameterGroupParameterArray{
/// 				&rds.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("default_password_lifetime"),
/// 					Value: pulumi.String("0"),
/// 				},
/// 			},
/// 			Name:   pulumi.String("random-test-parameter"),
/// 			Family: pulumi.String("mysql5.7"),
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
/// resource "aws_rds_parametergroup" "test" {
///   parameters {
///     name  = "default_password_lifetime"
///     value = "0"
///   }
///   # By default, the apply_method is being set to "immediate"
///   # same as AWS default
///   name   = "random-test-parameter"
///   family = "mysql5.7"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
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
///         var test = new ParameterGroup("test", ParameterGroupArgs.builder()
///             .parameters(ParameterGroupParameterArgs.builder()
///                 .name("default_password_lifetime")
///                 .value("0")
///                 .build())
///             .name("random-test-parameter")
///             .family("mysql5.7")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:rds:ParameterGroup
///     properties:
///       parameters:
///         - name: default_password_lifetime
///           value: '0'
///       name: random-test-parameter
///       family: mysql5.7
/// ```
///
///
/// ### Solution 1: Remove the Default Parameter
///
/// Exclude the default parameter, such as `defaultPasswordLifetime` in this example, from your configuration entirely. This ensures Terraform does not attempt to modify the parameter, leaving it with AWS's default settings.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.ParameterGroup("test", {
///     name: "random-test-parameter",
///     family: "mysql5.7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.ParameterGroup("test",
///     name="random-test-parameter",
///     family="mysql5.7")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Rds.ParameterGroup("test", new()
///     {
///         Name = "random-test-parameter",
///         Family = "mysql5.7",
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
/// 		_, err := rds.NewParameterGroup(ctx, "test", &rds.ParameterGroupArgs{
/// 			Name:   pulumi.String("random-test-parameter"),
/// 			Family: pulumi.String("mysql5.7"),
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
/// resource "aws_rds_parametergroup" "test" {
///   name   = "random-test-parameter"
///   family = "mysql5.7"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
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
///         var test = new ParameterGroup("test", ParameterGroupArgs.builder()
///             .name("random-test-parameter")
///             .family("mysql5.7")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:rds:ParameterGroup
///     properties:
///       name: random-test-parameter
///       family: mysql5.7
/// ```
///
///
/// ### Solution 2: Modify the Parameter's Value Also
///
/// Change the `value` of the parameter along with its `applyMethod`. Since the AWS default `value` is `0`, selecting any other valid value (_e.g._, `1`) will resolve the issue.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.ParameterGroup("test", {
///     parameters: [{
///         name: "default_password_lifetime",
///         value: "1",
///     }],
///     name: "random-test-parameter",
///     family: "mysql5.7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.ParameterGroup("test",
///     parameters=[{
///         "name": "default_password_lifetime",
///         "value": "1",
///     }],
///     name="random-test-parameter",
///     family="mysql5.7")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Rds.ParameterGroup("test", new()
///     {
///         Parameters = new[]
///         {
///             new Aws.Rds.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "default_password_lifetime",
///                 Value = "1",
///             },
///         },
///         Name = "random-test-parameter",
///         Family = "mysql5.7",
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
/// 		_, err := rds.NewParameterGroup(ctx, "test", &rds.ParameterGroupArgs{
/// 			Parameters: rds.ParameterGroupParameterArray{
/// 				&rds.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("default_password_lifetime"),
/// 					Value: pulumi.String("1"),
/// 				},
/// 			},
/// 			Name:   pulumi.String("random-test-parameter"),
/// 			Family: pulumi.String("mysql5.7"),
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
/// resource "aws_rds_parametergroup" "test" {
///   parameters {
///     name  = "default_password_lifetime"
///     value = "1"
///   }
///   # Because of the default, the apply_method will also be changed from `pending-reboot` to `immediate`
///   # same as AWS default
///   name   = "random-test-parameter"
///   family = "mysql5.7"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
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
///         var test = new ParameterGroup("test", ParameterGroupArgs.builder()
///             .parameters(ParameterGroupParameterArgs.builder()
///                 .name("default_password_lifetime")
///                 .value("1")
///                 .build())
///             .name("random-test-parameter")
///             .family("mysql5.7")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:rds:ParameterGroup
///     properties:
///       parameters:
///         - name: default_password_lifetime
///           value: '1'
///       name: random-test-parameter
///       family: mysql5.7
/// ```
///
///
/// ### Solution 3: Align `applyMethod` with AWS Defaults
///
/// Explicitly set the `applyMethod` to match AWS's default value for this parameter (`pending-reboot`). This prevents conflicts between Terraform's default (`immediate`) and AWS's default where the `value` is not changing.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.ParameterGroup("test", {
///     parameters: [{
///         applyMethod: "pending-reboot",
///         name: "default_password_lifetime",
///         value: "0",
///     }],
///     name: "random-test-parameter",
///     family: "mysql5.7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.ParameterGroup("test",
///     parameters=[{
///         "apply_method": "pending-reboot",
///         "name": "default_password_lifetime",
///         "value": "0",
///     }],
///     name="random-test-parameter",
///     family="mysql5.7")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Rds.ParameterGroup("test", new()
///     {
///         Parameters = new[]
///         {
///             new Aws.Rds.Inputs.ParameterGroupParameterArgs
///             {
///                 ApplyMethod = "pending-reboot",
///                 Name = "default_password_lifetime",
///                 Value = "0",
///             },
///         },
///         Name = "random-test-parameter",
///         Family = "mysql5.7",
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
/// 		_, err := rds.NewParameterGroup(ctx, "test", &rds.ParameterGroupArgs{
/// 			Parameters: rds.ParameterGroupParameterArray{
/// 				&rds.ParameterGroupParameterArgs{
/// 					ApplyMethod: pulumi.String("pending-reboot"),
/// 					Name:        pulumi.String("default_password_lifetime"),
/// 					Value:       pulumi.String("0"),
/// 				},
/// 			},
/// 			Name:   pulumi.String("random-test-parameter"),
/// 			Family: pulumi.String("mysql5.7"),
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
/// resource "aws_rds_parametergroup" "test" {
///   parameters {
///     apply_method = "pending-reboot"
///     name         = "default_password_lifetime"
///     value        = "0"
///   }
///   # same as AWS default
///   # same as AWS default
///   name   = "random-test-parameter"
///   family = "mysql5.7"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
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
///         var test = new ParameterGroup("test", ParameterGroupArgs.builder()
///             .parameters(ParameterGroupParameterArgs.builder()
///                 .applyMethod("pending-reboot")
///                 .name("default_password_lifetime")
///                 .value("0")
///                 .build())
///             .name("random-test-parameter")
///             .family("mysql5.7")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:rds:ParameterGroup
///     properties:
///       parameters:
///         - applyMethod: pending-reboot
///           name: default_password_lifetime
///           value: '0'
///       name: random-test-parameter
///       family: mysql5.7
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `name` (String) Name of the DB parameter group.
///
/// #### Optional
///
/// - `accountId` (String) AWS Account where this resource is managed.
/// - `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DB Parameter groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/parameterGroup:ParameterGroup example rds-pg
/// ```
class ParameterGroup extends pulumi.CustomResource {
  /// The ARN of the db parameter group.
  late final pulumi.Output<String> arn;
  /// The description of the DB parameter group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;
  /// The family of the DB parameter group.
  late final pulumi.Output<String> family;
  /// The name of the DB parameter group. If omitted, this provider will assign a random, unique name.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// The DB parameters to apply. See `parameter` Block below for more details. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-parameters.html) after initial creation of the group.
  late final pulumi.Output<List<ParameterGroupParameter>?> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set to true if you do not wish the parameter group to be deleted at destroy time, and instead just remove the parameter group from the Terraform state.
  late final pulumi.Output<bool?> skipDestroy;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ParameterGroup]. {@macro pulumi_rds_parameter_group_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ParameterGroup(
    String name, {
    ParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    parameters = registerOutput<List<ParameterGroupParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ParameterGroup] resource's state with the given [name] and [id].
  static ParameterGroup get(
    String name,
    pulumi.Input<String> id, {
    ParameterGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ParameterGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ParameterGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    parameters = registerOutput<List<ParameterGroupParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ParameterGroup] resource.
  ParameterGroup.reference(String urn)
    : super(
        'aws:rds/parameterGroup:ParameterGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    parameters = registerOutput<List<ParameterGroupParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
