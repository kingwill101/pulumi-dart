// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Graph resources.
class GraphState {
  /// Date and time, in UTC and extended RFC 3339 format, when the Amazon Detective Graph was created.
  final pulumi.Input<String>? createdTime;
  /// ARN of the Detective Graph.
  final pulumi.Input<String>? graphArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [GraphState].
  /// [createdTime] Date and time, in UTC and extended RFC 3339 format, when the Amazon Detective Graph was created.
  /// [graphArn] ARN of the Detective Graph.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  GraphState({
    this.createdTime,
    this.graphArn,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTime': ?createdTime,
      'graphArn': ?graphArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory GraphState.fromMap(Map<String, dynamic> map) {
    return GraphState(
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      graphArn: map['graphArn'] == null ? null : (map['graphArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

