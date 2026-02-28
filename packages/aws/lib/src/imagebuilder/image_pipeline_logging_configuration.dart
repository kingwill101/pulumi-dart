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
    final map = <String, dynamic>{};
    final imageLogGroupNameValue = imageLogGroupName;
    if (imageLogGroupNameValue != null) {
      map['imageLogGroupName'] = imageLogGroupNameValue;
    }
    final pipelineLogGroupNameValue = pipelineLogGroupName;
    if (pipelineLogGroupNameValue != null) {
      map['pipelineLogGroupName'] = pipelineLogGroupNameValue;
    }
    return map;
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
