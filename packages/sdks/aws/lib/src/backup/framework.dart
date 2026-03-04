import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_args.dart';
import 'framework_state.dart';

/// Provides an AWS Backup Framework resource.
///
/// &gt; **Note:** For the Deployment Status of the Framework to be successful, please turn on resource tracking to enable AWS Config recording to track configuration changes of your backup resources. This can be done from the AWS Console.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.Framework("Example", {
///     name: "exampleFramework",
///     description: "this is an example framework",
///     controls: [
///         {
///             name: "BACKUP_RECOVERY_POINT_MINIMUM_RETENTION_CHECK",
///             inputParameters: [{
///                 name: "requiredRetentionDays",
///                 value: "35",
///             }],
///         },
///         {
///             name: "BACKUP_PLAN_MIN_FREQUENCY_AND_MIN_RETENTION_CHECK",
///             inputParameters: [
///                 {
///                     name: "requiredFrequencyUnit",
///                     value: "hours",
///                 },
///                 {
///                     name: "requiredRetentionDays",
///                     value: "35",
///                 },
///                 {
///                     name: "requiredFrequencyValue",
///                     value: "1",
///                 },
///             ],
///         },
///         {
///             name: "BACKUP_RECOVERY_POINT_ENCRYPTED",
///         },
///         {
///             name: "BACKUP_RESOURCES_PROTECTED_BY_BACKUP_PLAN",
///             scope: {
///                 complianceResourceTypes: ["EBS"],
///             },
///         },
///         {
///             name: "BACKUP_RECOVERY_POINT_MANUAL_DELETION_DISABLED",
///         },
///         {
///             name: "BACKUP_RESOURCES_PROTECTED_BY_BACKUP_VAULT_LOCK",
///             inputParameters: [
///                 {
///                     name: "maxRetentionDays",
///                     value: "100",
///                 },
///                 {
///                     name: "minRetentionDays",
///                     value: "1",
///                 },
///             ],
///             scope: {
///                 complianceResourceTypes: ["EBS"],
///             },
///         },
///         {
///             name: "BACKUP_LAST_RECOVERY_POINT_CREATED",
///             inputParameters: [
///                 {
///                     name: "recoveryPointAgeUnit",
///                     value: "days",
///                 },
///                 {
///                     name: "recoveryPointAgeValue",
///                     value: "1",
///                 },
///             ],
///             scope: {
///                 complianceResourceTypes: ["EBS"],
///             },
///         },
///     ],
///     tags: {
///         Name: "Example Framework",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.Framework("Example",
///     name="exampleFramework",
///     description="this is an example framework",
///     controls=[
///         {
///             "name": "BACKUP_RECOVERY_POINT_MINIMUM_RETENTION_CHECK",
///             "input_parameters": [{
///                 "name": "requiredRetentionDays",
///                 "value": "35",
///             }],
///         },
///         {
///             "name": "BACKUP_PLAN_MIN_FREQUENCY_AND_MIN_RETENTION_CHECK",
///             "input_parameters": [
///                 {
///                     "name": "requiredFrequencyUnit",
///                     "value": "hours",
///                 },
///                 {
///                     "name": "requiredRetentionDays",
///                     "value": "35",
///                 },
///                 {
///                     "name": "requiredFrequencyValue",
///                     "value": "1",
///                 },
///             ],
///         },
///         {
///             "name": "BACKUP_RECOVERY_POINT_ENCRYPTED",
///         },
///         {
///             "name": "BACKUP_RESOURCES_PROTECTED_BY_BACKUP_PLAN",
///             "scope": {
///                 "compliance_resource_types": ["EBS"],
///             },
///         },
///         {
///             "name": "BACKUP_RECOVERY_POINT_MANUAL_DELETION_DISABLED",
///         },
///         {
///             "name": "BACKUP_RESOURCES_PROTECTED_BY_BACKUP_VAULT_LOCK",
///             "input_parameters": [
///                 {
///                     "name": "maxRetentionDays",
///                     "value": "100",
///                 },
///                 {
///                     "name": "minRetentionDays",
///                     "value": "1",
///                 },
///             ],
///             "scope": {
///                 "compliance_resource_types": ["EBS"],
///             },
///         },
///         {
///             "name": "BACKUP_LAST_RECOVERY_POINT_CREATED",
///             "input_parameters": [
///                 {
///                     "name": "recoveryPointAgeUnit",
///                     "value": "days",
///                 },
///                 {
///                     "name": "recoveryPointAgeValue",
///                     "value": "1",
///                 },
///             ],
///             "scope": {
///                 "compliance_resource_types": ["EBS"],
///             },
///         },
///     ],
///     tags={
///         "Name": "Example Framework",
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
///     var example = new Aws.Backup.Framework("Example", new()
///     {
///         Name = "exampleFramework",
///         Description = "this is an example framework",
///         Controls = new[]
///         {
///             new Aws.Backup.Inputs.FrameworkControlArgs
///             {
///                 Name = "BACKUP_RECOVERY_POINT_MINIMUM_RETENTION_CHECK",
///                 InputParameters = new[]
///                 {
///                     new Aws.Backup.Inputs.FrameworkControlInputParameterArgs
///                     {
///                         Name = "requiredRetentionDays",
///                         Value = "35",
///                     },
///                 },
///             },
///             new Aws.Backup.Inputs.FrameworkControlArgs
///             {
///                 Name = "BACKUP_PLAN_MIN_FREQUENCY_AND_MIN_RETENTION_CHECK",
///                 InputParameters = new[]
///                 {
///                     new Aws.Backup.Inputs.FrameworkControlInputParameterArgs
///                     {
///                         Name = "requiredFrequencyUnit",
///                         Value = "hours",
///                     },
///                     new Aws.Backup.Inputs.FrameworkControlInputParameterArgs
///                     {
///                         Name = "requiredRetentionDays",
///                         Value = "35",
///                     },
///                     new Aws.Backup.Inputs.FrameworkControlInputParameterArgs
///                     {
///                         Name = "requiredFrequencyValue",
///                         Value = "1",
///                     },
///                 },
///             },
///             new Aws.Backup.Inputs.FrameworkControlArgs
///             {
///                 Name = "BACKUP_RECOVERY_POINT_ENCRYPTED",
///             },
///             new Aws.Backup.Inputs.FrameworkControlArgs
///             {
///                 Name = "BACKUP_RESOURCES_PROTECTED_BY_BACKUP_PLAN",
///                 Scope = new Aws.Backup.Inputs.FrameworkControlScopeArgs
///                 {
///                     ComplianceResourceTypes = new[]
///                     {
///                         "EBS",
///                     },
///                 },
///             },
///             new Aws.Backup.Inputs.FrameworkControlArgs
///             {
///                 Name = "BACKUP_RECOVERY_POINT_MANUAL_DELETION_DISABLED",
///             },
///             new Aws.Backup.Inputs.FrameworkControlArgs
///             {
///                 Name = "BACKUP_RESOURCES_PROTECTED_BY_BACKUP_VAULT_LOCK",
///                 InputParameters = new[]
///                 {
///                     new Aws.Backup.Inputs.FrameworkControlInputParameterArgs
///                     {
///                         Name = "maxRetentionDays",
///                         Value = "100",
///                     },
///                     new Aws.Backup.Inputs.FrameworkControlInputParameterArgs
///                     {
///                         Name = "minRetentionDays",
///                         Value = "1",
///                     },
///                 },
///                 Scope = new Aws.Backup.Inputs.FrameworkControlScopeArgs
///                 {
///                     ComplianceResourceTypes = new[]
///                     {
///                         "EBS",
///                     },
///                 },
///             },
///             new Aws.Backup.Inputs.FrameworkControlArgs
///             {
///                 Name = "BACKUP_LAST_RECOVERY_POINT_CREATED",
///                 InputParameters = new[]
///                 {
///                     new Aws.Backup.Inputs.FrameworkControlInputParameterArgs
///                     {
///                         Name = "recoveryPointAgeUnit",
///                         Value = "days",
///                     },
///                     new Aws.Backup.Inputs.FrameworkControlInputParameterArgs
///                     {
///                         Name = "recoveryPointAgeValue",
///                         Value = "1",
///                     },
///                 },
///                 Scope = new Aws.Backup.Inputs.FrameworkControlScopeArgs
///                 {
///                     ComplianceResourceTypes = new[]
///                     {
///                         "EBS",
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Name", "Example Framework" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewFramework(ctx, "Example", &backup.FrameworkArgs{
/// 			Name:        pulumi.String("exampleFramework"),
/// 			Description: pulumi.String("this is an example framework"),
/// 			Controls: backup.FrameworkControlArray{
/// 				&backup.FrameworkControlArgs{
/// 					Name: pulumi.String("BACKUP_RECOVERY_POINT_MINIMUM_RETENTION_CHECK"),
/// 					InputParameters: backup.FrameworkControlInputParameterArray{
/// 						&backup.FrameworkControlInputParameterArgs{
/// 							Name:  pulumi.String("requiredRetentionDays"),
/// 							Value: pulumi.String("35"),
/// 						},
/// 					},
/// 				},
/// 				&backup.FrameworkControlArgs{
/// 					Name: pulumi.String("BACKUP_PLAN_MIN_FREQUENCY_AND_MIN_RETENTION_CHECK"),
/// 					InputParameters: backup.FrameworkControlInputParameterArray{
/// 						&backup.FrameworkControlInputParameterArgs{
/// 							Name:  pulumi.String("requiredFrequencyUnit"),
/// 							Value: pulumi.String("hours"),
/// 						},
/// 						&backup.FrameworkControlInputParameterArgs{
/// 							Name:  pulumi.String("requiredRetentionDays"),
/// 							Value: pulumi.String("35"),
/// 						},
/// 						&backup.FrameworkControlInputParameterArgs{
/// 							Name:  pulumi.String("requiredFrequencyValue"),
/// 							Value: pulumi.String("1"),
/// 						},
/// 					},
/// 				},
/// 				&backup.FrameworkControlArgs{
/// 					Name: pulumi.String("BACKUP_RECOVERY_POINT_ENCRYPTED"),
/// 				},
/// 				&backup.FrameworkControlArgs{
/// 					Name: pulumi.String("BACKUP_RESOURCES_PROTECTED_BY_BACKUP_PLAN"),
/// 					Scope: &backup.FrameworkControlScopeArgs{
/// 						ComplianceResourceTypes: pulumi.StringArray{
/// 							pulumi.String("EBS"),
/// 						},
/// 					},
/// 				},
/// 				&backup.FrameworkControlArgs{
/// 					Name: pulumi.String("BACKUP_RECOVERY_POINT_MANUAL_DELETION_DISABLED"),
/// 				},
/// 				&backup.FrameworkControlArgs{
/// 					Name: pulumi.String("BACKUP_RESOURCES_PROTECTED_BY_BACKUP_VAULT_LOCK"),
/// 					InputParameters: backup.FrameworkControlInputParameterArray{
/// 						&backup.FrameworkControlInputParameterArgs{
/// 							Name:  pulumi.String("maxRetentionDays"),
/// 							Value: pulumi.String("100"),
/// 						},
/// 						&backup.FrameworkControlInputParameterArgs{
/// 							Name:  pulumi.String("minRetentionDays"),
/// 							Value: pulumi.String("1"),
/// 						},
/// 					},
/// 					Scope: &backup.FrameworkControlScopeArgs{
/// 						ComplianceResourceTypes: pulumi.StringArray{
/// 							pulumi.String("EBS"),
/// 						},
/// 					},
/// 				},
/// 				&backup.FrameworkControlArgs{
/// 					Name: pulumi.String("BACKUP_LAST_RECOVERY_POINT_CREATED"),
/// 					InputParameters: backup.FrameworkControlInputParameterArray{
/// 						&backup.FrameworkControlInputParameterArgs{
/// 							Name:  pulumi.String("recoveryPointAgeUnit"),
/// 							Value: pulumi.String("days"),
/// 						},
/// 						&backup.FrameworkControlInputParameterArgs{
/// 							Name:  pulumi.String("recoveryPointAgeValue"),
/// 							Value: pulumi.String("1"),
/// 						},
/// 					},
/// 					Scope: &backup.FrameworkControlScopeArgs{
/// 						ComplianceResourceTypes: pulumi.StringArray{
/// 							pulumi.String("EBS"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Framework"),
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
/// import com.pulumi.aws.backup.Framework;
/// import com.pulumi.aws.backup.FrameworkArgs;
/// import com.pulumi.aws.backup.inputs.FrameworkControlArgs;
/// import com.pulumi.aws.backup.inputs.FrameworkControlScopeArgs;
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
///         var example = new Framework("example", FrameworkArgs.builder()
///             .name("exampleFramework")
///             .description("this is an example framework")
///             .controls(
///                 FrameworkControlArgs.builder()
///                     .name("BACKUP_RECOVERY_POINT_MINIMUM_RETENTION_CHECK")
///                     .inputParameters(FrameworkControlInputParameterArgs.builder()
///                         .name("requiredRetentionDays")
///                         .value("35")
///                         .build())
///                     .build(),
///                 FrameworkControlArgs.builder()
///                     .name("BACKUP_PLAN_MIN_FREQUENCY_AND_MIN_RETENTION_CHECK")
///                     .inputParameters(
///                         FrameworkControlInputParameterArgs.builder()
///                             .name("requiredFrequencyUnit")
///                             .value("hours")
///                             .build(),
///                         FrameworkControlInputParameterArgs.builder()
///                             .name("requiredRetentionDays")
///                             .value("35")
///                             .build(),
///                         FrameworkControlInputParameterArgs.builder()
///                             .name("requiredFrequencyValue")
///                             .value("1")
///                             .build())
///                     .build(),
///                 FrameworkControlArgs.builder()
///                     .name("BACKUP_RECOVERY_POINT_ENCRYPTED")
///                     .build(),
///                 FrameworkControlArgs.builder()
///                     .name("BACKUP_RESOURCES_PROTECTED_BY_BACKUP_PLAN")
///                     .scope(FrameworkControlScopeArgs.builder()
///                         .complianceResourceTypes("EBS")
///                         .build())
///                     .build(),
///                 FrameworkControlArgs.builder()
///                     .name("BACKUP_RECOVERY_POINT_MANUAL_DELETION_DISABLED")
///                     .build(),
///                 FrameworkControlArgs.builder()
///                     .name("BACKUP_RESOURCES_PROTECTED_BY_BACKUP_VAULT_LOCK")
///                     .inputParameters(
///                         FrameworkControlInputParameterArgs.builder()
///                             .name("maxRetentionDays")
///                             .value("100")
///                             .build(),
///                         FrameworkControlInputParameterArgs.builder()
///                             .name("minRetentionDays")
///                             .value("1")
///                             .build())
///                     .scope(FrameworkControlScopeArgs.builder()
///                         .complianceResourceTypes("EBS")
///                         .build())
///                     .build(),
///                 FrameworkControlArgs.builder()
///                     .name("BACKUP_LAST_RECOVERY_POINT_CREATED")
///                     .inputParameters(
///                         FrameworkControlInputParameterArgs.builder()
///                             .name("recoveryPointAgeUnit")
///                             .value("days")
///                             .build(),
///                         FrameworkControlInputParameterArgs.builder()
///                             .name("recoveryPointAgeValue")
///                             .value("1")
///                             .build())
///                     .scope(FrameworkControlScopeArgs.builder()
///                         .complianceResourceTypes("EBS")
///                         .build())
///                     .build())
///             .tags(Map.of("Name", "Example Framework"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:Framework
///     name: Example
///     properties:
///       name: exampleFramework
///       description: this is an example framework
///       controls:
///         - name: BACKUP_RECOVERY_POINT_MINIMUM_RETENTION_CHECK
///           inputParameters:
///             - name: requiredRetentionDays
///               value: '35'
///         - name: BACKUP_PLAN_MIN_FREQUENCY_AND_MIN_RETENTION_CHECK
///           inputParameters:
///             - name: requiredFrequencyUnit
///               value: hours
///             - name: requiredRetentionDays
///               value: '35'
///             - name: requiredFrequencyValue
///               value: '1'
///         - name: BACKUP_RECOVERY_POINT_ENCRYPTED
///         - name: BACKUP_RESOURCES_PROTECTED_BY_BACKUP_PLAN
///           scope:
///             complianceResourceTypes:
///               - EBS
///         - name: BACKUP_RECOVERY_POINT_MANUAL_DELETION_DISABLED
///         - name: BACKUP_RESOURCES_PROTECTED_BY_BACKUP_VAULT_LOCK
///           inputParameters:
///             - name: maxRetentionDays
///               value: '100'
///             - name: minRetentionDays
///               value: '1'
///           scope:
///             complianceResourceTypes:
///               - EBS
///         - name: BACKUP_LAST_RECOVERY_POINT_CREATED
///           inputParameters:
///             - name: recoveryPointAgeUnit
///               value: days
///             - name: recoveryPointAgeValue
///               value: '1'
///           scope:
///             complianceResourceTypes:
///               - EBS
///       tags:
///         Name: Example Framework
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Framework using the `id` which corresponds to the name of the Backup Framework. For example:
///
/// ```sh
/// $ pulumi import aws:backup/framework:Framework test <id>
/// ```
class Framework extends pulumi.CustomResource {
  /// The ARN of the backup framework.
  late final pulumi.Output<String> arn;

