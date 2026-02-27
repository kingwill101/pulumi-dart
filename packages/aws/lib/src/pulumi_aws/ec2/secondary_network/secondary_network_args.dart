// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../secondary_network_timeouts/secondary_network_timeouts.dart';

/// The set of arguments for SecondaryNetwork.
class SecondaryNetworkArgs {
  /// IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  final pulumi.Input<String> ipv4CidrBlock;

  /// Type of secondary network. Currently only `rdma` is supported.
  final pulumi.Input<String> networkType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<SecondaryNetworkTimeouts>? timeouts;

  SecondaryNetworkArgs({
    required this.ipv4CidrBlock,
    required this.networkType,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv4CidrBlock'] = ipv4CidrBlock;
    map['networkType'] = networkType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          SecondaryNetworkTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecondaryNetworkArgs.fromMap(Map<String, dynamic> map) {
    return SecondaryNetworkArgs(
      ipv4CidrBlock: pulumi.Input.asInput<String>(map['ipv4CidrBlock']),
      networkType: pulumi.Input.asInput<String>(map['networkType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<SecondaryNetworkTimeouts>(
          map['timeouts']),
    );
  }
}
