// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_job_output_data_config_s3_output_data_config.dart';

class InvocationJobOutputDataConfig {
  /// Location of the S3 output data. See `s3OutputDataConfig` Block below.
  final pulumi.Input<InvocationJobOutputDataConfigS3OutputDataConfig> s3OutputDataConfig;

  /// Creates a new [InvocationJobOutputDataConfig].
  /// [s3OutputDataConfig] Location of the S3 output data. See `s3OutputDataConfig` Block below.
  const InvocationJobOutputDataConfig({
    required this.s3OutputDataConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3OutputDataConfig': pulumi.Input.mapInputValue<InvocationJobOutputDataConfigS3OutputDataConfig, Map<String, dynamic>>(s3OutputDataConfig, (value) => value.toMap()),
    };
  }

  factory InvocationJobOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return InvocationJobOutputDataConfig(
      s3OutputDataConfig: pulumi.Input.fromValue(InvocationJobOutputDataConfigS3OutputDataConfig.fromMap((map['s3OutputDataConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
