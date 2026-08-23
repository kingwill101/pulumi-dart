// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anycast_ip_list_timeouts.dart';

/// Input properties used for looking up and filtering AnycastIpList resources.
class AnycastIpListState {
  /// The static IP addresses that are allocated to the Anycast IP list.
  final pulumi.Input<List<String>>? anycastIps;
  /// The Anycast IP list ARN.
  final pulumi.Input<String>? arn;
  /// The current version of the Anycast IP list.
  final pulumi.Input<String>? etag;
  /// The number of static IP addresses that are allocated to the Anycast IP list. Valid values: `3`, `21`.
  final pulumi.Input<int>? ipCount;
  /// Name of the Anycast IP list.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AnycastIpListTimeouts>? timeouts;

  /// Creates a new [AnycastIpListState].
  /// [anycastIps] The static IP addresses that are allocated to the Anycast IP list.
  /// [arn] The Anycast IP list ARN.
  /// [etag] The current version of the Anycast IP list.
  /// [ipCount] The number of static IP addresses that are allocated to the Anycast IP list. Valid values: `3`, `21`.
  /// [name] Name of the Anycast IP list.
  /// [tags] Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const AnycastIpListState({
    this.anycastIps,
    this.arn,
    this.etag,
    this.ipCount,
    this.name,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastIps': ?anycastIps,
      'arn': ?arn,
      'etag': ?etag,
      'ipCount': ?ipCount,
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AnycastIpListTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AnycastIpListState.fromMap(Map<String, dynamic> map) {
    return AnycastIpListState(
      anycastIps: (() { final guardedValue = map['anycastIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipCount: (() { final guardedValue = map['ipCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnycastIpListTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
