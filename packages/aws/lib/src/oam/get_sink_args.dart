// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oam_get_sink_get_sink_args_doc}
/// Arguments for getSink.
/// {@endtemplate}
/// {@macro pulumi_oam_get_sink_get_sink_args_doc}
class GetSinkArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the sink.
  final pulumi.Input<String> sinkIdentifier;

  /// Tags assigned to the sink.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSinkArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sinkIdentifier] ARN of the sink.
  /// [tags] Tags assigned to the sink.
  GetSinkArgs({
    String? region,
    required String sinkIdentifier,
    Map<String, String>? tags,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       sinkIdentifier = pulumi.Input.asInput<String>(sinkIdentifier),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'sinkIdentifier': sinkIdentifier,
      'tags': ?tags,
    };
  }

  factory GetSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetSinkArgs(
      region: map['region'] == null ? null : map['region'] as String,
      sinkIdentifier: map['sinkIdentifier'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
