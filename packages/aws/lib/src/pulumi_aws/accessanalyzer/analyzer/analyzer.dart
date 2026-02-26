import 'package:pulumi/pulumi.dart';
import '../analyzer_configuration/analyzer_configuration.dart';
import 'analyzer_args.dart';

/// Manages an Access Analyzer Analyzer. More information can be found in the [Access Analyzer User Guide](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html).
///
/// ## Example Usage
///
/// ### Account Analyzer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.accessanalyzer.Analyzer("example", {analyzerName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accessanalyzer.Analyzer("example", analyzer_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AccessAnalyzer.Analyzer("example", new()
/// {
/// AnalyzerName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accessanalyzer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accessanalyzer.NewAnalyzer(ctx, "example", &accessanalyzer.AnalyzerArgs{
/// AnalyzerName: pulumi.String("example"),
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
/// import com.pulumi.aws.accessanalyzer.Analyzer;
/// import com.pulumi.aws.accessanalyzer.AnalyzerArgs;
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
/// var example = new Analyzer("example", AnalyzerArgs.builder()
/// .analyzerName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:accessanalyzer:Analyzer
/// properties:
/// analyzerName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Organization Analyzer
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.Organization("example", {awsServiceAccessPrincipals: ["access-analyzer.amazonaws.com"]});
/// const exampleAnalyzer = new aws.accessanalyzer.Analyzer("example", {
/// analyzerName: "example",
/// type: "ORGANIZATION",
/// }, {
/// dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.Organization("example", aws_service_access_principals=["access-analyzer.amazonaws.com"])
/// example_analyzer = aws.accessanalyzer.Analyzer("example",
/// analyzer_name="example",
/// type="ORGANIZATION",
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
/// var example = new Aws.Organizations.Organization("example", new()
/// {
/// AwsServiceAccessPrincipals = new[]
/// {
/// "access-analyzer.amazonaws.com",
/// },
/// });
///
/// var exampleAnalyzer = new Aws.AccessAnalyzer.Analyzer("example", new()
/// {
/// AnalyzerName = "example",
/// Type = "ORGANIZATION",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accessanalyzer"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := organizations.NewOrganization(ctx, "example", &organizations.OrganizationArgs{
/// AwsServiceAccessPrincipals: pulumi.StringArray{
/// pulumi.String("access-analyzer.amazonaws.com"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accessanalyzer.NewAnalyzer(ctx, "example", &accessanalyzer.AnalyzerArgs{
/// AnalyzerName: pulumi.String("example"),
/// Type:         pulumi.String("ORGANIZATION"),
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
/// import com.pulumi.aws.organizations.Organization;
/// import com.pulumi.aws.organizations.OrganizationArgs;
/// import com.pulumi.aws.accessanalyzer.Analyzer;
/// import com.pulumi.aws.accessanalyzer.AnalyzerArgs;
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
/// var example = new Organization("example", OrganizationArgs.builder()
/// .awsServiceAccessPrincipals("access-analyzer.amazonaws.com")
/// .build());
///
/// var exampleAnalyzer = new Analyzer("exampleAnalyzer", AnalyzerArgs.builder()
/// .analyzerName("example")
/// .type("ORGANIZATION")
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
/// type: aws:organizations:Organization
/// properties:
/// awsServiceAccessPrincipals:
/// - access-analyzer.amazonaws.com
/// exampleAnalyzer:
/// type: aws:accessanalyzer:Analyzer
/// name: example
/// properties:
/// analyzerName: example
/// type: ORGANIZATION
/// options:
/// dependsOn:
/// - ${example}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Organization Unused Access Analyzer With Analysis Rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.accessanalyzer.Analyzer("example", {
/// analyzerName: "example",
/// type: "ORGANIZATION_UNUSED_ACCESS",
/// configuration: {
/// unusedAccess: {
/// unusedAccessAge: 180,
/// analysisRule: {
/// exclusions: [
/// {
/// accountIds: [
/// "123456789012",
/// "234567890123",
/// ],
/// },
/// {
/// resourceTags: [
/// {
/// key1: "value1",
/// },
/// {
/// key2: "value2",
/// },
/// ],
/// },
/// ],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accessanalyzer.Analyzer("example",
/// analyzer_name="example",
/// type="ORGANIZATION_UNUSED_ACCESS",
/// configuration={
/// "unused_access": {
/// "unused_access_age": 180,
/// "analysis_rule": {
/// "exclusions": [
/// {
/// "account_ids": [
/// "123456789012",
/// "234567890123",
/// ],
/// },
/// {
/// "resource_tags": [
/// {
/// "key1": "value1",
/// },
/// {
/// "key2": "value2",
/// },
/// ],
/// },
/// ],
/// },
/// },
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
/// var example = new Aws.AccessAnalyzer.Analyzer("example", new()
/// {
/// AnalyzerName = "example",
/// Type = "ORGANIZATION_UNUSED_ACCESS",
/// Configuration = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationArgs
/// {
/// UnusedAccess = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationUnusedAccessArgs
/// {
/// UnusedAccessAge = 180,
/// AnalysisRule = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationUnusedAccessAnalysisRuleArgs
/// {
/// Exclusions = new[]
/// {
/// new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationUnusedAccessAnalysisRuleExclusionArgs
/// {
/// AccountIds = new[]
/// {
/// "123456789012",
/// "234567890123",
/// },
/// },
/// new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationUnusedAccessAnalysisRuleExclusionArgs
/// {
/// ResourceTags = new[]
/// {
///
/// {
/// { "key1", "value1" },
/// },
///
/// {
/// { "key2", "value2" },
/// },
/// },
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accessanalyzer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accessanalyzer.NewAnalyzer(ctx, "example", &accessanalyzer.AnalyzerArgs{
/// AnalyzerName: pulumi.String("example"),
/// Type:         pulumi.String("ORGANIZATION_UNUSED_ACCESS"),
/// Configuration: &accessanalyzer.AnalyzerConfigurationArgs{
/// UnusedAccess: &accessanalyzer.AnalyzerConfigurationUnusedAccessArgs{
/// UnusedAccessAge: pulumi.Int(180),
/// AnalysisRule: &accessanalyzer.AnalyzerConfigurationUnusedAccessAnalysisRuleArgs{
/// Exclusions: accessanalyzer.AnalyzerConfigurationUnusedAccessAnalysisRuleExclusionArray{
/// &accessanalyzer.AnalyzerConfigurationUnusedAccessAnalysisRuleExclusionArgs{
/// AccountIds: pulumi.StringArray{
/// pulumi.String("123456789012"),
/// pulumi.String("234567890123"),
/// },
/// },
/// &accessanalyzer.AnalyzerConfigurationUnusedAccessAnalysisRuleExclusionArgs{
/// ResourceTags: pulumi.StringMapArray{
/// pulumi.StringMap{
/// "key1": pulumi.String("value1"),
/// },
/// pulumi.StringMap{
/// "key2": pulumi.String("value2"),
/// },
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.accessanalyzer.Analyzer;
/// import com.pulumi.aws.accessanalyzer.AnalyzerArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationUnusedAccessArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationUnusedAccessAnalysisRuleArgs;
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
/// var example = new Analyzer("example", AnalyzerArgs.builder()
/// .analyzerName("example")
/// .type("ORGANIZATION_UNUSED_ACCESS")
/// .configuration(AnalyzerConfigurationArgs.builder()
/// .unusedAccess(AnalyzerConfigurationUnusedAccessArgs.builder()
/// .unusedAccessAge(180)
/// .analysisRule(AnalyzerConfigurationUnusedAccessAnalysisRuleArgs.builder()
/// .exclusions(
/// AnalyzerConfigurationUnusedAccessAnalysisRuleExclusionArgs.builder()
/// .accountIds(
/// "123456789012",
/// "234567890123")
/// .build(),
/// AnalyzerConfigurationUnusedAccessAnalysisRuleExclusionArgs.builder()
/// .resourceTags(
/// Map.of("key1", "value1"),
/// Map.of("key2", "value2"))
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:accessanalyzer:Analyzer
/// properties:
/// analyzerName: example
/// type: ORGANIZATION_UNUSED_ACCESS
/// configuration:
/// unusedAccess:
/// unusedAccessAge: 180
/// analysisRule:
/// exclusions:
/// - accountIds:
/// - '123456789012'
/// - '234567890123'
/// - resourceTags:
/// - key1: value1
/// - key2: value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Account Internal Access Analyzer by Resource Types
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.accessanalyzer.Analyzer("test", {
/// analyzerName: "example",
/// type: "ORGANIZATION_INTERNAL_ACCESS",
/// configuration: {
/// internalAccess: {
/// analysisRule: {
/// inclusions: [{
/// resourceTypes: [
/// "AWS::S3::Bucket",
/// "AWS::RDS::DBSnapshot",
/// "AWS::DynamoDB::Table",
/// ],
/// }],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.accessanalyzer.Analyzer("test",
/// analyzer_name="example",
/// type="ORGANIZATION_INTERNAL_ACCESS",
/// configuration={
/// "internal_access": {
/// "analysis_rule": {
/// "inclusions": [{
/// "resource_types": [
/// "AWS::S3::Bucket",
/// "AWS::RDS::DBSnapshot",
/// "AWS::DynamoDB::Table",
/// ],
/// }],
/// },
/// },
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
/// var test = new Aws.AccessAnalyzer.Analyzer("test", new()
/// {
/// AnalyzerName = "example",
/// Type = "ORGANIZATION_INTERNAL_ACCESS",
/// Configuration = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationArgs
/// {
/// InternalAccess = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationInternalAccessArgs
/// {
/// AnalysisRule = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationInternalAccessAnalysisRuleArgs
/// {
/// Inclusions = new[]
/// {
/// new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationInternalAccessAnalysisRuleInclusionArgs
/// {
/// ResourceTypes = new[]
/// {
/// "AWS::S3::Bucket",
/// "AWS::RDS::DBSnapshot",
/// "AWS::DynamoDB::Table",
/// },
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accessanalyzer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accessanalyzer.NewAnalyzer(ctx, "test", &accessanalyzer.AnalyzerArgs{
/// AnalyzerName: pulumi.String("example"),
/// Type:         pulumi.String("ORGANIZATION_INTERNAL_ACCESS"),
/// Configuration: &accessanalyzer.AnalyzerConfigurationArgs{
/// InternalAccess: &accessanalyzer.AnalyzerConfigurationInternalAccessArgs{
/// AnalysisRule: &accessanalyzer.AnalyzerConfigurationInternalAccessAnalysisRuleArgs{
/// Inclusions: accessanalyzer.AnalyzerConfigurationInternalAccessAnalysisRuleInclusionArray{
/// &accessanalyzer.AnalyzerConfigurationInternalAccessAnalysisRuleInclusionArgs{
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("AWS::S3::Bucket"),
/// pulumi.String("AWS::RDS::DBSnapshot"),
/// pulumi.String("AWS::DynamoDB::Table"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.accessanalyzer.Analyzer;
/// import com.pulumi.aws.accessanalyzer.AnalyzerArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationInternalAccessArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationInternalAccessAnalysisRuleArgs;
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
/// var test = new Analyzer("test", AnalyzerArgs.builder()
/// .analyzerName("example")
/// .type("ORGANIZATION_INTERNAL_ACCESS")
/// .configuration(AnalyzerConfigurationArgs.builder()
/// .internalAccess(AnalyzerConfigurationInternalAccessArgs.builder()
/// .analysisRule(AnalyzerConfigurationInternalAccessAnalysisRuleArgs.builder()
/// .inclusions(AnalyzerConfigurationInternalAccessAnalysisRuleInclusionArgs.builder()
/// .resourceTypes(
/// "AWS::S3::Bucket",
/// "AWS::RDS::DBSnapshot",
/// "AWS::DynamoDB::Table")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:accessanalyzer:Analyzer
/// properties:
/// analyzerName: example
/// type: ORGANIZATION_INTERNAL_ACCESS
/// configuration:
/// internalAccess:
/// analysisRule:
/// inclusions:
/// - resourceTypes:
/// - AWS::S3::Bucket
/// - AWS::RDS::DBSnapshot
/// - AWS::DynamoDB::Table
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Organization Internal Access Analyzer by Account ID and Resource ARN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.accessanalyzer.Analyzer("test", {
/// analyzerName: "example",
/// type: "ORGANIZATION_INTERNAL_ACCESS",
/// configuration: {
/// internalAccess: {
/// analysisRule: {
/// inclusions: [{
/// accountIds: ["123456789012"],
/// resourceArns: ["arn:aws:s3:::my-example-bucket"],
/// }],
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.accessanalyzer.Analyzer("test",
/// analyzer_name="example",
/// type="ORGANIZATION_INTERNAL_ACCESS",
/// configuration={
/// "internal_access": {
/// "analysis_rule": {
/// "inclusions": [{
/// "account_ids": ["123456789012"],
/// "resource_arns": ["arn:aws:s3:::my-example-bucket"],
/// }],
/// },
/// },
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
/// var test = new Aws.AccessAnalyzer.Analyzer("test", new()
/// {
/// AnalyzerName = "example",
/// Type = "ORGANIZATION_INTERNAL_ACCESS",
/// Configuration = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationArgs
/// {
/// InternalAccess = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationInternalAccessArgs
/// {
/// AnalysisRule = new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationInternalAccessAnalysisRuleArgs
/// {
/// Inclusions = new[]
/// {
/// new Aws.AccessAnalyzer.Inputs.AnalyzerConfigurationInternalAccessAnalysisRuleInclusionArgs
/// {
/// AccountIds = new[]
/// {
/// "123456789012",
/// },
/// ResourceArns = new[]
/// {
/// "arn:aws:s3:::my-example-bucket",
/// },
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accessanalyzer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := accessanalyzer.NewAnalyzer(ctx, "test", &accessanalyzer.AnalyzerArgs{
/// AnalyzerName: pulumi.String("example"),
/// Type:         pulumi.String("ORGANIZATION_INTERNAL_ACCESS"),
/// Configuration: &accessanalyzer.AnalyzerConfigurationArgs{
/// InternalAccess: &accessanalyzer.AnalyzerConfigurationInternalAccessArgs{
/// AnalysisRule: &accessanalyzer.AnalyzerConfigurationInternalAccessAnalysisRuleArgs{
/// Inclusions: accessanalyzer.AnalyzerConfigurationInternalAccessAnalysisRuleInclusionArray{
/// &accessanalyzer.AnalyzerConfigurationInternalAccessAnalysisRuleInclusionArgs{
/// AccountIds: pulumi.StringArray{
/// pulumi.String("123456789012"),
/// },
/// ResourceArns: pulumi.StringArray{
/// pulumi.String("arn:aws:s3:::my-example-bucket"),
/// },
/// },
/// },
/// },
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
/// import com.pulumi.aws.accessanalyzer.Analyzer;
/// import com.pulumi.aws.accessanalyzer.AnalyzerArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationInternalAccessArgs;
/// import com.pulumi.aws.accessanalyzer.inputs.AnalyzerConfigurationInternalAccessAnalysisRuleArgs;
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
/// var test = new Analyzer("test", AnalyzerArgs.builder()
/// .analyzerName("example")
/// .type("ORGANIZATION_INTERNAL_ACCESS")
/// .configuration(AnalyzerConfigurationArgs.builder()
/// .internalAccess(AnalyzerConfigurationInternalAccessArgs.builder()
/// .analysisRule(AnalyzerConfigurationInternalAccessAnalysisRuleArgs.builder()
/// .inclusions(AnalyzerConfigurationInternalAccessAnalysisRuleInclusionArgs.builder()
/// .accountIds("123456789012")
/// .resourceArns("arn:aws:s3:::my-example-bucket")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:accessanalyzer:Analyzer
/// properties:
/// analyzerName: example
/// type: ORGANIZATION_INTERNAL_ACCESS
/// configuration:
/// internalAccess:
/// analysisRule:
/// inclusions:
/// - accountIds:
/// - '123456789012'
/// resourceArns:
/// - arn:aws:s3:::my-example-bucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Access Analyzer Analyzers using the <span pulumi-lang-nodejs="`analyzerName`" pulumi-lang-dotnet="`AnalyzerName`" pulumi-lang-go="`analyzerName`" pulumi-lang-python="`analyzer_name`" pulumi-lang-yaml="`analyzerName`" pulumi-lang-java="`analyzerName`">`analyzer_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:accessanalyzer/analyzer:Analyzer example example
/// ```
class Analyzer extends CustomResource {
  /// Name of the Analyzer.
  ///
  /// The following arguments are optional:
  late final Output<String> analyzerName;

  /// ARN of the Analyzer.
  late final Output<String> arn;

  /// A block that specifies the configuration of the analyzer. See <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> Block for details.
  late final Output<AnalyzerConfiguration?> configuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type that represents the zone of trust or scope for the analyzer. Valid values are `ACCOUNT`, `ACCOUNT_INTERNAL_ACCESS`, `ACCOUNT_UNUSED_ACCESS`, `ORGANIZATION`, `ORGANIZATION_INTERNAL_ACCESS`, `ORGANIZATION_UNUSED_ACCESS`. Defaults to `ACCOUNT`.
  late final Output<String?> type;

  Analyzer(
    String name, {
    AnalyzerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:accessanalyzer/analyzer:Analyzer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.analyzerName = registerOutput<String>('analyzerName');
    this.arn = registerOutput<String>('arn');
    this.configuration =
        registerOutput<AnalyzerConfiguration?>('configuration');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
  }
}
