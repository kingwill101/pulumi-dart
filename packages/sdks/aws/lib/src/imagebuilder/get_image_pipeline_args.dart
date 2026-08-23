// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imagebuilder_get_image_pipeline_get_image_pipeline_args_doc}
/// Arguments for getImagePipeline.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_image_pipeline_get_image_pipeline_args_doc}
class GetImagePipelineArgs {
  /// ARN of the image pipeline.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the image pipeline.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetImagePipelineArgs].
  /// [arn] ARN of the image pipeline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the image pipeline.
  const GetImagePipelineArgs({
    required this.arn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetImagePipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetImagePipelineArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
