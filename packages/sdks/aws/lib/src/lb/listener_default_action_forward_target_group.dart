// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionForwardTargetGroup {
  /// ARN of the target group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> arn;
  /// Weight. The range is 0 to 999.
  final pulumi.Input<int>? weight;

  /// Creates a new [ListenerDefaultActionForwardTargetGroup].
  /// [arn] ARN of the target group.
  /// [weight] Weight. The range is 0 to 999.
  ListenerDefaultActionForwardTargetGroup({
    required this.arn,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'weight': ?weight,
    };
  }

  factory ListenerDefaultActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForwardTargetGroup(
      arn: (map['arn'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

