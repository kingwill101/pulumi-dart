import 'package:pulumi/pulumi.dart';
import '../restore_testing_selection_protected_resource_conditions/restore_testing_selection_protected_resource_conditions.dart';
import 'restore_testing_selection_args.dart';

/// Resource for managing an AWS Backup Restore Testing Selection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Advanced Usage
///
///
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

  /// The amount of hours available to run a validation script on the data. Valid range is `1` to `168`.
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
