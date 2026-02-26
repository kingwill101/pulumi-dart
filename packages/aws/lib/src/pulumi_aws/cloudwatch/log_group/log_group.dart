import 'package:pulumi/pulumi.dart';
import 'log_group_args.dart';

/// Provides a CloudWatch Log Group resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const yada = new aws.cloudwatch.LogGroup("yada", {
/// name: "Yada",
/// tags: {
/// Environment: "production",
/// Application: "serviceA",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// yada = aws.cloudwatch.LogGroup("yada",
/// name="Yada",
/// tags={
/// "Environment": "production",
/// "Application": "serviceA",
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
/// var yada = new Aws.CloudWatch.LogGroup("yada", new()
/// {
/// Name = "Yada",
/// Tags =
/// {
/// { "Environment", "production" },
/// { "Application", "serviceA" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewLogGroup(ctx, "yada", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("Yada"),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("production"),
/// "Application": pulumi.String("serviceA"),
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
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
/// var yada = new LogGroup("yada", LogGroupArgs.builder()
/// .name("Yada")
/// .tags(Map.ofEntries(
/// Map.entry("Environment", "production"),
/// Map.entry("Application", "serviceA")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// yada:
/// type: aws:cloudwatch:LogGroup
/// properties:
/// name: Yada
/// tags:
/// Environment: production
/// Application: serviceA
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> (String) Name of the CloudWatch log group.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Cloudwatch Log Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logGroup:LogGroup example yada
/// ```
class LogGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) specifying the log group. Any `:*` suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix.
  late final Output<String> arn;

  /// Boolean to indicate whether deletion protection is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Once set, switching to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> requires explicitly specifying <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> rather than removing this argument.
  late final Output<bool> deletionProtectionEnabled;

  /// The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group,
  /// AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires
  /// permissions for the CMK whenever the encrypted data is requested.
  late final Output<String?> kmsKeyId;

  /// Specified the log class of the log group. Possible values are: `STANDARD`, `INFREQUENT_ACCESS`, or `DELIVERY`.
  late final Output<String> logGroupClass;

  /// The name of the log group. If omitted, this provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the number of days
  /// you want to retain log events in the specified log group.  Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0.
  /// If you select 0, the events in the log group are always retained and never expire. If <span pulumi-lang-nodejs="`logGroupClass`" pulumi-lang-dotnet="`LogGroupClass`" pulumi-lang-go="`logGroupClass`" pulumi-lang-python="`log_group_class`" pulumi-lang-yaml="`logGroupClass`" pulumi-lang-java="`logGroupClass`">`log_group_class`</span> is set to `DELIVERY`, this argument is ignored and <span pulumi-lang-nodejs="`retentionInDays`" pulumi-lang-dotnet="`RetentionInDays`" pulumi-lang-go="`retentionInDays`" pulumi-lang-python="`retention_in_days`" pulumi-lang-yaml="`retentionInDays`" pulumi-lang-java="`retentionInDays`">`retention_in_days`</span> is forcibly set to 2.
  late final Output<int?> retentionInDays;

  /// Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the state.
  late final Output<bool?> skipDestroy;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  LogGroup(
    String name, {
    LogGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logGroup:LogGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deletionProtectionEnabled = Output.createUnknown<bool>();
    this.kmsKeyId = Output.createUnknown<String?>();
    this.logGroupClass = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.retentionInDays = Output.createUnknown<int?>();
    this.skipDestroy = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
