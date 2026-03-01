// ignore_for_file: unused_element, unnecessary_cast

class ImagePipelineLoggingConfiguration {
  /// Name of the CloudWatch Log Group to send image logs to.
  final String? imageLogGroupName;

  /// Name of the CloudWatch Log Group to send pipeline logs to.
  final String? pipelineLogGroupName;

  /// Creates a new [ImagePipelineLoggingConfiguration].
  /// [imageLogGroupName] Name of the CloudWatch Log Group to send image logs to.
  /// [pipelineLogGroupName] Name of the CloudWatch Log Group to send pipeline logs to.
  ImagePipelineLoggingConfiguration({
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
      imageLogGroupName: map['imageLogGroupName'] == null
          ? null
          : map['imageLogGroupName'] as String,
      pipelineLogGroupName: map['pipelineLogGroupName'] == null
          ? null
          : map['pipelineLogGroupName'] as String,
    );
  }
}
