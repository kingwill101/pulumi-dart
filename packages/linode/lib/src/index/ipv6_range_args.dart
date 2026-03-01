// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ipv6_range_ipv6_range_args_doc}
/// The set of arguments for Ipv6Range.
/// {@endtemplate}
/// {@macro pulumi_index_ipv6_range_ipv6_range_args_doc}
class Ipv6RangeArgs {
  /// The ID of the Linode to assign this range to. This field may be updated to reassign the IPv6 range.
  final pulumi.Input<int>? linodeId;
  /// The prefix length of the IPv6 range.
  final pulumi.Input<int> prefixLength;
  /// The IPv6 SLAAC address to assign this range to.
  final pulumi.Input<String>? routeTarget;

  /// Creates a new [Ipv6RangeArgs].
  /// [linodeId] The ID of the Linode to assign this range to. This field may be updated to reassign the IPv6 range.
  /// [prefixLength] The prefix length of the IPv6 range.
  /// [routeTarget] The IPv6 SLAAC address to assign this range to.
  Ipv6RangeArgs({
    int? linodeId,
    required int prefixLength,
    String? routeTarget,
  }) :
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId),
      prefixLength = pulumi.Input.asInput<int>(prefixLength),
      routeTarget = pulumi.Input.asOptionalInput<String>(routeTarget);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linodeId': ?linodeId,
      'prefixLength': prefixLength,
      'routeTarget': ?routeTarget,
    };
  }

  factory Ipv6RangeArgs.fromMap(Map<String, dynamic> map) {
    return Ipv6RangeArgs(
      linodeId: map['linodeId'] == null ? null : map['linodeId'] as int,
      prefixLength: map['prefixLength'] as int,
      routeTarget: map['routeTarget'] == null ? null : map['routeTarget'] as String,
    );
  }
}

