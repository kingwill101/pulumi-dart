// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerPortRange {
  /// The last port in the range. Must be from 1 through 65535 and greater than `start`.
  final pulumi.Input<double> end;
  /// The first port in the range. Must be from 1 through 65535 and less than `end`.
  final pulumi.Input<double> start;

  /// Creates a new [ContainerPortRange].
  /// [end] The last port in the range. Must be from 1 through 65535 and greater than `start`.
  /// [start] The first port in the range. Must be from 1 through 65535 and less than `end`.
  const ContainerPortRange({
    required this.end,
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': end,
      'start': start,
    };
  }

  factory ContainerPortRange.fromMap(Map<String, dynamic> map) {
    return ContainerPortRange(
      end: pulumi.Input.fromValue((map['end'] as num).toDouble()),
      start: pulumi.Input.fromValue((map['start'] as num).toDouble()),
    );
  }
}
