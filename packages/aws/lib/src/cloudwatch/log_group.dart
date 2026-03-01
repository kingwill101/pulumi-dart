import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_group_args.dart';

/// Provides a CloudWatch Log Group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const yada = new aws.cloudwatch.LogGroup("yada", {
///     name: "Yada",
///     tags: {
///         Environment: "production",
///         Application: "serviceA",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// yada = aws.cloudwatch.LogGroup("yada",
///     name="Yada",
///     tags={
///         "Environment": "production",
///         "Application": "serviceA",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var yada = new Aws.CloudWatch.LogGroup("yada", new()
///     {
///         Name = "Yada",
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Application", "serviceA" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewLogGroup(ctx, "yada", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("Yada"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Application": pulumi.String("serviceA"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var yada = new LogGroup("yada", LogGroupArgs.builder()
///             .name("Yada")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Application", "serviceA")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   yada:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: Yada
///       tags:
///         Environment: production
///         Application: serviceA
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the CloudWatch log group.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Cloudwatch Log Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logGroup:LogGroup example yada
/// ```
class LogGroup extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the log group. Any `:*` suffix added by the API, denoting all CloudWatch Log Streams under the CloudWatch Log Group, is removed for greater compatibility with other AWS services that do not accept the suffix.
  late final pulumi.Output<String> arn;

  /// Boolean to indicate whether deletion protection is enabled. Defaults to `false`. Once set, switching to `false` requires explicitly specifying `false` rather than removing this argument.
  late final pulumi.Output<bool> deletionProtectionEnabled;

  /// The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group,
  /// AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires
  /// permissions for the CMK whenever the encrypted data is requested.
  late final pulumi.Output<String?> kmsKeyId;

  /// Specified the log class of the log group. Possible values are: `STANDARD`, `INFREQUENT_ACCESS`, or `DELIVERY`.
  late final pulumi.Output<String> logGroupClass;

  /// The name of the log group. If omitted, this provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the number of days
  /// you want to retain log events in the specified log group.  Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0.
  /// If you select 0, the events in the log group are always retained and never expire. If `log_group_class` is set to `DELIVERY`, this argument is ignored and `retention_in_days` is forcibly set to 2.
  late final pulumi.Output<int?> retentionInDays;

  /// Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the state.
  late final pulumi.Output<bool?> skipDestroy;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LogGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogGroup]. {@macro pulumi_cloudwatch_log_group_log_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogGroup(
    String name, {
    LogGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/logGroup:LogGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtectionEnabled = registerOutput<bool>(
      'deletionProtectionEnabled',
    );
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.logGroupClass = registerOutput<String>('logGroupClass');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.retentionInDays = registerOutput<int?>('retentionInDays');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
