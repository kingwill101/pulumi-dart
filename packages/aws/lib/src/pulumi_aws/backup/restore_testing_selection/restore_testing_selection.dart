import 'package:pulumi/pulumi.dart';
import '../restore_testing_selection_protected_resource_conditions/restore_testing_selection_protected_resource_conditions.dart';
import 'restore_testing_selection_args.dart';

/// Resource for managing an AWS Backup Restore Testing Selection.
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
/// const example = new aws.backup.RestoreTestingSelection("example", {
/// name: "ec2_selection",
/// restoreTestingPlanName: exampleAwsBackupRestoreTestingPlan.name,
/// protectedResourceType: "EC2",
/// iamRoleArn: exampleAwsIamRole.arn,
/// protectedResourceArns: ["*"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.RestoreTestingSelection("example",
/// name="ec2_selection",
/// restore_testing_plan_name=example_aws_backup_restore_testing_plan["name"],
/// protected_resource_type="EC2",
/// iam_role_arn=example_aws_iam_role["arn"],
/// protected_resource_arns=["*"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Backup.RestoreTestingSelection("example", new()
/// {
/// Name = "ec2_selection",
/// RestoreTestingPlanName = exampleAwsBackupRestoreTestingPlan.Name,
/// ProtectedResourceType = "EC2",
/// IamRoleArn = exampleAwsIamRole.Arn,
/// ProtectedResourceArns = new[]
/// {
/// "*",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := backup.NewRestoreTestingSelection(ctx, "example", &backup.RestoreTestingSelectionArgs{
/// Name:                   pulumi.String("ec2_selection"),
/// RestoreTestingPlanName: pulumi.Any(exampleAwsBackupRestoreTestingPlan.Name),
/// ProtectedResourceType:  pulumi.String("EC2"),
/// IamRoleArn:             pulumi.Any(exampleAwsIamRole.Arn),
/// ProtectedResourceArns: pulumi.StringArray{
/// pulumi.String("*"),
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
/// import com.pulumi.aws.backup.RestoreTestingSelection;
/// import com.pulumi.aws.backup.RestoreTestingSelectionArgs;
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
/// var example = new RestoreTestingSelection("example", RestoreTestingSelectionArgs.builder()
/// .name("ec2_selection")
/// .restoreTestingPlanName(exampleAwsBackupRestoreTestingPlan.name())
/// .protectedResourceType("EC2")
/// .iamRoleArn(exampleAwsIamRole.arn())
/// .protectedResourceArns("*")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:backup:RestoreTestingSelection
/// properties:
/// name: ec2_selection
/// restoreTestingPlanName: ${exampleAwsBackupRestoreTestingPlan.name}
/// protectedResourceType: EC2
/// iamRoleArn: ${exampleAwsIamRole.arn}
/// protectedResourceArns:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Advanced Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.backup.RestoreTestingSelection("example", {
/// name: "ec2_selection",
/// restoreTestingPlanName: exampleAwsBackupRestoreTestingPlan.name,
/// protectedResourceType: "EC2",
/// iamRoleArn: exampleAwsIamRole.arn,
/// protectedResourceConditions: {
/// stringEquals: [{
/// key: "aws:ResourceTag/backup",
/// value: "true",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.RestoreTestingSelection("example",
/// name="ec2_selection",
/// restore_testing_plan_name=example_aws_backup_restore_testing_plan["name"],
/// protected_resource_type="EC2",
/// iam_role_arn=example_aws_iam_role["arn"],
/// protected_resource_conditions={
/// "string_equals": [{
/// "key": "aws:ResourceTag/backup",
/// "value": "true",
/// }],
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
/// var example = new Aws.Backup.RestoreTestingSelection("example", new()
/// {
/// Name = "ec2_selection",
/// RestoreTestingPlanName = exampleAwsBackupRestoreTestingPlan.Name,
/// ProtectedResourceType = "EC2",
/// IamRoleArn = exampleAwsIamRole.Arn,
/// ProtectedResourceConditions = new Aws.Backup.Inputs.RestoreTestingSelectionProtectedResourceConditionsArgs
/// {
/// StringEquals = new[]
/// {
/// new Aws.Backup.Inputs.RestoreTestingSelectionProtectedResourceConditionsStringEqualArgs
/// {
/// Key = "aws:ResourceTag/backup",
/// Value = "true",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := backup.NewRestoreTestingSelection(ctx, "example", &backup.RestoreTestingSelectionArgs{
/// Name:                   pulumi.String("ec2_selection"),
/// RestoreTestingPlanName: pulumi.Any(exampleAwsBackupRestoreTestingPlan.Name),
/// ProtectedResourceType:  pulumi.String("EC2"),
/// IamRoleArn:             pulumi.Any(exampleAwsIamRole.Arn),
/// ProtectedResourceConditions: &backup.RestoreTestingSelectionProtectedResourceConditionsArgs{
/// StringEquals: backup.RestoreTestingSelectionProtectedResourceConditionsStringEqualArray{
/// &backup.RestoreTestingSelectionProtectedResourceConditionsStringEqualArgs{
/// Key:   pulumi.String("aws:ResourceTag/backup"),
/// Value: pulumi.String("true"),
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
/// import com.pulumi.aws.backup.RestoreTestingSelection;
/// import com.pulumi.aws.backup.RestoreTestingSelectionArgs;
/// import com.pulumi.aws.backup.inputs.RestoreTestingSelectionProtectedResourceConditionsArgs;
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
/// var example = new RestoreTestingSelection("example", RestoreTestingSelectionArgs.builder()
/// .name("ec2_selection")
/// .restoreTestingPlanName(exampleAwsBackupRestoreTestingPlan.name())
/// .protectedResourceType("EC2")
/// .iamRoleArn(exampleAwsIamRole.arn())
/// .protectedResourceConditions(RestoreTestingSelectionProtectedResourceConditionsArgs.builder()
/// .stringEquals(RestoreTestingSelectionProtectedResourceConditionsStringEqualArgs.builder()
/// .key("aws:ResourceTag/backup")
/// .value("true")
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
/// type: aws:backup:RestoreTestingSelection
/// properties:
/// name: ec2_selection
/// restoreTestingPlanName: ${exampleAwsBackupRestoreTestingPlan.name}
/// protectedResourceType: EC2
/// iamRoleArn: ${exampleAwsIamRole.arn}
/// protectedResourceConditions:
/// stringEquals:
/// - key: aws:ResourceTag/backup
/// value: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Backup Restore Testing Selection using `name:restore_testing_plan_name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/restoreTestingSelection:RestoreTestingSelection example restore_testing_selection_12345678:restore_testing_plan_12345678
/// ```
class RestoreTestingSelection extends CustomResource {
  /// The ARN of the IAM role.
  late final Output<String> iamRoleArn;

