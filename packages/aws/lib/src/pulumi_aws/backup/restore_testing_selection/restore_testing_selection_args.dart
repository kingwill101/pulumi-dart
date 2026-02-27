// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_testing_selection_protected_resource_conditions/restore_testing_selection_protected_resource_conditions.dart';

/// The set of arguments for RestoreTestingSelection.
class RestoreTestingSelectionArgs {
  /// The ARN of the IAM role.
  final pulumi.Input<String> iamRoleArn;

  /// The name of the backup restore testing selection.
  final pulumi.Input<String>? name;

  /// The ARNs for the protected resources.
  final pulumi.Input<List<String>>? protectedResourceArns;

  /// The conditions for the protected resource.
  final pulumi.Input<RestoreTestingSelectionProtectedResourceConditions>?
      protectedResourceConditions;

  /// The type of the protected resource.
  final pulumi.Input<String> protectedResourceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Override certain restore metadata keys. See the complete list of [restore testing inferred metadata](https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html) .
  final pulumi.Input<Map<String, String>>? restoreMetadataOverrides;

  /// The name of the restore testing plan.
  final pulumi.Input<String> restoreTestingPlanName;

  /// The amount of hours available to run a validation script on the data. Valid range is `1` to `168`.
  final pulumi.Input<int>? validationWindowHours;

  RestoreTestingSelectionArgs({
    required this.iamRoleArn,
    this.name,
    this.protectedResourceArns,
    this.protectedResourceConditions,
    required this.protectedResourceType,
    this.region,
    this.restoreMetadataOverrides,
    required this.restoreTestingPlanName,
    this.validationWindowHours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['iamRoleArn'] = iamRoleArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final protectedResourceArnsValue = protectedResourceArns;
    if (protectedResourceArnsValue != null) {
      map['protectedResourceArns'] = protectedResourceArnsValue;
    }
    final protectedResourceConditionsValue = protectedResourceConditions;
    if (protectedResourceConditionsValue != null) {
      map['protectedResourceConditions'] = pulumi.Input.mapOptionalInputValue<
              RestoreTestingSelectionProtectedResourceConditions,
              Map<String, dynamic>>(
          protectedResourceConditionsValue, (value) => value.toMap());
    }
    map['protectedResourceType'] = protectedResourceType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final restoreMetadataOverridesValue = restoreMetadataOverrides;
    if (restoreMetadataOverridesValue != null) {
      map['restoreMetadataOverrides'] = restoreMetadataOverridesValue;
    }
    map['restoreTestingPlanName'] = restoreTestingPlanName;
    final validationWindowHoursValue = validationWindowHours;
    if (validationWindowHoursValue != null) {
      map['validationWindowHours'] = validationWindowHoursValue;
    }
    return map;
  }

  factory RestoreTestingSelectionArgs.fromMap(Map<String, dynamic> map) {
    return RestoreTestingSelectionArgs(
      iamRoleArn: pulumi.Input.asInput<String>(map['iamRoleArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      protectedResourceArns: pulumi.Input.asOptionalInput<List<String>>(
          map['protectedResourceArns']),
      protectedResourceConditions: pulumi.Input.asOptionalInput<
              RestoreTestingSelectionProtectedResourceConditions>(
          map['protectedResourceConditions']),
      protectedResourceType:
          pulumi.Input.asInput<String>(map['protectedResourceType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      restoreMetadataOverrides:
          pulumi.Input.asOptionalInput<Map<String, String>>(
              map['restoreMetadataOverrides']),
      restoreTestingPlanName:
          pulumi.Input.asInput<String>(map['restoreTestingPlanName']),
      validationWindowHours:
          pulumi.Input.asOptionalInput<int>(map['validationWindowHours']),
    );
  }
}
