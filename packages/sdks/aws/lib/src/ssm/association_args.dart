// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'association_output_location.dart';
import 'association_target.dart';

/// {@template pulumi_ssm_association_association_args_doc}
/// The set of arguments for Association.
/// {@endtemplate}
/// {@macro pulumi_ssm_association_association_args_doc}
class AssociationArgs {
  /// By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: `false`.
  final pulumi.Input<bool>? applyOnlyAtCronInterval;
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
  /// A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets.
  final pulumi.Input<List<AssociationTarget>>? targets;
  /// The number of seconds to wait for the association status to be `Success`. If `Success` status is not reached within the given time, create opration will fail.
  ///
  /// Output Location (`output_location`) is an S3 bucket where you want to store the results of this association:
  final pulumi.Input<int>? waitForSuccessTimeoutSeconds;

  /// Creates a new [AssociationArgs].
  /// [applyOnlyAtCronInterval] By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: `false`.
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
  /// [targets] A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets.
  /// [waitForSuccessTimeoutSeconds] The number of seconds to wait for the association status to be `Success`. If `Success` status is not reached within the given time, create opration will fail.
  AssociationArgs({
    pulumi.Output<bool>? applyOnlyAtCronInterval,
    pulumi.Output<String>? associationName,
    pulumi.Output<String>? automationTargetParameterName,
    pulumi.Output<List<String>>? calendarNames,
    pulumi.Output<String>? complianceSeverity,
    pulumi.Output<String>? documentVersion,
    pulumi.Output<String>? maxConcurrency,
    pulumi.Output<String>? maxErrors,
    pulumi.Output<String>? name,
    pulumi.Output<AssociationOutputLocation>? outputLocation,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<String>? scheduleExpression,
    pulumi.Output<String>? syncCompliance,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<AssociationTarget>>? targets,
    pulumi.Output<int>? waitForSuccessTimeoutSeconds,
  }) :
      applyOnlyAtCronInterval = pulumi.Input.asOptionalInput<bool>(applyOnlyAtCronInterval),
      associationName = pulumi.Input.asOptionalInput<String>(associationName),
      automationTargetParameterName = pulumi.Input.asOptionalInput<String>(automationTargetParameterName),
      calendarNames = pulumi.Input.asOptionalInput<List<String>>(calendarNames),
      complianceSeverity = pulumi.Input.asOptionalInput<String>(complianceSeverity),
      documentVersion = pulumi.Input.asOptionalInput<String>(documentVersion),
      maxConcurrency = pulumi.Input.asOptionalInput<String>(maxConcurrency),
      maxErrors = pulumi.Input.asOptionalInput<String>(maxErrors),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputLocation = pulumi.Input.asOptionalInput<AssociationOutputLocation>(outputLocation),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      scheduleExpression = pulumi.Input.asOptionalInput<String>(scheduleExpression),
      syncCompliance = pulumi.Input.asOptionalInput<String>(syncCompliance),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targets = pulumi.Input.asOptionalInput<List<AssociationTarget>>(targets),
      waitForSuccessTimeoutSeconds = pulumi.Input.asOptionalInput<int>(waitForSuccessTimeoutSeconds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnlyAtCronInterval': ?applyOnlyAtCronInterval,
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
      'targets': ?pulumi.Input.mapOptionalInputValue<List<AssociationTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<AssociationTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'waitForSuccessTimeoutSeconds': ?waitForSuccessTimeoutSeconds,
    };
  }

  factory AssociationArgs.fromMap(Map<String, dynamic> map) {
    return AssociationArgs(
      applyOnlyAtCronInterval: map['applyOnlyAtCronInterval'] == null ? null : pulumi.Output.create<bool>(map['applyOnlyAtCronInterval'] as bool),
      associationName: map['associationName'] == null ? null : pulumi.Output.create<String>(map['associationName'] as String),
      automationTargetParameterName: map['automationTargetParameterName'] == null ? null : pulumi.Output.create<String>(map['automationTargetParameterName'] as String),
      calendarNames: map['calendarNames'] == null ? null : pulumi.Output.create<List<String>>((map['calendarNames'] as List).cast<String>()),
      complianceSeverity: map['complianceSeverity'] == null ? null : pulumi.Output.create<String>(map['complianceSeverity'] as String),
      documentVersion: map['documentVersion'] == null ? null : pulumi.Output.create<String>(map['documentVersion'] as String),
      maxConcurrency: map['maxConcurrency'] == null ? null : pulumi.Output.create<String>(map['maxConcurrency'] as String),
      maxErrors: map['maxErrors'] == null ? null : pulumi.Output.create<String>(map['maxErrors'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputLocation: map['outputLocation'] == null ? null : pulumi.Output.create<AssociationOutputLocation>(AssociationOutputLocation.fromMap((map['outputLocation'] as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scheduleExpression: map['scheduleExpression'] == null ? null : pulumi.Output.create<String>(map['scheduleExpression'] as String),
      syncCompliance: map['syncCompliance'] == null ? null : pulumi.Output.create<String>(map['syncCompliance'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<AssociationTarget>>(pulumi.Input.decodeList<AssociationTarget>(map['targets'], (value) => AssociationTarget.fromMap((value as Map).cast<String, dynamic>()))),
      waitForSuccessTimeoutSeconds: map['waitForSuccessTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['waitForSuccessTimeoutSeconds'] as int),
    );
  }
}

