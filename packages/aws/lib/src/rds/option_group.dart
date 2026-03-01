import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_group_args.dart';
import 'option_group_option.dart';

/// Provides an RDS DB option group resource. Documentation of the available options for various RDS engines can be found at:
///
/// * [MariaDB Options](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.MariaDB.Options.html)
/// * [Microsoft SQL Server Options](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.SQLServer.Options.html)
/// * [MySQL Options](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.MySQL.Options.html)
/// * [Oracle Options](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.Options.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.OptionGroup("example", {
///     name: "option-group-test",
///     optionGroupDescription: "Option Group",
///     engineName: "sqlserver-ee",
///     majorEngineVersion: "11.00",
///     options: [
///         {
///             optionName: "Timezone",
///             optionSettings: [{
///                 name: "TIME_ZONE",
///                 value: "UTC",
///             }],
///         },
///         {
///             optionName: "SQLSERVER_BACKUP_RESTORE",
///             optionSettings: [{
///                 name: "IAM_ROLE_ARN",
///                 value: exampleAwsIamRole.arn,
///             }],
///         },
///         {
///             optionName: "TDE",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.OptionGroup("example",
///     name="option-group-test",
///     option_group_description="Option Group",
///     engine_name="sqlserver-ee",
///     major_engine_version="11.00",
///     options=[
///         {
///             "option_name": "Timezone",
///             "option_settings": [{
///                 "name": "TIME_ZONE",
///                 "value": "UTC",
///             }],
///         },
///         {
///             "option_name": "SQLSERVER_BACKUP_RESTORE",
///             "option_settings": [{
///                 "name": "IAM_ROLE_ARN",
///                 "value": example_aws_iam_role["arn"],
///             }],
///         },
///         {
///             "option_name": "TDE",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.OptionGroup("example", new()
///     {
///         Name = "option-group-test",
///         OptionGroupDescription = "Option Group",
///         EngineName = "sqlserver-ee",
///         MajorEngineVersion = "11.00",
///         Options = new[]
///         {
///             new Aws.Rds.Inputs.OptionGroupOptionArgs
///             {
///                 OptionName = "Timezone",
///                 OptionSettings = new[]
///                 {
///                     new Aws.Rds.Inputs.OptionGroupOptionOptionSettingArgs
///                     {
///                         Name = "TIME_ZONE",
///                         Value = "UTC",
///                     },
///                 },
///             },
///             new Aws.Rds.Inputs.OptionGroupOptionArgs
///             {
///                 OptionName = "SQLSERVER_BACKUP_RESTORE",
///                 OptionSettings = new[]
///                 {
///                     new Aws.Rds.Inputs.OptionGroupOptionOptionSettingArgs
///                     {
///                         Name = "IAM_ROLE_ARN",
///                         Value = exampleAwsIamRole.Arn,
///                     },
///                 },
///             },
///             new Aws.Rds.Inputs.OptionGroupOptionArgs
///             {
///                 OptionName = "TDE",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewOptionGroup(ctx, "example", &rds.OptionGroupArgs{
/// 			Name:                   pulumi.String("option-group-test"),
/// 			OptionGroupDescription: pulumi.String("Option Group"),
/// 			EngineName:             pulumi.String("sqlserver-ee"),
/// 			MajorEngineVersion:     pulumi.String("11.00"),
/// 			Options: rds.OptionGroupOptionArray{
/// 				&rds.OptionGroupOptionArgs{
/// 					OptionName: pulumi.String("Timezone"),
/// 					OptionSettings: rds.OptionGroupOptionOptionSettingArray{
/// 						&rds.OptionGroupOptionOptionSettingArgs{
/// 							Name:  pulumi.String("TIME_ZONE"),
/// 							Value: pulumi.String("UTC"),
/// 						},
/// 					},
/// 				},
/// 				&rds.OptionGroupOptionArgs{
/// 					OptionName: pulumi.String("SQLSERVER_BACKUP_RESTORE"),
/// 					OptionSettings: rds.OptionGroupOptionOptionSettingArray{
/// 						&rds.OptionGroupOptionOptionSettingArgs{
/// 							Name:  pulumi.String("IAM_ROLE_ARN"),
/// 							Value: pulumi.Any(exampleAwsIamRole.Arn),
/// 						},
/// 					},
/// 				},
/// 				&rds.OptionGroupOptionArgs{
/// 					OptionName: pulumi.String("TDE"),
/// 				},
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
/// import com.pulumi.aws.rds.OptionGroup;
/// import com.pulumi.aws.rds.OptionGroupArgs;
/// import com.pulumi.aws.rds.inputs.OptionGroupOptionArgs;
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
///         var example = new OptionGroup("example", OptionGroupArgs.builder()
///             .name("option-group-test")
///             .optionGroupDescription("Option Group")
///             .engineName("sqlserver-ee")
///             .majorEngineVersion("11.00")
///             .options(
///                 OptionGroupOptionArgs.builder()
///                     .optionName("Timezone")
///                     .optionSettings(OptionGroupOptionOptionSettingArgs.builder()
///                         .name("TIME_ZONE")
///                         .value("UTC")
///                         .build())
///                     .build(),
///                 OptionGroupOptionArgs.builder()
///                     .optionName("SQLSERVER_BACKUP_RESTORE")
///                     .optionSettings(OptionGroupOptionOptionSettingArgs.builder()
///                         .name("IAM_ROLE_ARN")
///                         .value(exampleAwsIamRole.arn())
///                         .build())
///                     .build(),
///                 OptionGroupOptionArgs.builder()
///                     .optionName("TDE")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:OptionGroup
///     properties:
///       name: option-group-test
///       optionGroupDescription: Option Group
///       engineName: sqlserver-ee
///       majorEngineVersion: '11.00'
///       options:
///         - optionName: Timezone
///           optionSettings:
///             - name: TIME_ZONE
///               value: UTC
///         - optionName: SQLSERVER_BACKUP_RESTORE
///           optionSettings:
///             - name: IAM_ROLE_ARN
///               value: ${exampleAwsIamRole.arn}
///         - optionName: TDE
/// ```
///
///
/// > **Note:** Any modifications to the `aws.rds.OptionGroup` are set to happen immediately as we default to applying immediately.
///
/// > **WARNING:** You can perform a destroy on a `aws.rds.OptionGroup`, as long as it is not associated with any Amazon RDS resource. An option group can be associated with a DB instance, a manual DB snapshot, or an automated DB snapshot.
///
/// If you try to delete an option group that is associated with an Amazon RDS resource, an error similar to the following is returned:
///
/// > An error occurred (InvalidOptionGroupStateFault) when calling the DeleteOptionGroup operation: The option group 'optionGroupName' cannot be deleted because it is in use.
///
/// More information about this can be found [here](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithOptionGroups.html#USER_WorkingWithOptionGroups.Delete).
///
/// ## Import
///
/// Using `pulumi import`, import DB option groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/optionGroup:OptionGroup example mysql-option-group
/// ```
class OptionGroup extends pulumi.CustomResource {
  /// ARN of the DB option group.
  late final pulumi.Output<String> arn;
  /// Specifies the name of the engine that this option group should be associated with.
  late final pulumi.Output<String> engineName;
  /// Specifies the major version of the engine that this option group should be associated with.
  late final pulumi.Output<String> majorEngineVersion;
  /// Name of the option group. If omitted, the provider will assign a random, unique name. Must be lowercase, to match as it is stored in AWS.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`. Must be lowercase, to match as it is stored in AWS.
  late final pulumi.Output<String> namePrefix;
  /// Description of the option group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> optionGroupDescription;
  /// The options to apply. See `option` Block below for more details.
  late final pulumi.Output<List<OptionGroupOption>?> options;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set to true if you do not wish the option group to be deleted at destroy time, and instead just remove the option group from the Pulumi state.
  late final pulumi.Output<bool?> skipDestroy;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [OptionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OptionGroup]. {@macro pulumi_rds_option_group_option_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OptionGroup(
    String name, {
    OptionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/optionGroup:OptionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.engineName = registerOutput<String>('engineName');
    this.majorEngineVersion = registerOutput<String>('majorEngineVersion');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.optionGroupDescription = registerOutput<String>('optionGroupDescription');
    this.options = registerOutput<List<OptionGroupOption>?>('options');
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
