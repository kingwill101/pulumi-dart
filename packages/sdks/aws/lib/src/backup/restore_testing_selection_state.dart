// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_selection_protected_resource_conditions.dart';

/// Input properties used for looking up and filtering RestoreTestingSelection resources.
class RestoreTestingSelectionState {
  /// The ARN of the IAM role.
  final pulumi.Input<String>? iamRoleArn;
  /// The name of the backup restore testing selection.
  final pulumi.Input<String>? name;
  /// The ARNs for the protected resources.
  final pulumi.Input<List<String>>? protectedResourceArns;
  /// The conditions for the protected resource.
  final pulumi.Input<RestoreTestingSelectionProtectedResourceConditions>? protectedResourceConditions;
  /// The type of the protected resource.
  final pulumi.Input<String>? protectedResourceType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Override certain restore metadata keys. See the complete list of [restore testing inferred metadata](https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html) .
  final pulumi.Input<Map<String, String>>? restoreMetadataOverrides;
  /// The name of the restore testing plan.
  final pulumi.Input<String>? restoreTestingPlanName;
  /// The amount of hours available to run a validation script on the data. Valid range is `1` to `168`.
  final pulumi.Input<int>? validationWindowHours;

  /// Creates a new [RestoreTestingSelectionState].
  /// [iamRoleArn] The ARN of the IAM role.
  /// [name] The name of the backup restore testing selection.
  /// [protectedResourceArns] The ARNs for the protected resources.
  /// [protectedResourceConditions] The conditions for the protected resource.
  /// [protectedResourceType] The type of the protected resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restoreMetadataOverrides] Override certain restore metadata keys. See the complete list of [restore testing inferred metadata](https://docs.aws.amazon.com/aws-backup/latest/devguide/restore-testing-inferred-metadata.html) .
  /// [restoreTestingPlanName] The name of the restore testing plan.
  /// [validationWindowHours] The amount of hours available to run a validation script on the data. Valid range is `1` to `168`.
  RestoreTestingSelectionState({
    this.iamRoleArn,
    this.name,
    this.protectedResourceArns,
    this.protectedResourceConditions,
    this.protectedResourceType,
    this.region,
    this.restoreMetadataOverrides,
    this.restoreTestingPlanName,
    this.validationWindowHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamRoleArn': ?iamRoleArn,
      'name': ?name,
      'protectedResourceArns': ?protectedResourceArns,
      'protectedResourceConditions': ?pulumi.Input.mapOptionalInputValue<RestoreTestingSelectionProtectedResourceConditions, Map<String, dynamic>>(protectedResourceConditions, (value) => value.toMap()),
      'protectedResourceType': ?protectedResourceType,
      'region': ?region,
      'restoreMetadataOverrides': ?restoreMetadataOverrides,
      'restoreTestingPlanName': ?restoreTestingPlanName,
      'validationWindowHours': ?validationWindowHours,
    };
  }

  factory RestoreTestingSelectionState.fromMap(Map<String, dynamic> map) {
    return RestoreTestingSelectionState(
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedResourceArns: (() { final guardedValue = map['protectedResourceArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      protectedResourceConditions: (() { final guardedValue = map['protectedResourceConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreTestingSelectionProtectedResourceConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protectedResourceType: (() { final guardedValue = map['protectedResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreMetadataOverrides: (() { final guardedValue = map['restoreMetadataOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      restoreTestingPlanName: (() { final guardedValue = map['restoreTestingPlanName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationWindowHours: (() { final guardedValue = map['validationWindowHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

