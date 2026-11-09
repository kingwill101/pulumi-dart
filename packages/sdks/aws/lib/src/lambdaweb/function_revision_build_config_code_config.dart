// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_revision_build_config_code_config_s3_object.dart';

class FunctionRevisionBuildConfigCodeConfig {
  /// Amazon S3 location of the deployment artifact. See `build_config.code_config.s3_object` Block below.
  final pulumi.Input<FunctionRevisionBuildConfigCodeConfigS3Object> s3Object;

  /// Creates a new [FunctionRevisionBuildConfigCodeConfig].
  /// [s3Object] Amazon S3 location of the deployment artifact. See `build_config.code_config.s3_object` Block below.
  const FunctionRevisionBuildConfigCodeConfig({
    required this.s3Object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Object': pulumi.Input.mapInputValue<FunctionRevisionBuildConfigCodeConfigS3Object, Map<String, dynamic>>(s3Object, (value) => value.toMap()),
    };
  }

  factory FunctionRevisionBuildConfigCodeConfig.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionBuildConfigCodeConfig(
      s3Object: pulumi.Input.fromValue(FunctionRevisionBuildConfigCodeConfigS3Object.fromMap((map['s3Object']! as Map).cast<String, dynamic>())),
    );
  }
}
