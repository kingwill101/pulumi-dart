// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FirelensConfiguration
class FirelensConfiguration {
  /// The options to use when configuring the log router. This field is optional and can be used to add additional metadata, such as the task, task definition, cluster, and container instance details to the log event.  If specified, valid option keys are:  +   ``enable-ecs-log-metadata``, which can be ``true`` or ``false``   +   ``config-file-type``, which can be ``s3`` or ``file``   +   ``config-file-value``, which is either an S3 ARN or a file path
  final dynamic options;
  /// The log router to use. The valid values are ``fluentd`` or ``fluentbit``.
  final String? type;

  /// Creates a new [FirelensConfiguration].
  /// [options] The options to use when configuring the log router. This field is optional and can be used to add additional metadata, such as the task, task definition, cluster, and container instance details to the log event.  If specified, valid option keys are:  +   ``enable-ecs-log-metadata``, which can be ``true`` or ``false``   +   ``config-file-type``, which can be ``s3`` or ``file``   +   ``config-file-value``, which is either an S3 ARN or a file path
  /// [type] The log router to use. The valid values are ``fluentd`` or ``fluentbit``.
  FirelensConfiguration({
    this.options,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'options': ?options,
      'type': ?type,
    };
  }

  factory FirelensConfiguration.fromMap(Map<String, dynamic> map) {
    return FirelensConfiguration(
      options: map['options'] == null ? null : map['options'],
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

