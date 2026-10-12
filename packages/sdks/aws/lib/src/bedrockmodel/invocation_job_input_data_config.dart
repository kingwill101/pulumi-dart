// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_job_input_data_config_s3_input_data_config.dart';

class InvocationJobInputDataConfig {
  /// Location of the S3 input data. See `s3InputDataConfig` Block below.
  final pulumi.Input<InvocationJobInputDataConfigS3InputDataConfig> s3InputDataConfig;

  /// Creates a new [InvocationJobInputDataConfig].
  /// [s3InputDataConfig] Location of the S3 input data. See `s3InputDataConfig` Block below.
  const InvocationJobInputDataConfig({
    required this.s3InputDataConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3InputDataConfig': pulumi.Input.mapInputValue<InvocationJobInputDataConfigS3InputDataConfig, Map<String, dynamic>>(s3InputDataConfig, (value) => value.toMap()),
    };
  }

  factory InvocationJobInputDataConfig.fromMap(Map<String, dynamic> map) {
    return InvocationJobInputDataConfig(
      s3InputDataConfig: pulumi.Input.fromValue(InvocationJobInputDataConfigS3InputDataConfig.fromMap((map['s3InputDataConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
