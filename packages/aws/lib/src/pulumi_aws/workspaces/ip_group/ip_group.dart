import 'package:pulumi/pulumi.dart';
import '../ip_group_rule/ip_group_rule.dart';
import 'ip_group_args.dart';

/// Provides an IP access control group in AWS WorkSpaces Service
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const contractors = new aws.workspaces.IpGroup("contractors", {
/// name: "Contractors",
/// description: "Contractors IP access control group",
/// rules: [
/// {
/// source: "150.24.14.0/24",
/// description: "NY",
/// },
/// {
/// source: "125.191.14.85/32",
/// description: "LA",
/// },
/// {
/// source: "44.98.100.0/24",
/// description: "STL",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// contractors = aws.workspaces.IpGroup("contractors",
/// name="Contractors",
/// description="Contractors IP access control group",
/// rules=[
/// {
/// "source": "150.24.14.0/24",
/// "description": "NY",
/// },
/// {
/// "source": "125.191.14.85/32",
/// "description": "LA",
/// },
/// {
/// "source": "44.98.100.0/24",
/// "description": "STL",
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
/// var contractors = new Aws.Workspaces.IpGroup("contractors", new()
/// {
/// Name = "Contractors",
/// Description = "Contractors IP access control group",
/// Rules = new[]
/// {
/// new Aws.Workspaces.Inputs.IpGroupRuleArgs
/// {
/// Source = "150.24.14.0/24",
/// Description = "NY",
/// },
/// new Aws.Workspaces.Inputs.IpGroupRuleArgs
/// {
/// Source = "125.191.14.85/32",
/// Description = "LA",
/// },
/// new Aws.Workspaces.Inputs.IpGroupRuleArgs
/// {
/// Source = "44.98.100.0/24",
/// Description = "STL",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := workspaces.NewIpGroup(ctx, "contractors", &workspaces.IpGroupArgs{
/// Name:        pulumi.String("Contractors"),
/// Description: pulumi.String("Contractors IP access control group"),
/// Rules: workspaces.IpGroupRuleArray{
/// &workspaces.IpGroupRuleArgs{
/// Source:      pulumi.String("150.24.14.0/24"),
/// Description: pulumi.String("NY"),
/// },
/// &workspaces.IpGroupRuleArgs{
/// Source:      pulumi.String("125.191.14.85/32"),
/// Description: pulumi.String("LA"),
/// },
/// &workspaces.IpGroupRuleArgs{
/// Source:      pulumi.String("44.98.100.0/24"),
/// Description: pulumi.String("STL"),
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
/// import com.pulumi.aws.workspaces.IpGroup;
/// import com.pulumi.aws.workspaces.IpGroupArgs;
/// import com.pulumi.aws.workspaces.inputs.IpGroupRuleArgs;
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
/// var contractors = new IpGroup("contractors", IpGroupArgs.builder()
/// .name("Contractors")
/// .description("Contractors IP access control group")
/// .rules(
/// IpGroupRuleArgs.builder()
/// .source("150.24.14.0/24")
/// .description("NY")
/// .build(),
/// IpGroupRuleArgs.builder()
/// .source("125.191.14.85/32")
/// .description("LA")
/// .build(),
/// IpGroupRuleArgs.builder()
/// .source("44.98.100.0/24")
/// .description("STL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// contractors:
/// type: aws:workspaces:IpGroup
/// properties:
/// name: Contractors
/// description: Contractors IP access control group
/// rules:
/// - source: 150.24.14.0/24
/// description: NY
/// - source: 125.191.14.85/32
/// description: LA
/// - source: 44.98.100.0/24
/// description: STL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces IP groups using their GroupID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/ipGroup:IpGroup example wsipg-488lrtl3k
/// ```
class IpGroup extends CustomResource {
  /// The description of the IP group.
  late final Output<String?> description;

  /// The name of the IP group.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more pairs specifying the IP group rule (in CIDR format) from which web requests originate.
  late final Output<List<IpGroupRule>?> rules;

  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  IpGroup(
    String name, {
    IpGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/ipGroup:IpGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<IpGroupRule>?>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
