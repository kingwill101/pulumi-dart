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
  final pulumi.Input<String?>? name;
  /// Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<AnycastIpListTimeouts?>? timeouts;

  /// Creates a new [AnycastIpListArgs].
  /// [ipCount] The number of static IP addresses that are allocated to the Anycast IP list. Valid values: `3`, `21`.
  /// [name] Name of the Anycast IP list.
  /// [tags] Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AnycastIpListArgs({
    required this.ipCount,
    this.name,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipCount': ipCount,
      'name': ?name,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AnycastIpListTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AnycastIpListArgs.fromMap(Map<String, dynamic> map) {
    return AnycastIpListArgs(
      ipCount: pulumi.Input.fromValue((map['ipCount'] as num).toInt()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnycastIpListTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
