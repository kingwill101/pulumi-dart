// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../baseline_parameters/baseline_parameters.dart';
import '../baseline_timeouts/baseline_timeouts.dart';

/// The set of arguments for Baseline.
class BaselineArgs {
  /// The ARN of the baseline to be enabled.
  final pulumi.Input<String> baselineIdentifier;

  /// The version of the baseline to be enabled.
  final pulumi.Input<String> baselineVersion;

  /// A list of key-value objects that specify enablement parameters, where key is a string and value is a document of any type. See Parameter below for details.
  final pulumi.Input<BaselineParameters>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> targetIdentifier;
  final pulumi.Input<BaselineTimeouts>? timeouts;

  BaselineArgs({
    required this.baselineIdentifier,
    required this.baselineVersion,
    this.parameters,
    this.region,
    this.tags,
    required this.targetIdentifier,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baselineIdentifier'] = baselineIdentifier;
    map['baselineVersion'] = baselineVersion;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<BaselineParameters,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetIdentifier'] = targetIdentifier;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<BaselineTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BaselineArgs.fromMap(Map<String, dynamic> map) {
    return BaselineArgs(
      baselineIdentifier:
          pulumi.Input.asInput<String>(map['baselineIdentifier']),
      baselineVersion: pulumi.Input.asInput<String>(map['baselineVersion']),
      parameters:
          pulumi.Input.asOptionalInput<BaselineParameters>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetIdentifier: pulumi.Input.asInput<String>(map['targetIdentifier']),
      timeouts: pulumi.Input.asOptionalInput<BaselineTimeouts>(map['timeouts']),
    );
  }
}
