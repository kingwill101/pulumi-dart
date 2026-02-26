import 'package:pulumi/pulumi.dart';
import 'finding_aggregator_args.dart';

/// Manages a Security Hub finding aggregator. Security Hub needs to be enabled in a region in order for the aggregator to pull through findings.
///
/// ## Example Usage
///
/// ### All Regions Usage
///
/// The following example will enable the aggregator for every region.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleFindingAggregator = new aws.securityhub.FindingAggregator("example", {linkingMode: "ALL_REGIONS"}, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_finding_aggregator = aws.securityhub.FindingAggregator("example", linking_mode="ALL_REGIONS",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityHub.Account("example");
///
/// var exampleFindingAggregator = new Aws.SecurityHub.FindingAggregator("example", new()
/// {
/// LinkingMode = "ALL_REGIONS",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewFindingAggregator(ctx, "example", &securityhub.FindingAggregatorArgs{
/// LinkingMode: pulumi.String("ALL_REGIONS"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.FindingAggregator;
/// import com.pulumi.aws.securityhub.FindingAggregatorArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Account("example");
///
/// var exampleFindingAggregator = new FindingAggregator("exampleFindingAggregator", FindingAggregatorArgs.builder()
/// .linkingMode("ALL_REGIONS")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securityhub:Account
/// exampleFindingAggregator:
/// type: aws:securityhub:FindingAggregator
/// name: example
/// properties:
/// linkingMode: ALL_REGIONS
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### All Regions Except Specified Regions Usage
///
/// The following example will enable the aggregator for every region except those specified in <span pulumi-lang-nodejs="`specifiedRegions`" pulumi-lang-dotnet="`SpecifiedRegions`" pulumi-lang-go="`specifiedRegions`" pulumi-lang-python="`specified_regions`" pulumi-lang-yaml="`specifiedRegions`" pulumi-lang-java="`specifiedRegions`">`specified_regions`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleFindingAggregator = new aws.securityhub.FindingAggregator("example", {
/// linkingMode: "ALL_REGIONS_EXCEPT_SPECIFIED",
/// specifiedRegions: [
/// "eu-west-1",
/// "eu-west-2",
/// ],
/// }, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_finding_aggregator = aws.securityhub.FindingAggregator("example",
/// linking_mode="ALL_REGIONS_EXCEPT_SPECIFIED",
/// specified_regions=[
/// "eu-west-1",
/// "eu-west-2",
/// ],
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityHub.Account("example");
///
/// var exampleFindingAggregator = new Aws.SecurityHub.FindingAggregator("example", new()
/// {
/// LinkingMode = "ALL_REGIONS_EXCEPT_SPECIFIED",
/// SpecifiedRegions = new[]
/// {
/// "eu-west-1",
/// "eu-west-2",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewFindingAggregator(ctx, "example", &securityhub.FindingAggregatorArgs{
/// LinkingMode: pulumi.String("ALL_REGIONS_EXCEPT_SPECIFIED"),
/// SpecifiedRegions: pulumi.StringArray{
/// pulumi.String("eu-west-1"),
/// pulumi.String("eu-west-2"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.FindingAggregator;
/// import com.pulumi.aws.securityhub.FindingAggregatorArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Account("example");
///
/// var exampleFindingAggregator = new FindingAggregator("exampleFindingAggregator", FindingAggregatorArgs.builder()
/// .linkingMode("ALL_REGIONS_EXCEPT_SPECIFIED")
/// .specifiedRegions(
/// "eu-west-1",
/// "eu-west-2")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securityhub:Account
/// exampleFindingAggregator:
/// type: aws:securityhub:FindingAggregator
/// name: example
/// properties:
/// linkingMode: ALL_REGIONS_EXCEPT_SPECIFIED
/// specifiedRegions:
/// - eu-west-1
/// - eu-west-2
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Specified Regions Usage
///
/// The following example will enable the aggregator for every region specified in <span pulumi-lang-nodejs="`specifiedRegions`" pulumi-lang-dotnet="`SpecifiedRegions`" pulumi-lang-go="`specifiedRegions`" pulumi-lang-python="`specified_regions`" pulumi-lang-yaml="`specifiedRegions`" pulumi-lang-java="`specifiedRegions`">`specified_regions`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleFindingAggregator = new aws.securityhub.FindingAggregator("example", {
/// linkingMode: "SPECIFIED_REGIONS",
/// specifiedRegions: [
/// "eu-west-1",
/// "eu-west-2",
/// ],
/// }, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_finding_aggregator = aws.securityhub.FindingAggregator("example",
/// linking_mode="SPECIFIED_REGIONS",
/// specified_regions=[
/// "eu-west-1",
/// "eu-west-2",
/// ],
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityHub.Account("example");
///
/// var exampleFindingAggregator = new Aws.SecurityHub.FindingAggregator("example", new()
/// {
/// LinkingMode = "SPECIFIED_REGIONS",
/// SpecifiedRegions = new[]
/// {
/// "eu-west-1",
/// "eu-west-2",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewFindingAggregator(ctx, "example", &securityhub.FindingAggregatorArgs{
/// LinkingMode: pulumi.String("SPECIFIED_REGIONS"),
/// SpecifiedRegions: pulumi.StringArray{
/// pulumi.String("eu-west-1"),
/// pulumi.String("eu-west-2"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.FindingAggregator;
/// import com.pulumi.aws.securityhub.FindingAggregatorArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Account("example");
///
/// var exampleFindingAggregator = new FindingAggregator("exampleFindingAggregator", FindingAggregatorArgs.builder()
/// .linkingMode("SPECIFIED_REGIONS")
/// .specifiedRegions(
/// "eu-west-1",
/// "eu-west-2")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securityhub:Account
/// exampleFindingAggregator:
/// type: aws:securityhub:FindingAggregator
/// name: example
/// properties:
/// linkingMode: SPECIFIED_REGIONS
/// specifiedRegions:
/// - eu-west-1
/// - eu-west-2
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### No Regions Usage
///
/// The following example will enable the aggregator but not link any AWS Regions to the home Region.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleFindingAggregator = new aws.securityhub.FindingAggregator("example", {linkingMode: "NO_REGIONS"}, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_finding_aggregator = aws.securityhub.FindingAggregator("example", linking_mode="NO_REGIONS",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityHub.Account("example");
///
/// var exampleFindingAggregator = new Aws.SecurityHub.FindingAggregator("example", new()
/// {
/// LinkingMode = "NO_REGIONS",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// example,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := securityhub.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = securityhub.NewFindingAggregator(ctx, "example", &securityhub.FindingAggregatorArgs{
/// LinkingMode: pulumi.String("NO_REGIONS"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example,
/// }))
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
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.FindingAggregator;
/// import com.pulumi.aws.securityhub.FindingAggregatorArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var example = new Account("example");
///
/// var exampleFindingAggregator = new FindingAggregator("exampleFindingAggregator", FindingAggregatorArgs.builder()
/// .linkingMode("NO_REGIONS")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(example)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securityhub:Account
/// exampleFindingAggregator:
/// type: aws:securityhub:FindingAggregator
/// name: example
/// properties:
/// linkingMode: NO_REGIONS
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub finding aggregator using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/findingAggregator:FindingAggregator example arn:aws:securityhub:eu-west-1:123456789098:finding-aggregator/abcd1234-abcd-1234-1234-abcdef123456
/// ```
class FindingAggregator extends CustomResource {
  /// Indicates whether to aggregate findings from all of the available Regions or from a specified list. The options are `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS` or `NO_REGIONS`. When `ALL_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED` are used, Security Hub will automatically aggregate findings from new Regions as Security Hub supports them and you opt into them.
  late final Output<String> linkingMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of regions to include or exclude (required if <span pulumi-lang-nodejs="`linkingMode`" pulumi-lang-dotnet="`LinkingMode`" pulumi-lang-go="`linkingMode`" pulumi-lang-python="`linking_mode`" pulumi-lang-yaml="`linkingMode`" pulumi-lang-java="`linkingMode`">`linking_mode`</span> is set to `ALL_REGIONS_EXCEPT_SPECIFIED` or `SPECIFIED_REGIONS`)
  late final Output<List<String>?> specifiedRegions;

  FindingAggregator(
    String name, {
    FindingAggregatorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/findingAggregator:FindingAggregator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.linkingMode = registerOutput<String>('linkingMode');
    this.region = registerOutput<String>('region');
    this.specifiedRegions = registerOutput<List<String>?>('specifiedRegions');
  }
}
