import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter6.dart';
import 'parameter_group_args6.dart';

/// Provides a Redshift Cluster parameter group resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.redshift.ParameterGroup("bar", {
/// name: "parameter-group-test",
/// family: "redshift-1.0",
/// parameters: [
/// {
/// name: "require_ssl",
/// value: "true",
/// },
/// {
/// name: "query_group",
/// value: "example",
/// },
/// {
/// name: "enable_user_activity_logging",
/// value: "true",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.redshift.ParameterGroup("bar",
/// name="parameter-group-test",
/// family="redshift-1.0",
/// parameters=[
/// {
/// "name": "require_ssl",
/// "value": "true",
/// },
/// {
/// "name": "query_group",
/// "value": "example",
/// },
/// {
/// "name": "enable_user_activity_logging",
/// "value": "true",
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
/// var bar = new Aws.RedShift.ParameterGroup("bar", new()
/// {
/// Name = "parameter-group-test",
/// Family = "redshift-1.0",
/// Parameters = new[]
/// {
/// new Aws.RedShift.Inputs.ParameterGroupParameterArgs
/// {
/// Name = "require_ssl",
/// Value = "true",
/// },
/// new Aws.RedShift.Inputs.ParameterGroupParameterArgs
/// {
/// Name = "query_group",
/// Value = "example",
/// },
/// new Aws.RedShift.Inputs.ParameterGroupParameterArgs
/// {
/// Name = "enable_user_activity_logging",
/// Value = "true",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewParameterGroup(ctx, "bar", &redshift.ParameterGroupArgs{
/// Name:   pulumi.String("parameter-group-test"),
/// Family: pulumi.String("redshift-1.0"),
/// Parameters: redshift.ParameterGroupParameterArray{
/// &redshift.ParameterGroupParameterArgs{
/// Name:  pulumi.String("require_ssl"),
/// Value: pulumi.String("true"),
/// },
/// &redshift.ParameterGroupParameterArgs{
/// Name:  pulumi.String("query_group"),
/// Value: pulumi.String("example"),
/// },
/// &redshift.ParameterGroupParameterArgs{
/// Name:  pulumi.String("enable_user_activity_logging"),
/// Value: pulumi.String("true"),
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
/// import com.pulumi.aws.redshift.ParameterGroup;
/// import com.pulumi.aws.redshift.ParameterGroupArgs;
/// import com.pulumi.aws.redshift.inputs.ParameterGroupParameterArgs;
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
/// var bar = new ParameterGroup("bar", ParameterGroupArgs.builder()
/// .name("parameter-group-test")
/// .family("redshift-1.0")
/// .parameters(
/// ParameterGroupParameterArgs.builder()
/// .name("require_ssl")
/// .value("true")
/// .build(),
/// ParameterGroupParameterArgs.builder()
/// .name("query_group")
/// .value("example")
/// .build(),
/// ParameterGroupParameterArgs.builder()
/// .name("enable_user_activity_logging")
/// .value("true")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: aws:redshift:ParameterGroup
/// properties:
/// name: parameter-group-test
/// family: redshift-1.0
/// parameters:
/// - name: require_ssl
/// value: 'true'
/// - name: query_group
/// value: example
/// - name: enable_user_activity_logging
/// value: 'true'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Parameter Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/parameterGroup:ParameterGroup paramgroup1 parameter-group-test-pulumi
/// ```
class ParameterGroup6 extends CustomResource {
  /// Amazon Resource Name (ARN) of parameter group
  late final Output<String> arn;

  /// The description of the Redshift parameter group. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// The family of the Redshift parameter group.
  late final Output<String> family;

  /// The name of the Redshift parameter.
  late final Output<String> name;

  /// A list of Redshift parameters to apply.
  late final Output<List<ParameterGroupParameter6>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// You can read more about the parameters that Redshift supports in the [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ParameterGroup6(
    String name, {
    ParameterGroupArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/parameterGroup:ParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<ParameterGroupParameter6>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
