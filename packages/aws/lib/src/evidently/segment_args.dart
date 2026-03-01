// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_evidently_segment_segment_args_doc}
/// The set of arguments for Segment.
/// {@endtemplate}
/// {@macro pulumi_evidently_segment_segment_args_doc}
class SegmentArgs {
  /// Specifies the description of the segment.
  final pulumi.Input<String>? description;

  /// A name for the segment.
  final pulumi.Input<String>? name;

  /// The pattern to use for the segment. For more information about pattern syntax, see [Segment rule pattern syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).
  final pulumi.Input<String> pattern;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the segment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SegmentArgs].
  /// [description] Specifies the description of the segment.
  /// [name] A name for the segment.
  /// [pattern] The pattern to use for the segment. For more information about pattern syntax, see [Segment rule pattern syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the segment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SegmentArgs({
    String? description,
    String? name,
    required String pattern,
    String? region,
    Map<String, String>? tags,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       name = pulumi.Input.asOptionalInput<String>(name),
       pattern = pulumi.Input.asInput<String>(pattern),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'pattern': pattern,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory SegmentArgs.fromMap(Map<String, dynamic> map) {
    return SegmentArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pattern: map['pattern'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
