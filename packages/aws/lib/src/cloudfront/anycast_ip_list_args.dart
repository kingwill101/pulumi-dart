// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anycast_ip_list_timeouts.dart';

/// {@template pulumi_cloudfront_anycast_ip_list_anycast_ip_list_args_doc}
/// The set of arguments for AnycastIpList.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_anycast_ip_list_anycast_ip_list_args_doc}
class AnycastIpListArgs {
  /// The number of static IP addresses that are allocated to the Anycast IP list. Valid values: `3`, `21`.
  final pulumi.Input<int> ipCount;

  /// Name of the Anycast IP list.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AnycastIpListTimeouts>? timeouts;

  /// Creates a new [AnycastIpListArgs].
  /// [ipCount] The number of static IP addresses that are allocated to the Anycast IP list. Valid values: `3`, `21`.
  /// [name] Name of the Anycast IP list.
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AnycastIpListArgs({
    required int ipCount,
    String? name,
    Map<String, String>? tags,
    AnycastIpListTimeouts? timeouts,
  })  : ipCount = pulumi.Input.asInput<int>(ipCount),
        name = pulumi.Input.asOptionalInput<String>(name),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts =
            pulumi.Input.asOptionalInput<AnycastIpListTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipCount'] = ipCount;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AnycastIpListTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnycastIpListArgs.fromMap(Map<String, dynamic> map) {
    return AnycastIpListArgs(
      ipCount: map['ipCount'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : AnycastIpListTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
