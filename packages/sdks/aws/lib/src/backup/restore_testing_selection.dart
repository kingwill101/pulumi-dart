import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_selection_args.dart';
import 'restore_testing_selection_protected_resource_conditions.dart';
import 'restore_testing_selection_state.dart';

/// Resource for managing an AWS Backup Restore Testing Selection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.RestoreTestingSelection("example", {
///     name: "ec2_selection",
///     restoreTestingPlanName: exampleAwsBackupRestoreTestingPlan.name,
///     protectedResourceType: "EC2",
///     iamRoleArn: exampleAwsIamRole.arn,
///     protectedResourceArns: ["*"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.RestoreTestingSelection("example",
///     name="ec2_selection",
///     restore_testing_plan_name=example_aws_backup_restore_testing_plan["name"],
///     protected_resource_type="EC2",
///     iam_role_arn=example_aws_iam_role["arn"],
///     protected_resource_arns=["*"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Backup.RestoreTestingSelection("example", new()
///     {
///         Name = "ec2_selection",
///         RestoreTestingPlanName = exampleAwsBackupRestoreTestingPlan.Name,
///         ProtectedResourceType = "EC2",
///         IamRoleArn = exampleAwsIamRole.Arn,
///         ProtectedResourceArns = new[]
///         {
///             "*",
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
/// 		_, err := backup.NewRestoreTestingSelection(ctx, "example", &backup.RestoreTestingSelectionArgs{
/// 			Name:                   pulumi.String("ec2_selection"),
/// 			RestoreTestingPlanName: pulumi.Any(exampleAwsBackupRestoreTestingPlan.Name),
/// 			ProtectedResourceType:  pulumi.String("EC2"),
/// 			IamRoleArn:             pulumi.Any(exampleAwsIamRole.Arn),
/// 			ProtectedResourceArns: pulumi.StringArray{
/// 				pulumi.String("*"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_backup_restoretestingselection" "example" {
///   name                      = "ec2_selection"
///   restore_testing_plan_name = exampleAwsBackupRestoreTestingPlan.name
///   protected_resource_type   = "EC2"
///   iam_role_arn              = exampleAwsIamRole.arn
///   protected_resource_arns   = ["*"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.backup.RestoreTestingSelection;
/// import com.pulumi.aws.backup.RestoreTestingSelectionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new RestoreTestingSelection("example", RestoreTestingSelectionArgs.builder()
///             .name("ec2_selection")
///             .restoreTestingPlanName(exampleAwsBackupRestoreTestingPlan.name())
///             .protectedResourceType("EC2")
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .protectedResourceArns("*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:RestoreTestingSelection
///     properties:
///       name: ec2_selection
///       restoreTestingPlanName: ${exampleAwsBackupRestoreTestingPlan.name}
///       protectedResourceType: EC2
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       protectedResourceArns:
///         - '*'
/// ```
///
///
/// ### Advanced Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.RestoreTestingSelection("example", {
///     name: "ec2_selection",
///     restoreTestingPlanName: exampleAwsBackupRestoreTestingPlan.name,
///     protectedResourceType: "EC2",
///     iamRoleArn: exampleAwsIamRole.arn,
///     protectedResourceConditions: {
///         stringEquals: [{
///             key: "aws:ResourceTag/backup",
///             value: "true",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.RestoreTestingSelection("example",
///     name="ec2_selection",
///     restore_testing_plan_name=example_aws_backup_restore_testing_plan["name"],
///     protected_resource_type="EC2",
///     iam_role_arn=example_aws_iam_role["arn"],
///     protected_resource_conditions={
///         "string_equals": [{
///             "key": "aws:ResourceTag/backup",
///             "value": "true",
///         }],
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
///     var example = new Aws.Backup.RestoreTestingSelection("example", new()
///     {
///         Name = "ec2_selection",
///         RestoreTestingPlanName = exampleAwsBackupRestoreTestingPlan.Name,
///         ProtectedResourceType = "EC2",
///         IamRoleArn = exampleAwsIamRole.Arn,
///         ProtectedResourceConditions = new Aws.Backup.Inputs.RestoreTestingSelectionProtectedResourceConditionsArgs
///         {
///             StringEquals = new[]
///             {
///                 new Aws.Backup.Inputs.RestoreTestingSelectionProtectedResourceConditionsStringEqualArgs
///                 {
///                     Key = "aws:ResourceTag/backup",
///                     Value = "true",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewRestoreTestingSelection(ctx, "example", &backup.RestoreTestingSelectionArgs{
/// 			Name:                   pulumi.String("ec2_selection"),
/// 			RestoreTestingPlanName: pulumi.Any(exampleAwsBackupRestoreTestingPlan.Name),
/// 			ProtectedResourceType:  pulumi.String("EC2"),
/// 			IamRoleArn:             pulumi.Any(exampleAwsIamRole.Arn),
/// 			ProtectedResourceConditions: &backup.RestoreTestingSelectionProtectedResourceConditionsArgs{
/// 				StringEquals: backup.RestoreTestingSelectionProtectedResourceConditionsStringEqualArray{
/// 					&backup.RestoreTestingSelectionProtectedResourceConditionsStringEqualArgs{
/// 						Key:   pulumi.String("aws:ResourceTag/backup"),
/// 						Value: pulumi.String("true"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_backup_restoretestingselection" "example" {
///   name                      = "ec2_selection"
///   restore_testing_plan_name = exampleAwsBackupRestoreTestingPlan.name
///   protected_resource_type   = "EC2"
///   iam_role_arn              = exampleAwsIamRole.arn
///   protected_resource_conditions = {
///     string_equals = [{
///       "key"   = "aws:ResourceTag/backup"
///       "value" = true
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.backup.RestoreTestingSelection;
/// import com.pulumi.aws.backup.RestoreTestingSelectionArgs;
/// import com.pulumi.aws.backup.inputs.RestoreTestingSelectionProtectedResourceConditionsArgs;
/// import com.pulumi.aws.backup.inputs.RestoreTestingSelectionProtectedResourceConditionsStringEqualArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new RestoreTestingSelection("example", RestoreTestingSelectionArgs.builder()
///             .name("ec2_selection")
///             .restoreTestingPlanName(exampleAwsBackupRestoreTestingPlan.name())
///             .protectedResourceType("EC2")
///             .iamRoleArn(exampleAwsIamRole.arn())
///             .protectedResourceConditions(RestoreTestingSelectionProtectedResourceConditionsArgs.builder()
///                 .stringEquals(RestoreTestingSelectionProtectedResourceConditionsStringEqualArgs.builder()
///                     .key("aws:ResourceTag/backup")
///                     .value("true")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:RestoreTestingSelection
///     properties:
///       name: ec2_selection
///       restoreTestingPlanName: ${exampleAwsBackupRestoreTestingPlan.name}
///       protectedResourceType: EC2
///       iamRoleArn: ${exampleAwsIamRole.arn}
///       protectedResourceConditions:
///         stringEquals:
///           - key: aws:ResourceTag/backup
///             value: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Restore Testing Selection using `name:restore_testing_plan_name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/restoreTestingSelection:RestoreTestingSelection example restore_testing_selection_12345678:restore_testing_plan_12345678
/// ```
class RestoreTestingSelection extends pulumi.CustomResource {
  /// The ARN of the IAM role.
  late final pulumi.Output<String> iamRoleArn;
  /// The name of the backup restore testing selection.
  late final pulumi.Output<String> name;
  /// The ARNs for the protected resources.
  late final pulumi.Output<List<String>> protectedResourceArns;
  /// The conditions for the protected resource.
  late final pulumi.Output<RestoreTestingSelectionProtectedResourceConditions?> protectedResourceConditions;
  /// The type of the protected resource.
  late final pulumi.Output<String> protectedResourceType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Override certain restore metadata keys. See the complete list of [restore testing inferred metadata](https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html) .
  late final pulumi.Output<Map<String, String>> restoreMetadataOverrides;
  /// The name of the restore testing plan.
  late final pulumi.Output<String> restoreTestingPlanName;
  /// The amount of hours available to run a validation script on the data. Valid range is `1` to `168`.
  late final pulumi.Output<int> validationWindowHours;

  /// Creates a new [RestoreTestingSelection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestoreTestingSelection]. {@macro pulumi_backup_restore_testing_selection_restore_testing_selection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestoreTestingSelection(
    String name, {
    RestoreTestingSelectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/restoreTestingSelection:RestoreTestingSelection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    iamRoleArn = registerOutput<String>('iamRoleArn');
    this.name = registerOutput<String>('name');
    protectedResourceArns = registerOutput<List<String>>('protectedResourceArns');
    protectedResourceConditions = registerOutput<RestoreTestingSelectionProtectedResourceConditions?>('protectedResourceConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreTestingSelectionProtectedResourceConditions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protectedResourceType = registerOutput<String>('protectedResourceType');
    region = registerOutput<String>('region');
    restoreMetadataOverrides = registerOutput<Map<String, String>>('restoreMetadataOverrides');
    restoreTestingPlanName = registerOutput<String>('restoreTestingPlanName');
    validationWindowHours = registerOutput<int>('validationWindowHours');
  }

  /// Gets an existing [RestoreTestingSelection] resource's state with the given [name] and [id].
  static RestoreTestingSelection get(
    String name,
    pulumi.Input<String> id, {
    RestoreTestingSelectionState? state,
  }) {
    return RestoreTestingSelection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RestoreTestingSelection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/restoreTestingSelection:RestoreTestingSelection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    iamRoleArn = registerOutput<String>('iamRoleArn');
    this.name = registerOutput<String>('name');
    protectedResourceArns = registerOutput<List<String>>('protectedResourceArns');
    protectedResourceConditions = registerOutput<RestoreTestingSelectionProtectedResourceConditions?>('protectedResourceConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreTestingSelectionProtectedResourceConditions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protectedResourceType = registerOutput<String>('protectedResourceType');
    region = registerOutput<String>('region');
    restoreMetadataOverrides = registerOutput<Map<String, String>>('restoreMetadataOverrides');
    restoreTestingPlanName = registerOutput<String>('restoreTestingPlanName');
    validationWindowHours = registerOutput<int>('validationWindowHours');
  }
}
