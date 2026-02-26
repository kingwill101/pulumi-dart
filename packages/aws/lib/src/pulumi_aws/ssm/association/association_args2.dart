// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../association_output_location/association_output_location.dart';
import '../association_target/association_target.dart';

/// The set of arguments for Association.
class AssociationArgs2 {
  /// By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? applyOnlyAtCronInterval;

  /// The descriptive name for the association.
  final Input<String>? associationName;

  /// Specify the target for the association. This target is required for associations that use an `Automation` document and target resources by using rate controls. This should be set to the SSM document <span pulumi-lang-nodejs="`parameter`" pulumi-lang-dotnet="`Parameter`" pulumi-lang-go="`parameter`" pulumi-lang-python="`parameter`" pulumi-lang-yaml="`parameter`" pulumi-lang-java="`parameter`">`parameter`</span> that will define how your automation will branch out.
  final Input<String>? automationTargetParameterName;

  /// One or more Systems Manager Change Calendar names. The association runs only when the Change Calendar is open.
  final Input<List<String>>? calendarNames;

  /// The compliance severity for the association. Can be one of the following: `UNSPECIFIED`, `LOW`, `MEDIUM`, `HIGH` or `CRITICAL`
  final Input<String>? complianceSeverity;

  /// The document version you want to associate with the target(s). Can be a specific version or the default version.
  final Input<String>? documentVersion;

  /// The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%.
  final Input<String>? maxConcurrency;

  /// The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%. If you specify a threshold of 3, the stop command is sent when the fourth error is returned. If you specify a threshold of 10% for 50 associations, the stop command is sent when the sixth error is returned.
  final Input<String>? maxErrors;

  /// The name of the SSM document to apply.
  final Input<String>? name;

  /// An output location block. Output Location is documented below.
  final Input<AssociationOutputLocation>? outputLocation;

  /// A block of arbitrary string parameters to pass to the SSM document.
  final Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html) that specifies when the association runs.
  final Input<String>? scheduleExpression;

  /// The mode for generating association compliance. You can specify `AUTO` or `MANUAL`.
  final Input<String>? syncCompliance;

  /// A map of tags to assign to the object. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets.
  final Input<List<AssociationTarget>>? targets;

  /// The number of seconds to wait for the association status to be `Success`. If `Success` status is not reached within the given time, create opration will fail.
  ///
  /// Output Location (<span pulumi-lang-nodejs="`outputLocation`" pulumi-lang-dotnet="`OutputLocation`" pulumi-lang-go="`outputLocation`" pulumi-lang-python="`output_location`" pulumi-lang-yaml="`outputLocation`" pulumi-lang-java="`outputLocation`">`output_location`</span>) is an S3 bucket where you want to store the results of this association:
  final Input<int>? waitForSuccessTimeoutSeconds;

  AssociationArgs2({
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
      map['outputLocation'] = Input.mapOptionalInputValue<
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
      map['targets'] = Input.mapOptionalInputValue<List<AssociationTarget>,
              List<Map<String, dynamic>>>(
          targetsValue,
          (value) => Input.encodeList<AssociationTarget, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final waitForSuccessTimeoutSecondsValue = waitForSuccessTimeoutSeconds;
    if (waitForSuccessTimeoutSecondsValue != null) {
      map['waitForSuccessTimeoutSeconds'] = waitForSuccessTimeoutSecondsValue;
    }
    return map;
  }

  factory AssociationArgs2.fromMap(Map<String, dynamic> map) {
    return AssociationArgs2(
      applyOnlyAtCronInterval:
          Input.asOptionalInput<bool>(map['applyOnlyAtCronInterval']),
      associationName: Input.asOptionalInput<String>(map['associationName']),
      automationTargetParameterName:
          Input.asOptionalInput<String>(map['automationTargetParameterName']),
      calendarNames: Input.asOptionalInput<List<String>>(map['calendarNames']),
      complianceSeverity:
          Input.asOptionalInput<String>(map['complianceSeverity']),
      documentVersion: Input.asOptionalInput<String>(map['documentVersion']),
      maxConcurrency: Input.asOptionalInput<String>(map['maxConcurrency']),
      maxErrors: Input.asOptionalInput<String>(map['maxErrors']),
      name: Input.asOptionalInput<String>(map['name']),
      outputLocation: Input.asOptionalInput<AssociationOutputLocation>(
          map['outputLocation']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      scheduleExpression:
          Input.asOptionalInput<String>(map['scheduleExpression']),
      syncCompliance: Input.asOptionalInput<String>(map['syncCompliance']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targets: Input.asOptionalInput<List<AssociationTarget>>(map['targets']),
      waitForSuccessTimeoutSeconds:
          Input.asOptionalInput<int>(map['waitForSuccessTimeoutSeconds']),
    );
  }
}
