// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline_parameters.dart';
import 'baseline_timeouts.dart';

/// {@template pulumi_controltower_baseline_baseline_args_doc}
/// The set of arguments for Baseline.
/// {@endtemplate}
/// {@macro pulumi_controltower_baseline_baseline_args_doc}
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

  /// Creates a new [BaselineArgs].
  /// [baselineIdentifier] The ARN of the baseline to be enabled.
  /// [baselineVersion] The version of the baseline to be enabled.
  /// [parameters] A list of key-value objects that specify enablement parameters, where key is a string and value is a document of any type. See Parameter below for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetIdentifier] The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.
  /// [timeouts] Optional.
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
    return <String, dynamic>{
      'baselineIdentifier': baselineIdentifier,
      'baselineVersion': baselineVersion,
      'parameters': ?pulumi.Input.mapOptionalInputValue<BaselineParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'targetIdentifier': targetIdentifier,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<BaselineTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory BaselineArgs.fromMap(Map<String, dynamic> map) {
    return BaselineArgs(
      baselineIdentifier: (map['baselineIdentifier'] as String).input(),
      baselineVersion: (map['baselineVersion'] as String).input(),
      parameters: map['parameters'] == null ? null : (BaselineParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetIdentifier: (map['targetIdentifier'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (BaselineTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

