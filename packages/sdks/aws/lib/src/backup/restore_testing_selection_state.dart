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
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? protectedResourceArns,
    pulumi.Output<RestoreTestingSelectionProtectedResourceConditions>? protectedResourceConditions,
    pulumi.Output<String>? protectedResourceType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? restoreMetadataOverrides,
    pulumi.Output<String>? restoreTestingPlanName,
    pulumi.Output<int>? validationWindowHours,
  }) :
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectedResourceArns = pulumi.Input.asOptionalInput<List<String>>(protectedResourceArns),
      protectedResourceConditions = pulumi.Input.asOptionalInput<RestoreTestingSelectionProtectedResourceConditions>(protectedResourceConditions),
      protectedResourceType = pulumi.Input.asOptionalInput<String>(protectedResourceType),
      region = pulumi.Input.asOptionalInput<String>(region),
      restoreMetadataOverrides = pulumi.Input.asOptionalInput<Map<String, String>>(restoreMetadataOverrides),
      restoreTestingPlanName = pulumi.Input.asOptionalInput<String>(restoreTestingPlanName),
      validationWindowHours = pulumi.Input.asOptionalInput<int>(validationWindowHours);

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
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectedResourceArns: map['protectedResourceArns'] == null ? null : pulumi.Output.create<List<String>>((map['protectedResourceArns'] as List).cast<String>()),
      protectedResourceConditions: map['protectedResourceConditions'] == null ? null : pulumi.Output.create<RestoreTestingSelectionProtectedResourceConditions>(RestoreTestingSelectionProtectedResourceConditions.fromMap((map['protectedResourceConditions'] as Map).cast<String, dynamic>())),
      protectedResourceType: map['protectedResourceType'] == null ? null : pulumi.Output.create<String>(map['protectedResourceType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restoreMetadataOverrides: map['restoreMetadataOverrides'] == null ? null : pulumi.Output.create<Map<String, String>>((map['restoreMetadataOverrides'] as Map).cast<String, String>()),
      restoreTestingPlanName: map['restoreTestingPlanName'] == null ? null : pulumi.Output.create<String>(map['restoreTestingPlanName'] as String),
      validationWindowHours: map['validationWindowHours'] == null ? null : pulumi.Output.create<int>(map['validationWindowHours'] as int),
    );
  }
}

