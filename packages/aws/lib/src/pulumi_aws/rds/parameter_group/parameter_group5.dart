import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter5.dart';
import 'parameter_group_args5.dart';

/// Provides an RDS DB parameter group resource. Documentation of the available parameters for various RDS engines can be found at:
///
/// * [Aurora MySQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Reference.html)
/// * [Aurora PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraPostgreSQL.Reference.html)
/// * [MariaDB Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.MariaDB.Parameters.html)
/// * [Oracle Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ModifyInstance.Oracle.html#USER_ModifyInstance.Oracle.sqlnet)
/// * [PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.PostgreSQL.CommonDBATasks.html#Appendix.PostgreSQL.CommonDBATasks.Parameters)
///
/// > **Hands-on:** For an example of the <span pulumi-lang-nodejs="`aws.rds.ParameterGroup`" pulumi-lang-dotnet="`aws.rds.ParameterGroup`" pulumi-lang-go="`rds.ParameterGroup`" pulumi-lang-python="`rds.ParameterGroup`" pulumi-lang-yaml="`aws.rds.ParameterGroup`" pulumi-lang-java="`aws.rds.ParameterGroup`">`aws.rds.ParameterGroup`</span> in use, follow the Manage AWS RDS Instances tutorial on HashiCorp Learn.
///
/// > **NOTE:** If you encounter a pulumi preview showing parameter changes after an apply (_i.e._, _perpetual diffs_), see the Problematic Plan Changes example below for additional guidance.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.ParameterGroup("default", {
/// name: "rds-pg",
/// family: "mysql5.6",
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
/// default = aws.rds.ParameterGroup("default",
/// name="rds-pg",
/// family="mysql5.6",
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
/// var @default = new Aws.Rds.ParameterGroup("default", new()
/// {
/// Name = "rds-pg",
/// Family = "mysql5.6",
/// Parameters = new[]
/// {
/// new Aws.Rds.Inputs.ParameterGroupParameterArgs
/// {
/// Name = "character_set_server",
/// Value = "utf8",
/// },
/// new Aws.Rds.Inputs.ParameterGroupParameterArgs
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
/// _, err := rds.NewParameterGroup(ctx, "default", &rds.ParameterGroupArgs{
/// Name:   pulumi.String("rds-pg"),
/// Family: pulumi.String("mysql5.6"),
/// Parameters: rds.ParameterGroupParameterArray{
/// &rds.ParameterGroupParameterArgs{
/// Name:  pulumi.String("character_set_server"),
/// Value: pulumi.String("utf8"),
/// },
/// &rds.ParameterGroupParameterArgs{
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
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
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
/// var default_ = new ParameterGroup("default", ParameterGroupArgs.builder()
/// .name("rds-pg")
/// .family("mysql5.6")
/// .parameters(
/// ParameterGroupParameterArgs.builder()
/// .name("character_set_server")
/// .value("utf8")
/// .build(),
/// ParameterGroupParameterArgs.builder()
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
/// type: aws:rds:ParameterGroup
/// properties:
/// name: rds-pg
/// family: mysql5.6
/// parameters:
/// - name: character_set_server
/// value: utf8
/// - name: character_set_client
/// value: utf8
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example of Problematic Configuration
///
/// The following Terraform configuration includes a parameter that overlaps with an AWS default parameter, using the same <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> (<span pulumi-lang-nodejs="`defaultPasswordLifetime`" pulumi-lang-dotnet="`DefaultPasswordLifetime`" pulumi-lang-go="`defaultPasswordLifetime`" pulumi-lang-python="`default_password_lifetime`" pulumi-lang-yaml="`defaultPasswordLifetime`" pulumi-lang-java="`defaultPasswordLifetime`">`default_password_lifetime`</span>) and <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> (<span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>). However:
///
/// - AWS sets the default <span pulumi-lang-nodejs="`applyMethod`" pulumi-lang-dotnet="`ApplyMethod`" pulumi-lang-go="`applyMethod`" pulumi-lang-python="`apply_method`" pulumi-lang-yaml="`applyMethod`" pulumi-lang-java="`applyMethod`">`apply_method`</span> for this parameter to `pending-reboot`.
/// - The AWS Provider defaults all parameters' <span pulumi-lang-nodejs="`applyMethod`" pulumi-lang-dotnet="`ApplyMethod`" pulumi-lang-go="`applyMethod`" pulumi-lang-python="`apply_method`" pulumi-lang-yaml="`applyMethod`" pulumi-lang-java="`applyMethod`">`apply_method`</span> to <span pulumi-lang-nodejs="`immediate`" pulumi-lang-dotnet="`Immediate`" pulumi-lang-go="`immediate`" pulumi-lang-python="`immediate`" pulumi-lang-yaml="`immediate`" pulumi-lang-java="`immediate`">`immediate`</span>.
///
/// This configuration attempts to change _only_ the <span pulumi-lang-nodejs="`applyMethod`" pulumi-lang-dotnet="`ApplyMethod`" pulumi-lang-go="`applyMethod`" pulumi-lang-python="`apply_method`" pulumi-lang-yaml="`applyMethod`" pulumi-lang-java="`applyMethod`">`apply_method`</span> from `pending-reboot` to <span pulumi-lang-nodejs="`immediate`" pulumi-lang-dotnet="`Immediate`" pulumi-lang-go="`immediate`" pulumi-lang-python="`immediate`" pulumi-lang-yaml="`immediate`" pulumi-lang-java="`immediate`">`immediate`</span>, which is not allowed by AWS.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.ParameterGroup("test", {
/// name: "random-test-parameter",
/// family: "mysql5.7",
/// parameters: [{
/// name: "default_password_lifetime",
/// value: "0",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.ParameterGroup("test",
/// name="random-test-parameter",
/// family="mysql5.7",
/// parameters=[{
/// "name": "default_password_lifetime",
/// "value": "0",
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
/// var test = new Aws.Rds.ParameterGroup("test", new()
/// {
/// Name = "random-test-parameter",
/// Family = "mysql5.7",
/// Parameters = new[]
/// {
/// new Aws.Rds.Inputs.ParameterGroupParameterArgs
/// {
/// Name = "default_password_lifetime",
/// Value = "0",
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
/// _, err := rds.NewParameterGroup(ctx, "test", &rds.ParameterGroupArgs{
/// Name:   pulumi.String("random-test-parameter"),
/// Family: pulumi.String("mysql5.7"),
/// Parameters: rds.ParameterGroupParameterArray{
/// &rds.ParameterGroupParameterArgs{
/// Name:  pulumi.String("default_password_lifetime"),
/// Value: pulumi.String("0"),
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
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
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
/// var test = new ParameterGroup("test", ParameterGroupArgs.builder()
/// .name("random-test-parameter")
/// .family("mysql5.7")
/// .parameters(ParameterGroupParameterArgs.builder()
/// .name("default_password_lifetime")
/// .value("0")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:rds:ParameterGroup
/// properties:
/// name: random-test-parameter
/// family: mysql5.7
/// parameters:
/// - name: default_password_lifetime
/// value: '0'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Solution 1: Remove the Default Parameter
///
/// Exclude the default parameter, such as <span pulumi-lang-nodejs="`defaultPasswordLifetime`" pulumi-lang-dotnet="`DefaultPasswordLifetime`" pulumi-lang-go="`defaultPasswordLifetime`" pulumi-lang-python="`default_password_lifetime`" pulumi-lang-yaml="`defaultPasswordLifetime`" pulumi-lang-java="`defaultPasswordLifetime`">`default_password_lifetime`</span> in this example, from your configuration entirely. This ensures Terraform does not attempt to modify the parameter, leaving it with AWS's default settings.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.ParameterGroup("test", {
/// name: "random-test-parameter",
/// family: "mysql5.7",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.ParameterGroup("test",
/// name="random-test-parameter",
/// family="mysql5.7")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Rds.ParameterGroup("test", new()
/// {
/// Name = "random-test-parameter",
/// Family = "mysql5.7",
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
/// _, err := rds.NewParameterGroup(ctx, "test", &rds.ParameterGroupArgs{
/// Name:   pulumi.String("random-test-parameter"),
/// Family: pulumi.String("mysql5.7"),
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
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
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
/// var test = new ParameterGroup("test", ParameterGroupArgs.builder()
/// .name("random-test-parameter")
/// .family("mysql5.7")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:rds:ParameterGroup
/// properties:
/// name: random-test-parameter
/// family: mysql5.7
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Solution 2: Modify the Parameter's Value Also
///
/// Change the <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> of the parameter along with its <span pulumi-lang-nodejs="`applyMethod`" pulumi-lang-dotnet="`ApplyMethod`" pulumi-lang-go="`applyMethod`" pulumi-lang-python="`apply_method`" pulumi-lang-yaml="`applyMethod`" pulumi-lang-java="`applyMethod`">`apply_method`</span>. Since the AWS default <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> is <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, selecting any other valid value (_e.g._, <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>) will resolve the issue.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.ParameterGroup("test", {
/// name: "random-test-parameter",
/// family: "mysql5.7",
/// parameters: [{
/// name: "default_password_lifetime",
/// value: "1",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.ParameterGroup("test",
/// name="random-test-parameter",
/// family="mysql5.7",
/// parameters=[{
/// "name": "default_password_lifetime",
/// "value": "1",
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
/// var test = new Aws.Rds.ParameterGroup("test", new()
/// {
/// Name = "random-test-parameter",
/// Family = "mysql5.7",
/// Parameters = new[]
/// {
/// new Aws.Rds.Inputs.ParameterGroupParameterArgs
/// {
/// Name = "default_password_lifetime",
/// Value = "1",
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
/// _, err := rds.NewParameterGroup(ctx, "test", &rds.ParameterGroupArgs{
/// Name:   pulumi.String("random-test-parameter"),
/// Family: pulumi.String("mysql5.7"),
/// Parameters: rds.ParameterGroupParameterArray{
/// &rds.ParameterGroupParameterArgs{
/// Name:  pulumi.String("default_password_lifetime"),
/// Value: pulumi.String("1"),
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
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
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
/// var test = new ParameterGroup("test", ParameterGroupArgs.builder()
/// .name("random-test-parameter")
/// .family("mysql5.7")
/// .parameters(ParameterGroupParameterArgs.builder()
/// .name("default_password_lifetime")
/// .value("1")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:rds:ParameterGroup
/// properties:
/// name: random-test-parameter
/// family: mysql5.7
/// parameters:
/// - name: default_password_lifetime
/// value: '1'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Solution 3: Align <span pulumi-lang-nodejs="`applyMethod`" pulumi-lang-dotnet="`ApplyMethod`" pulumi-lang-go="`applyMethod`" pulumi-lang-python="`apply_method`" pulumi-lang-yaml="`applyMethod`" pulumi-lang-java="`applyMethod`">`apply_method`</span> with AWS Defaults
///
/// Explicitly set the <span pulumi-lang-nodejs="`applyMethod`" pulumi-lang-dotnet="`ApplyMethod`" pulumi-lang-go="`applyMethod`" pulumi-lang-python="`apply_method`" pulumi-lang-yaml="`applyMethod`" pulumi-lang-java="`applyMethod`">`apply_method`</span> to match AWS's default value for this parameter (`pending-reboot`). This prevents conflicts between Terraform's default (<span pulumi-lang-nodejs="`immediate`" pulumi-lang-dotnet="`Immediate`" pulumi-lang-go="`immediate`" pulumi-lang-python="`immediate`" pulumi-lang-yaml="`immediate`" pulumi-lang-java="`immediate`">`immediate`</span>) and AWS's default where the <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> is not changing.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.rds.ParameterGroup("test", {
/// name: "random-test-parameter",
/// family: "mysql5.7",
/// parameters: [{
/// applyMethod: "pending-reboot",
/// name: "default_password_lifetime",
/// value: "0",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.ParameterGroup("test",
/// name="random-test-parameter",
/// family="mysql5.7",
/// parameters=[{
/// "apply_method": "pending-reboot",
/// "name": "default_password_lifetime",
/// "value": "0",
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
/// var test = new Aws.Rds.ParameterGroup("test", new()
/// {
/// Name = "random-test-parameter",
/// Family = "mysql5.7",
/// Parameters = new[]
/// {
/// new Aws.Rds.Inputs.ParameterGroupParameterArgs
/// {
/// ApplyMethod = "pending-reboot",
/// Name = "default_password_lifetime",
/// Value = "0",
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
/// _, err := rds.NewParameterGroup(ctx, "test", &rds.ParameterGroupArgs{
/// Name:   pulumi.String("random-test-parameter"),
/// Family: pulumi.String("mysql5.7"),
/// Parameters: rds.ParameterGroupParameterArray{
/// &rds.ParameterGroupParameterArgs{
/// ApplyMethod: pulumi.String("pending-reboot"),
/// Name:        pulumi.String("default_password_lifetime"),
/// Value:       pulumi.String("0"),
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
/// import com.pulumi.aws.rds.ParameterGroup;
/// import com.pulumi.aws.rds.ParameterGroupArgs;
/// import com.pulumi.aws.rds.inputs.ParameterGroupParameterArgs;
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
/// var test = new ParameterGroup("test", ParameterGroupArgs.builder()
/// .name("random-test-parameter")
/// .family("mysql5.7")
/// .parameters(ParameterGroupParameterArgs.builder()
/// .applyMethod("pending-reboot")
/// .name("default_password_lifetime")
/// .value("0")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:rds:ParameterGroup
/// properties:
/// name: random-test-parameter
/// family: mysql5.7
/// parameters:
/// - applyMethod: pending-reboot
/// name: default_password_lifetime
/// value: '0'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DB Parameter groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/parameterGroup:ParameterGroup rds_pg rds-pg
/// ```
class ParameterGroup5 extends CustomResource {
  /// The ARN of the db parameter group.
  late final Output<String> arn;

  /// The description of the DB parameter group. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// The family of the DB parameter group.
  late final Output<String> family;

  /// The name of the DB parameter group. If omitted, this provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// The DB parameters to apply. See <span pulumi-lang-nodejs="`parameter`" pulumi-lang-dotnet="`Parameter`" pulumi-lang-go="`parameter`" pulumi-lang-python="`parameter`" pulumi-lang-yaml="`parameter`" pulumi-lang-java="`parameter`">`parameter`</span> Block below for more details. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-parameters.html) after initial creation of the group.
  late final Output<List<ParameterGroupParameter5>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set to true if you do not wish the parameter group to be deleted at destroy time, and instead just remove the parameter group from the Terraform state.
  late final Output<bool?> skipDestroy;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ParameterGroup5(
    String name, {
    ParameterGroupArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/parameterGroup:ParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.family = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.parameters = Output.createUnknown<List<ParameterGroupParameter5>?>();
    this.region = Output.createUnknown<String>();
    this.skipDestroy = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
