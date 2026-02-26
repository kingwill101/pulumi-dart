// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../secondary_network_timeouts/secondary_network_timeouts.dart';

/// The set of arguments for SecondaryNetwork.
class SecondaryNetworkArgs {
  /// IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  final Input<String> ipv4CidrBlock;

  /// Type of secondary network. Currently only <span pulumi-lang-nodejs="`rdma`" pulumi-lang-dotnet="`Rdma`" pulumi-lang-go="`rdma`" pulumi-lang-python="`rdma`" pulumi-lang-yaml="`rdma`" pulumi-lang-java="`rdma`">`rdma`</span> is supported.
  final Input<String> networkType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<SecondaryNetworkTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<SecondaryNetworkTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecondaryNetworkArgs.fromMap(Map<String, dynamic> map) {
    return SecondaryNetworkArgs(
      ipv4CidrBlock: Input.asInput<String>(map['ipv4CidrBlock']),
      networkType: Input.asInput<String>(map['networkType']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<SecondaryNetworkTimeouts>(map['timeouts']),
    );
  }
}
