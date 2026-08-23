// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline_parameters.dart';
import 'baseline_timeouts.dart';

/// Input properties used for looking up and filtering Baseline resources.
class BaselineState {
  /// ARN of the Baseline.
  final pulumi.Input<String>? arn;
  /// The ARN of the baseline to be enabled.
  final pulumi.Input<String>? baselineIdentifier;
  /// The version of the baseline to be enabled.
  final pulumi.Input<String>? baselineVersion;
  final pulumi.Input<String>? operationIdentifier;
  /// A list of key-value objects that specify enablement parameters, where key is a string and value is a document of any type. See Parameter below for details.
  final pulumi.Input<BaselineParameters>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the landing zone. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the landing zone, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? targetIdentifier;
  final pulumi.Input<BaselineTimeouts>? timeouts;

  /// Creates a new [BaselineState].
  /// [arn] ARN of the Baseline.
  /// [baselineIdentifier] The ARN of the baseline to be enabled.
  /// [baselineVersion] The version of the baseline to be enabled.
  /// [operationIdentifier] Optional.
  /// [parameters] A list of key-value objects that specify enablement parameters, where key is a string and value is a document of any type. See Parameter below for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the landing zone. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the landing zone, including those inherited from the provider `defaultTags` configuration block.
  /// [targetIdentifier] The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.
  /// [timeouts] Optional.
  const BaselineState({
    this.arn,
    this.baselineIdentifier,
    this.baselineVersion,
    this.operationIdentifier,
    this.parameters,
    this.region,
    this.tags,
    this.tagsAll,
    this.targetIdentifier,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'baselineIdentifier': ?baselineIdentifier,
      'baselineVersion': ?baselineVersion,
      'operationIdentifier': ?operationIdentifier,
      'parameters': ?pulumi.Input.mapOptionalInputValue<BaselineParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetIdentifier': ?targetIdentifier,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<BaselineTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory BaselineState.fromMap(Map<String, dynamic> map) {
    return BaselineState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baselineIdentifier: (() { final guardedValue = map['baselineIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baselineVersion: (() { final guardedValue = map['baselineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationIdentifier: (() { final guardedValue = map['operationIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BaselineParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetIdentifier: (() { final guardedValue = map['targetIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BaselineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
