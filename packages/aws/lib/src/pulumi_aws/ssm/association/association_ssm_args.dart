// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../association_output_location/association_output_location.dart';
import '../association_target/association_target.dart';

/// The set of arguments for Association.
class AssociationSsmArgs {
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

  AssociationSsmArgs({
    this.applyOnlyAtCronInterval,
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
    this.targets,
    this.waitForSuccessTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyOnlyAtCronIntervalValue = applyOnlyAtCronInterval;
    if (applyOnlyAtCronIntervalValue != null) {
      map['applyOnlyAtCronInterval'] = applyOnlyAtCronIntervalValue;
    }
    final associationNameValue = associationName;
    if (associationNameValue != null) {
      map['associationName'] = associationNameValue;
    }
    final automationTargetParameterNameValue = automationTargetParameterName;
    if (automationTargetParameterNameValue != null) {
      map['automationTargetParameterName'] = automationTargetParameterNameValue;
    }
    final calendarNamesValue = calendarNames;
    if (calendarNamesValue != null) {
      map['calendarNames'] = calendarNamesValue;
    }
    final complianceSeverityValue = complianceSeverity;
    if (complianceSeverityValue != null) {
      map['complianceSeverity'] = complianceSeverityValue;
    }
    final documentVersionValue = documentVersion;
    if (documentVersionValue != null) {
      map['documentVersion'] = documentVersionValue;
    }
    final maxConcurrencyValue = maxConcurrency;
    if (maxConcurrencyValue != null) {
      map['maxConcurrency'] = maxConcurrencyValue;
    }
    final maxErrorsValue = maxErrors;
    if (maxErrorsValue != null) {
      map['maxErrors'] = maxErrorsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputLocationValue = outputLocation;
    if (outputLocationValue != null) {
      map['outputLocation'] = pulumi.Input.mapOptionalInputValue<
          AssociationOutputLocation,
          Map<String, dynamic>>(outputLocationValue, (value) => value.toMap());
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scheduleExpressionValue = scheduleExpression;
    if (scheduleExpressionValue != null) {
      map['scheduleExpression'] = scheduleExpressionValue;
    }
    final syncComplianceValue = syncCompliance;
    if (syncComplianceValue != null) {
      map['syncCompliance'] = syncComplianceValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetsValue = targets;
    if (targetsValue != null) {
      map['targets'] = pulumi.Input.mapOptionalInputValue<
              List<AssociationTarget>, List<Map<String, dynamic>>>(
          targetsValue,
          (value) =>
              pulumi.Input.encodeList<AssociationTarget, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final waitForSuccessTimeoutSecondsValue = waitForSuccessTimeoutSeconds;
    if (waitForSuccessTimeoutSecondsValue != null) {
      map['waitForSuccessTimeoutSeconds'] = waitForSuccessTimeoutSecondsValue;
    }
    return map;
  }

  factory AssociationSsmArgs.fromMap(Map<String, dynamic> map) {
    return AssociationSsmArgs(
      applyOnlyAtCronInterval:
          pulumi.Input.asOptionalInput<bool>(map['applyOnlyAtCronInterval']),
      associationName:
          pulumi.Input.asOptionalInput<String>(map['associationName']),
      automationTargetParameterName: pulumi.Input.asOptionalInput<String>(
          map['automationTargetParameterName']),
      calendarNames:
          pulumi.Input.asOptionalInput<List<String>>(map['calendarNames']),
      complianceSeverity:
          pulumi.Input.asOptionalInput<String>(map['complianceSeverity']),
      documentVersion:
          pulumi.Input.asOptionalInput<String>(map['documentVersion']),
      maxConcurrency:
          pulumi.Input.asOptionalInput<String>(map['maxConcurrency']),
      maxErrors: pulumi.Input.asOptionalInput<String>(map['maxErrors']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      outputLocation: pulumi.Input.asOptionalInput<AssociationOutputLocation>(
          map['outputLocation']),
      parameters:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scheduleExpression:
          pulumi.Input.asOptionalInput<String>(map['scheduleExpression']),
      syncCompliance:
          pulumi.Input.asOptionalInput<String>(map['syncCompliance']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targets:
          pulumi.Input.asOptionalInput<List<AssociationTarget>>(map['targets']),
      waitForSuccessTimeoutSeconds: pulumi.Input.asOptionalInput<int>(
          map['waitForSuccessTimeoutSeconds']),
    );
  }
}
