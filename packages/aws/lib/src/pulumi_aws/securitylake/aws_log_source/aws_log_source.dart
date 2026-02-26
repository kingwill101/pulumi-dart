import 'package:pulumi/pulumi.dart';
import '../aws_log_source_source/aws_log_source_source.dart';
import 'aws_log_source_args.dart';

/// Resource for managing an Amazon Security Lake AWS Log Source.
///
/// > **NOTE:** A single <span pulumi-lang-nodejs="`aws.securitylake.AwsLogSource`" pulumi-lang-dotnet="`aws.securitylake.AwsLogSource`" pulumi-lang-go="`securitylake.AwsLogSource`" pulumi-lang-python="`securitylake.AwsLogSource`" pulumi-lang-yaml="`aws.securitylake.AwsLogSource`" pulumi-lang-java="`aws.securitylake.AwsLogSource`">`aws.securitylake.AwsLogSource`</span> should be used to configure a log source across all regions and accounts.
///
/// > **NOTE:** The underlying <span pulumi-lang-nodejs="`aws.securitylake.DataLake`" pulumi-lang-dotnet="`aws.securitylake.DataLake`" pulumi-lang-go="`securitylake.DataLake`" pulumi-lang-python="`securitylake.DataLake`" pulumi-lang-yaml="`aws.securitylake.DataLake`" pulumi-lang-java="`aws.securitylake.DataLake`">`aws.securitylake.DataLake`</span> must be configured before creating the <span pulumi-lang-nodejs="`aws.securitylake.AwsLogSource`" pulumi-lang-dotnet="`aws.securitylake.AwsLogSource`" pulumi-lang-go="`securitylake.AwsLogSource`" pulumi-lang-python="`securitylake.AwsLogSource`" pulumi-lang-yaml="`aws.securitylake.AwsLogSource`" pulumi-lang-java="`aws.securitylake.AwsLogSource`">`aws.securitylake.AwsLogSource`</span>. Use a <span pulumi-lang-nodejs="`dependsOn`" pulumi-lang-dotnet="`DependsOn`" pulumi-lang-go="`dependsOn`" pulumi-lang-python="`depends_on`" pulumi-lang-yaml="`dependsOn`" pulumi-lang-java="`dependsOn`">`depends_on`</span> statement.
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
/// const example = new aws.securitylake.AwsLogSource("example", {source: {
/// accounts: ["123456789012"],
/// regions: ["eu-west-1"],
/// sourceName: "ROUTE53",
/// }}, {
/// dependsOn: [exampleAwsSecuritylakeDataLake],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.AwsLogSource("example", source={
/// "accounts": ["123456789012"],
/// "regions": ["eu-west-1"],
/// "source_name": "ROUTE53",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_aws_securitylake_data_lake]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SecurityLake.AwsLogSource("example", new()
/// {
/// Source = new Aws.SecurityLake.Inputs.AwsLogSourceSourceArgs
/// {
/// Accounts = new[]
/// {
/// "123456789012",
/// },
/// Regions = new[]
/// {
/// "eu-west-1",
/// },
/// SourceName = "ROUTE53",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsSecuritylakeDataLake,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitylake.NewAwsLogSource(ctx, "example", &securitylake.AwsLogSourceArgs{
/// Source: &securitylake.AwsLogSourceSourceArgs{
/// Accounts: pulumi.StringArray{
/// pulumi.String("123456789012"),
/// },
/// Regions: pulumi.StringArray{
/// pulumi.String("eu-west-1"),
/// },
/// SourceName: pulumi.String("ROUTE53"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsSecuritylakeDataLake,
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
/// import com.pulumi.aws.securitylake.AwsLogSource;
/// import com.pulumi.aws.securitylake.AwsLogSourceArgs;
/// import com.pulumi.aws.securitylake.inputs.AwsLogSourceSourceArgs;
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
/// var example = new AwsLogSource("example", AwsLogSourceArgs.builder()
/// .source(AwsLogSourceSourceArgs.builder()
/// .accounts("123456789012")
/// .regions("eu-west-1")
/// .sourceName("ROUTE53")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleAwsSecuritylakeDataLake)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securitylake:AwsLogSource
/// properties:
/// source:
/// accounts:
/// - '123456789012'
/// regions:
/// - eu-west-1
/// sourceName: ROUTE53
/// options:
/// dependsOn:
/// - ${exampleAwsSecuritylakeDataLake}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AWS log sources using the source name. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/awsLogSource:AwsLogSource example ROUTE53
/// ```
class AwsLogSource extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specify the natively-supported AWS service to add as a source in Security Lake.
  late final Output<AwsLogSourceSource> source;

  AwsLogSource(
    String name, {
    AwsLogSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/awsLogSource:AwsLogSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.source = registerOutput<AwsLogSourceSource>('source');
  }
}
