import 'package:pulumi/pulumi.dart';
import '../input_security_group_whitelist_rule/input_security_group_whitelist_rule.dart';
import 'input_security_group_args.dart';

/// Resource for managing an AWS MediaLive InputSecurityGroup.
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
/// const example = new aws.medialive.InputSecurityGroup("example", {
/// whitelistRules: [{
/// cidr: "10.0.0.8/32",
/// }],
/// tags: {
/// ENVIRONMENT: "prod",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.medialive.InputSecurityGroup("example",
/// whitelist_rules=[{
/// "cidr": "10.0.0.8/32",
/// }],
/// tags={
/// "ENVIRONMENT": "prod",
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
/// var example = new Aws.MediaLive.InputSecurityGroup("example", new()
/// {
/// WhitelistRules = new[]
/// {
/// new Aws.MediaLive.Inputs.InputSecurityGroupWhitelistRuleArgs
/// {
/// Cidr = "10.0.0.8/32",
/// },
/// },
/// Tags =
/// {
/// { "ENVIRONMENT", "prod" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/medialive"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := medialive.NewInputSecurityGroup(ctx, "example", &medialive.InputSecurityGroupArgs{
/// WhitelistRules: medialive.InputSecurityGroupWhitelistRuleArray{
/// &medialive.InputSecurityGroupWhitelistRuleArgs{
/// Cidr: pulumi.String("10.0.0.8/32"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "ENVIRONMENT": pulumi.String("prod"),
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
/// import com.pulumi.aws.medialive.InputSecurityGroup;
/// import com.pulumi.aws.medialive.InputSecurityGroupArgs;
/// import com.pulumi.aws.medialive.inputs.InputSecurityGroupWhitelistRuleArgs;
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
/// var example = new InputSecurityGroup("example", InputSecurityGroupArgs.builder()
/// .whitelistRules(InputSecurityGroupWhitelistRuleArgs.builder()
/// .cidr("10.0.0.8/32")
/// .build())
/// .tags(Map.of("ENVIRONMENT", "prod"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:medialive:InputSecurityGroup
/// properties:
/// whitelistRules:
/// - cidr: 10.0.0.8/32
/// tags:
/// ENVIRONMENT: prod
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import MediaLive InputSecurityGroup using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/inputSecurityGroup:InputSecurityGroup example 123456
/// ```
class InputSecurityGroup extends CustomResource {
  /// ARN of the InputSecurityGroup.
  late final Output<String> arn;

  /// The list of inputs currently using this InputSecurityGroup.
  late final Output<List<String>> inputs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the InputSecurityGroup. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Whitelist rules. See Whitelist Rules for more details.
  ///
  /// The following arguments are optional:
  late final Output<List<InputSecurityGroupWhitelistRule>> whitelistRules;

  InputSecurityGroup(
    String name, {
    InputSecurityGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:medialive/inputSecurityGroup:InputSecurityGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.inputs = registerOutput<List<String>>('inputs');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.whitelistRules =
        registerOutput<List<InputSecurityGroupWhitelistRule>>('whitelistRules');
  }
}
