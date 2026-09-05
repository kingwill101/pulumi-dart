// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImagePipelineLoggingConfiguration {
  /// Name of the CloudWatch Log Group to send image logs to.
  final pulumi.Input<String?>? imageLogGroupName;
  /// Name of the CloudWatch Log Group to send pipeline logs to.
  final pulumi.Input<String?>? pipelineLogGroupName;

  /// Creates a new [ImagePipelineLoggingConfiguration].
  /// [imageLogGroupName] Name of the CloudWatch Log Group to send image logs to.
  /// [pipelineLogGroupName] Name of the CloudWatch Log Group to send pipeline logs to.
  const ImagePipelineLoggingConfiguration({
    this.imageLogGroupName,
    this.pipelineLogGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageLogGroupName': ?imageLogGroupName,
      'pipelineLogGroupName': ?pipelineLogGroupName,
    };
  }

  factory ImagePipelineLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return ImagePipelineLoggingConfiguration(
      imageLogGroupName: (() { final guardedValue = map['imageLogGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineLogGroupName: (() { final guardedValue = map['pipelineLogGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