  /// One or more control blocks that make up the framework. Each control in the list has a name, input parameters, and scope. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>> controls;

  /// The date and time that a framework is created, in Unix format and Coordinated Universal Time (UTC).
  late final pulumi.Output<String> creationTime;

  /// The deployment status of a framework. The statuses are: `CREATE_IN_PROGRESS` | `UPDATE_IN_PROGRESS` | `DELETE_IN_PROGRESS` | `COMPLETED` | `FAILED`.
  late final pulumi.Output<String> deploymentStatus;

  /// The description of the framework with a maximum of 1,024 characters
  late final pulumi.Output<String?> description;

  /// The unique name of the framework. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters, numbers, and underscores.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A framework consists of one or more controls. Each control governs a resource, such as backup plans, backup selections, backup vaults, or recovery points. You can also turn AWS Config recording on or off for each resource. For more information refer to the [AWS documentation for Framework Status](https://docs.aws.amazon.com/aws-backup/latest/devguide/API_DescribeFramework.html#Backup-DescribeFramework-response-FrameworkStatus)
  late final pulumi.Output<String> status;

  /// Metadata that you can assign to help organize the frameworks you create. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Framework].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Framework]. {@macro pulumi_backup_framework_framework_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Framework(
    String name, {
    FrameworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:backup/framework:Framework',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    controls = registerOutput<List<Map<String, dynamic>>>('controls');
    creationTime = registerOutput<String>('creationTime');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Framework] resource's state with the given [name] and [id].
  static Framework get(
    String name,
    pulumi.Input<String> id, {
    FrameworkState? state,
  }) {
    return Framework._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Framework._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:backup/framework:Framework',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    controls = registerOutput<List<Map<String, dynamic>>>('controls');
    creationTime = registerOutput<String>('creationTime');
    deploymentStatus = registerOutput<String>('deploymentStatus');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
