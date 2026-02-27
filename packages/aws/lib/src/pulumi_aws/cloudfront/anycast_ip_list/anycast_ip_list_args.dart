// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../anycast_ip_list_timeouts/anycast_ip_list_timeouts.dart';

/// The set of arguments for AnycastIpList.
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

  AnycastIpListArgs({
    required this.ipCount,
    this.name,
    this.tags,
    this.timeouts,
  });

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
      ipCount: pulumi.Input.asInput<int>(map['ipCount']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<AnycastIpListTimeouts>(map['timeouts']),
    );
  }
}