  /// The name of the backup restore testing selection.
  late final Output<String> name;

  /// The ARNs for the protected resources.
  late final Output<List<String>> protectedResourceArns;

  /// The conditions for the protected resource.
  late final Output<RestoreTestingSelectionProtectedResourceConditions?>
      protectedResourceConditions;

  /// The type of the protected resource.
  late final Output<String> protectedResourceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Override certain restore metadata keys. See the complete list of [restore testing inferred metadata](https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html) .
  late final Output<Map<String, String>> restoreMetadataOverrides;

  /// The name of the restore testing plan.
  late final Output<String> restoreTestingPlanName;

  /// The amount of hours available to run a validation script on the data. Valid range is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`168`" pulumi-lang-dotnet="`168`" pulumi-lang-go="`168`" pulumi-lang-python="`168`" pulumi-lang-yaml="`168`" pulumi-lang-java="`168`">`168`</span>.
  late final Output<int> validationWindowHours;

  RestoreTestingSelection(
    String name, {
    RestoreTestingSelectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:backup/restoreTestingSelection:RestoreTestingSelection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.name = registerOutput<String>('name');
    this.protectedResourceArns =
        registerOutput<List<String>>('protectedResourceArns');
    this.protectedResourceConditions =
        registerOutput<RestoreTestingSelectionProtectedResourceConditions?>(
            'protectedResourceConditions');
    this.protectedResourceType =
        registerOutput<String>('protectedResourceType');
    this.region = registerOutput<String>('region');
    this.restoreMetadataOverrides =
        registerOutput<Map<String, String>>('restoreMetadataOverrides');
    this.restoreTestingPlanName =
        registerOutput<String>('restoreTestingPlanName');
    this.validationWindowHours = registerOutput<int>('validationWindowHours');
  }
}
