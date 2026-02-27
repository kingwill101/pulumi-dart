// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSink.
class GetSinkArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the sink.
  final pulumi.Input<String> sinkIdentifier;

  /// Tags assigned to the sink.
  final pulumi.Input<Map<String, String>>? tags;

  GetSinkArgs({
    this.region,
    required this.sinkIdentifier,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sinkIdentifier'] = sinkIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSinkArgs.fromMap(Map<String, dynamic> map) {
    return GetSinkArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sinkIdentifier: pulumi.Input.asInput<String>(map['sinkIdentifier']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
