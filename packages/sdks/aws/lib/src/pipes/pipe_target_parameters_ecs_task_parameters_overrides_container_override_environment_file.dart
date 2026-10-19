// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile {
  /// File type to use. The only supported value is s3.
  final pulumi.Input<String> type;
  /// ARN of the Amazon S3 object containing the environment variable file.
  final pulumi.Input<String> value;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile].
  /// [type] File type to use. The only supported value is s3.
  /// [value] ARN of the Amazon S3 object containing the environment variable file.
  const PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverridesContainerOverrideEnvironmentFile(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
