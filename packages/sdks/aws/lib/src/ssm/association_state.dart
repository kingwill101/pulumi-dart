// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'association_output_location.dart';
import 'association_target.dart';

/// Input properties used for looking up and filtering Association resources.
class AssociationState {
  /// By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: `false`.
  final pulumi.Input<bool>? applyOnlyAtCronInterval;
  /// The ARN of the SSM association
  final pulumi.Input<String>? arn;
  /// The ID of the SSM association.
  final pulumi.Input<String>? associationId;
  /// The descriptive name for the association.
  final pulumi.Input<String>? associationName;
  /// Specify the target for the association. This target is required for associations that use an `Automation` document and target resources by using rate controls. This should be set to the SSM document `parameter` that will define how your automation will branch out.
  final pulumi.Input<String>? automationTargetParameterName;
  /// One or more Systems Manager Change Calendar names. The association runs only when the Change Calendar is open.
  final pulumi.Input<List<String>>? calendarNames;
  /// The compliance severity for the association. Can be one of the following: `UNSPECIFIED`, `LOW`, `MEDIUM`, `HIGH` or `CRITICAL`
  final pulumi.Input<String>? complianceSeverity;
  /// The document version you want to associate with the target(s). Can be a specific version or the default version.
  final pulumi.Input<String>? documentVersion;
  /// The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%.
  final pulumi.Input<String>? maxConcurrency;
  /// The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%. If you specify a threshold of 3, the stop command is sent when the fourth error is returned. If you specify a threshold of 10% for 50 associations, the stop command is sent when the sixth error is returned.
  final pulumi.Input<String>? maxErrors;
  /// The name of the SSM document to apply.
  final pulumi.Input<String>? name;
  /// An output location block. Output Location is documented below.
  final pulumi.Input<AssociationOutputLocation>? outputLocation;
  /// A block of arbitrary string parameters to pass to the SSM document.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html) that specifies when the association runs.
  final pulumi.Input<String>? scheduleExpression;
  /// The mode for generating association compliance. You can specify `AUTO` or `MANUAL`.
  final pulumi.Input<String>? syncCompliance;
  /// A map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets.
  final pulumi.Input<List<AssociationTarget>>? targets;
  /// The number of seconds to wait for the association status to be `Success`. If `Success` status is not reached within the given time, create opration will fail.
  ///
  /// Output Location (`output_location`) is an S3 bucket where you want to store the results of this association:
  final pulumi.Input<int>? waitForSuccessTimeoutSeconds;

  /// Creates a new [AssociationState].
  /// [applyOnlyAtCronInterval] By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: `false`.
  /// [arn] The ARN of the SSM association
  /// [associationId] The ID of the SSM association.
  /// [associationName] The descriptive name for the association.
  /// [automationTargetParameterName] Specify the target for the association. This target is required for associations that use an `Automation` document and target resources by using rate controls. This should be set to the SSM document `parameter` that will define how your automation will branch out.
  /// [calendarNames] One or more Systems Manager Change Calendar names. The association runs only when the Change Calendar is open.
  /// [complianceSeverity] The compliance severity for the association. Can be one of the following: `UNSPECIFIED`, `LOW`, `MEDIUM`, `HIGH` or `CRITICAL`
  /// [documentVersion] The document version you want to associate with the target(s). Can be a specific version or the default version.
  /// [maxConcurrency] The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%.
  /// [maxErrors] The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%. If you specify a threshold of 3, the stop command is sent when the fourth error is returned. If you specify a threshold of 10% for 50 associations, the stop command is sent when the sixth error is returned.
  /// [name] The name of the SSM document to apply.
  /// [outputLocation] An output location block. Output Location is documented below.
  /// [parameters] A block of arbitrary string parameters to pass to the SSM document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scheduleExpression] A [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html) that specifies when the association runs.
  /// [syncCompliance] The mode for generating association compliance. You can specify `AUTO` or `MANUAL`.
  /// [tags] A map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targets] A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets.
  /// [waitForSuccessTimeoutSeconds] The number of seconds to wait for the association status to be `Success`. If `Success` status is not reached within the given time, create opration will fail.
  AssociationState({
    this.applyOnlyAtCronInterval,
    this.arn,
    this.associationId,
    this.associationName,
    this.automationTargetParameterName,
    this.calendarNames,
    this.complianceSeverity,
    this.documentVersion,
    this.maxConcurrency,
    this.maxErrors,
    this.name,
    this.outputLocation,
    this.parameters,
    this.region,
    this.scheduleExpression,
    this.syncCompliance,
    this.tags,
    this.tagsAll,
    this.targets,
    this.waitForSuccessTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnlyAtCronInterval': ?applyOnlyAtCronInterval,
      'arn': ?arn,
      'associationId': ?associationId,
      'associationName': ?associationName,
      'automationTargetParameterName': ?automationTargetParameterName,
      'calendarNames': ?calendarNames,
      'complianceSeverity': ?complianceSeverity,
      'documentVersion': ?documentVersion,
      'maxConcurrency': ?maxConcurrency,
      'maxErrors': ?maxErrors,
      'name': ?name,
      'outputLocation': ?pulumi.Input.mapOptionalInputValue<AssociationOutputLocation, Map<String, dynamic>>(outputLocation, (value) => value.toMap()),
      'parameters': ?parameters,
      'region': ?region,
      'scheduleExpression': ?scheduleExpression,
      'syncCompliance': ?syncCompliance,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<AssociationTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<AssociationTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitForSuccessTimeoutSeconds': ?waitForSuccessTimeoutSeconds,
    };
  }

  factory AssociationState.fromMap(Map<String, dynamic> map) {
    return AssociationState(
      applyOnlyAtCronInterval: map['applyOnlyAtCronInterval'] == null ? null : ((map['applyOnlyAtCronInterval'] as bool).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      associationId: map['associationId'] == null ? null : ((map['associationId'] as String).input()).input(),
      associationName: map['associationName'] == null ? null : ((map['associationName'] as String).input()).input(),
      automationTargetParameterName: map['automationTargetParameterName'] == null ? null : ((map['automationTargetParameterName'] as String).input()).input(),
      calendarNames: map['calendarNames'] == null ? null : (((map['calendarNames'] as List).cast<String>()).input()).input(),
      complianceSeverity: map['complianceSeverity'] == null ? null : ((map['complianceSeverity'] as String).input()).input(),
      documentVersion: map['documentVersion'] == null ? null : ((map['documentVersion'] as String).input()).input(),
      maxConcurrency: map['maxConcurrency'] == null ? null : ((map['maxConcurrency'] as String).input()).input(),
      maxErrors: map['maxErrors'] == null ? null : ((map['maxErrors'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      outputLocation: map['outputLocation'] == null ? null : ((AssociationOutputLocation.fromMap((map['outputLocation']! as Map).cast<String, dynamic>())).input()).input(),
      parameters: map['parameters'] == null ? null : (((map['parameters'] as Map).cast<String, String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scheduleExpression: map['scheduleExpression'] == null ? null : ((map['scheduleExpression'] as String).input()).input(),
      syncCompliance: map['syncCompliance'] == null ? null : ((map['syncCompliance'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      targets: map['targets'] == null ? null : ((pulumi.Input.decodeList<AssociationTarget>(map['targets']!, (value) => AssociationTarget.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      waitForSuccessTimeoutSeconds: map['waitForSuccessTimeoutSeconds'] == null ? null : ((map['waitForSuccessTimeoutSeconds'] as int).input()).input(),
    );
  }
}

