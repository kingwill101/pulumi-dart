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
  /// Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the landing zone, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the landing zone, including those inherited from the provider `default_tags` configuration block.
  /// [targetIdentifier] The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.
  /// [timeouts] Optional.
  BaselineState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? baselineIdentifier,
    pulumi.Output<String>? baselineVersion,
    pulumi.Output<String>? operationIdentifier,
    pulumi.Output<BaselineParameters>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetIdentifier,
    pulumi.Output<BaselineTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      baselineIdentifier = pulumi.Input.asOptionalInput<String>(baselineIdentifier),
      baselineVersion = pulumi.Input.asOptionalInput<String>(baselineVersion),
      operationIdentifier = pulumi.Input.asOptionalInput<String>(operationIdentifier),
      parameters = pulumi.Input.asOptionalInput<BaselineParameters>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetIdentifier = pulumi.Input.asOptionalInput<String>(targetIdentifier),
      timeouts = pulumi.Input.asOptionalInput<BaselineTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      baselineIdentifier: map['baselineIdentifier'] == null ? null : pulumi.Output.create<String>(map['baselineIdentifier'] as String),
      baselineVersion: map['baselineVersion'] == null ? null : pulumi.Output.create<String>(map['baselineVersion'] as String),
      operationIdentifier: map['operationIdentifier'] == null ? null : pulumi.Output.create<String>(map['operationIdentifier'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<BaselineParameters>(BaselineParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetIdentifier: map['targetIdentifier'] == null ? null : pulumi.Output.create<String>(map['targetIdentifier'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<BaselineTimeouts>(BaselineTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

