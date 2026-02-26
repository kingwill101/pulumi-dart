import 'package:pulumi/pulumi.dart';
import '../findings_filter_finding_criteria/findings_filter_finding_criteria.dart';
import 'findings_filter_args.dart';

/// Provides a resource to manage an [Amazon Macie Findings Filter](https://docs.aws.amazon.com/macie/latest/APIReference/findingsfilters-id.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.macie2.Account("example", {});
/// const test = new aws.macie.FindingsFilter("test", {
/// name: "NAME OF THE FINDINGS FILTER",
/// description: "DESCRIPTION",
/// position: 1,
/// action: "ARCHIVE",
/// findingCriteria: {
/// criterions: [{
/// field: "region",
/// eqs: [current.region],
/// }],
/// },
/// }, {
/// dependsOn: [testAwsMacie2Account],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.macie2.Account("example")
/// test = aws.macie.FindingsFilter("test",
/// name="NAME OF THE FINDINGS FILTER",
/// description="DESCRIPTION",
/// position=1,
/// action="ARCHIVE",
/// finding_criteria={
/// "criterions": [{
/// "field": "region",
/// "eqs": [current["region"]],
/// }],
/// },
/// opts = pulumi.ResourceOptions(depends_on=[test_aws_macie2_account]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Macie2.Account("example");
///
/// var test = new Aws.Macie.FindingsFilter("test", new()
/// {
/// Name = "NAME OF THE FINDINGS FILTER",
/// Description = "DESCRIPTION",
/// Position = 1,
/// Action = "ARCHIVE",
/// FindingCriteria = new Aws.Macie.Inputs.FindingsFilterFindingCriteriaArgs
/// {
/// Criterions = new[]
/// {
/// new Aws.Macie.Inputs.FindingsFilterFindingCriteriaCriterionArgs
/// {
/// Field = "region",
/// Eqs = new[]
/// {
/// current.Region,
/// },
/// },
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// testAwsMacie2Account,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/macie2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := macie2.NewAccount(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// _, err = macie.NewFindingsFilter(ctx, "test", &macie.FindingsFilterArgs{
/// Name:        pulumi.String("NAME OF THE FINDINGS FILTER"),
/// Description: pulumi.String("DESCRIPTION"),
/// Position:    pulumi.Int(1),
/// Action:      pulumi.String("ARCHIVE"),
/// FindingCriteria: &macie.FindingsFilterFindingCriteriaArgs{
/// Criterions: macie.FindingsFilterFindingCriteriaCriterionArray{
/// &macie.FindingsFilterFindingCriteriaCriterionArgs{
/// Field: pulumi.String("region"),
/// Eqs: pulumi.StringArray{
/// current.Region,
/// },
/// },
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// testAwsMacie2Account,
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
/// import com.pulumi.aws.macie2.Account;
/// import com.pulumi.aws.macie.FindingsFilter;
/// import com.pulumi.aws.macie.FindingsFilterArgs;
/// import com.pulumi.aws.macie.inputs.FindingsFilterFindingCriteriaArgs;
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
/// var test = new FindingsFilter("test", FindingsFilterArgs.builder()
/// .name("NAME OF THE FINDINGS FILTER")
/// .description("DESCRIPTION")
/// .position(1)
/// .action("ARCHIVE")
/// .findingCriteria(FindingsFilterFindingCriteriaArgs.builder()
/// .criterions(FindingsFilterFindingCriteriaCriterionArgs.builder()
/// .field("region")
/// .eqs(current.region())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(testAwsMacie2Account)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:macie2:Account
/// test:
/// type: aws:macie:FindingsFilter
/// properties:
/// name: NAME OF THE FINDINGS FILTER
/// description: DESCRIPTION
/// position: 1
/// action: ARCHIVE
/// findingCriteria:
/// criterions:
/// - field: region
/// eqs:
/// - ${current.region}
/// options:
/// dependsOn:
/// - ${testAwsMacie2Account}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.macie.FindingsFilter`" pulumi-lang-dotnet="`aws.macie.FindingsFilter`" pulumi-lang-go="`macie.FindingsFilter`" pulumi-lang-python="`macie.FindingsFilter`" pulumi-lang-yaml="`aws.macie.FindingsFilter`" pulumi-lang-java="`aws.macie.FindingsFilter`">`aws.macie.FindingsFilter`</span> using the id. For example:
///
/// ```sh
/// $ pulumi import aws:macie/findingsFilter:FindingsFilter example abcd1
/// ```
class FindingsFilter extends CustomResource {
  /// The action to perform on findings that meet the filter criteria (<span pulumi-lang-nodejs="`findingCriteria`" pulumi-lang-dotnet="`FindingCriteria`" pulumi-lang-go="`findingCriteria`" pulumi-lang-python="`finding_criteria`" pulumi-lang-yaml="`findingCriteria`" pulumi-lang-java="`findingCriteria`">`finding_criteria`</span>). Valid values are: `ARCHIVE`, suppress (automatically archive) the findings; and, `NOOP`, don't perform any action on the findings.
  late final Output<String> action;

  /// The Amazon Resource Name (ARN) of the Findings Filter.
  late final Output<String> arn;

  /// A custom description of the filter. The description can contain as many as 512 characters.
  late final Output<String?> description;

  /// The criteria to use to filter findings.
  late final Output<FindingsFilterFindingCriteria> findingCriteria;

  /// A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.
  late final Output<int> position;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  FindingsFilter(
    String name, {
    FindingsFilterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie/findingsFilter:FindingsFilter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.findingCriteria =
        Output.createUnknown<FindingsFilterFindingCriteria>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.position = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
