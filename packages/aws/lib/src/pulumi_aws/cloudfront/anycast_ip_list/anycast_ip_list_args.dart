// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../anycast_ip_list_timeouts/anycast_ip_list_timeouts.dart';

/// The set of arguments for AnycastIpList.
class AnycastIpListArgs {
  /// The number of static IP addresses that are allocated to the Anycast IP list. Valid values: <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>, <span pulumi-lang-nodejs="`21`" pulumi-lang-dotnet="`21`" pulumi-lang-go="`21`" pulumi-lang-python="`21`" pulumi-lang-yaml="`21`" pulumi-lang-java="`21`">`21`</span>.
  final Input<int> ipCount;

  /// Name of the Anycast IP list.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AnycastIpListTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<AnycastIpListTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnycastIpListArgs.fromMap(Map<String, dynamic> map) {
    return AnycastIpListArgs(
      ipCount: Input.asInput<int>(map['ipCount']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<AnycastIpListTimeouts>(map['timeouts']),
    );
  }
}
