// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../restore_testing_selection_protected_resource_conditions/restore_testing_selection_protected_resource_conditions.dart';

/// The set of arguments for RestoreTestingSelection.
class RestoreTestingSelectionArgs {
  /// The ARN of the IAM role.
  final Input<String> iamRoleArn;

  /// The name of the backup restore testing selection.
  final Input<String>? name;

  /// The ARNs for the protected resources.
  final Input<List<String>>? protectedResourceArns;

  /// The conditions for the protected resource.
  final Input<RestoreTestingSelectionProtectedResourceConditions>?
      protectedResourceConditions;

  /// The type of the protected resource.
  final Input<String> protectedResourceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Override certain restore metadata keys. See the complete list of [restore testing inferred metadata](https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html) .
  final Input<Map<String, String>>? restoreMetadataOverrides;

  /// The name of the restore testing plan.
  final Input<String> restoreTestingPlanName;

  /// The amount of hours available to run a validation script on the data. Valid range is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`168`" pulumi-lang-dotnet="`168`" pulumi-lang-go="`168`" pulumi-lang-python="`168`" pulumi-lang-yaml="`168`" pulumi-lang-java="`168`">`168`</span>.
  final Input<int>? validationWindowHours;

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
      map['protectedResourceConditions'] = Input.mapOptionalInputValue<
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
      iamRoleArn: Input.asInput<String>(map['iamRoleArn']),
      name: Input.asOptionalInput<String>(map['name']),
      protectedResourceArns:
          Input.asOptionalInput<List<String>>(map['protectedResourceArns']),
      protectedResourceConditions: Input.asOptionalInput<
              RestoreTestingSelectionProtectedResourceConditions>(
          map['protectedResourceConditions']),
      protectedResourceType:
          Input.asInput<String>(map['protectedResourceType']),
      region: Input.asOptionalInput<String>(map['region']),
      restoreMetadataOverrides: Input.asOptionalInput<Map<String, String>>(
          map['restoreMetadataOverrides']),
      restoreTestingPlanName:
          Input.asInput<String>(map['restoreTestingPlanName']),
      validationWindowHours:
          Input.asOptionalInput<int>(map['validationWindowHours']),
    );
  }
}
