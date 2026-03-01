// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kinesis_get_stream_get_stream_args_doc}
/// Arguments for getStream.
/// {@endtemplate}
/// {@macro pulumi_kinesis_get_stream_get_stream_args_doc}
class GetStreamArgs {
  /// Name of the Kinesis Stream.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assigned to the stream.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetStreamArgs].
  /// [name] Name of the Kinesis Stream.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assigned to the stream.
  GetStreamArgs({
    required String name,
    String? region,
    Map<String, String>? tags,
  }) : name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region, 'tags': ?tags};
  }

  factory GetStreamArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
