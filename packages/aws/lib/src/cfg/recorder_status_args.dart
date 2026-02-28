// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_recorder_status_recorder_status_args_doc}
/// The set of arguments for RecorderStatus.
/// {@endtemplate}
/// {@macro pulumi_cfg_recorder_status_recorder_status_args_doc}
class RecorderStatusArgs {
  /// Whether the configuration recorder should be enabled or disabled.
  final pulumi.Input<bool> isEnabled;
  /// The name of the recorder
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [RecorderStatusArgs].
  /// [isEnabled] Whether the configuration recorder should be enabled or disabled.
  /// [name] The name of the recorder
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  RecorderStatusArgs({
    required bool isEnabled,
    String? name,
    String? region,
  }) :
      isEnabled = pulumi.Input.asInput<bool>(isEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': isEnabled,
      'name': ?name,
      'region': ?region,
    };
  }

  factory RecorderStatusArgs.fromMap(Map<String, dynamic> map) {
    return RecorderStatusArgs(
      isEnabled: map['isEnabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

