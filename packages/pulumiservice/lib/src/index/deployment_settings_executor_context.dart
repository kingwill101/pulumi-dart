// ignore_for_file: unused_element, unnecessary_cast


/// The executor context defines information about the executor where the deployment is executed. If unspecified, the default 'pulumi/pulumi' image is used.
class DeploymentSettingsExecutorContext {
  /// Allows overriding the default executor image with a custom image. E.g. 'pulumi/pulumi-nodejs:latest'
  final String executorImage;

  /// Creates a new [DeploymentSettingsExecutorContext].
  /// [executorImage] Allows overriding the default executor image with a custom image. E.g. 'pulumi/pulumi-nodejs:latest'
  DeploymentSettingsExecutorContext({
    required this.executorImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executorImage': executorImage,
    };
  }

  factory DeploymentSettingsExecutorContext.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsExecutorContext(
      executorImage: map['executorImage'] as String,
    );
  }
}

