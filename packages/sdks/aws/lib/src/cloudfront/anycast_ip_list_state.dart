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
  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AnycastIpListTimeouts>? timeouts;

  /// Creates a new [AnycastIpListState].
  /// [anycastIps] The static IP addresses that are allocated to the Anycast IP list.
  /// [arn] The Anycast IP list ARN.
  /// [etag] The current version of the Anycast IP list.
  /// [ipCount] The number of static IP addresses that are allocated to the Anycast IP list. Valid values: `3`, `21`.
  /// [name] Name of the Anycast IP list.
  /// [tags] Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  AnycastIpListState({
    pulumi.Output<List<String>>? anycastIps,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? etag,
    pulumi.Output<int>? ipCount,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AnycastIpListTimeouts>? timeouts,
  }) :
      anycastIps = pulumi.Input.asOptionalInput<List<String>>(anycastIps),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      ipCount = pulumi.Input.asOptionalInput<int>(ipCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AnycastIpListTimeouts>(timeouts);

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
      anycastIps: map['anycastIps'] == null ? null : pulumi.Output.create<List<String>>((map['anycastIps'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      ipCount: map['ipCount'] == null ? null : pulumi.Output.create<int>(map['ipCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AnycastIpListTimeouts>(AnycastIpListTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

