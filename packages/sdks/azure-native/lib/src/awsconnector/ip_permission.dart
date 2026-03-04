// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_range.dart';
import 'ipv6_range.dart';
import 'prefix_list_id.dart';
import 'user_id_group_pair.dart';

/// Definition of IpPermission
class IpPermission {
  /// &lt;p&gt;If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP type or -1 (all ICMP types).&lt;/p&gt;
  final pulumi.Input<int>? fromPort;

  /// &lt;p&gt;The IP protocol name (&lt;code&gt;tcp&lt;/code&gt;, &lt;code&gt;udp&lt;/code&gt;, &lt;code&gt;icmp&lt;/code&gt;, &lt;code&gt;icmpv6&lt;/code&gt;) or number (see &lt;a href='http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml'&gt;Protocol Numbers&lt;/a&gt;).&lt;/p&gt; &lt;p&gt;Use &lt;code&gt;-1&lt;/code&gt; to specify all protocols. When authorizing security group rules, specifying &lt;code&gt;-1&lt;/code&gt; or a protocol number other than &lt;code&gt;tcp&lt;/code&gt;, &lt;code&gt;udp&lt;/code&gt;, &lt;code&gt;icmp&lt;/code&gt;, or &lt;code&gt;icmpv6&lt;/code&gt; allows traffic on all ports, regardless of any port range you specify. For &lt;code&gt;tcp&lt;/code&gt;, &lt;code&gt;udp&lt;/code&gt;, and &lt;code&gt;icmp&lt;/code&gt;, you must specify a port range. For &lt;code&gt;icmpv6&lt;/code&gt;, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.&lt;/p&gt;
  final pulumi.Input<String>? ipProtocol;

  /// &lt;p&gt;The IPv4 address ranges.&lt;/p&gt;
  final pulumi.Input<List<IpRange>>? ipRanges;

  /// &lt;p&gt;The IPv6 address ranges.&lt;/p&gt;
  final pulumi.Input<List<Ipv6Range>>? ipv6Ranges;

  /// &lt;p&gt;The prefix list IDs.&lt;/p&gt;
  final pulumi.Input<List<PrefixListId>>? prefixListIds;

  /// &lt;p&gt;If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP code or -1 (all ICMP codes). If the start port is -1 (all ICMP types), then the end port must be -1 (all ICMP codes).&lt;/p&gt;
  final pulumi.Input<int>? toPort;

  /// &lt;p&gt;The security group and Amazon Web Services account ID pairs.&lt;/p&gt;
  final pulumi.Input<List<UserIdGroupPair>>? userIdGroupPairs;

  /// Creates a new [IpPermission].
  /// [fromPort] &lt;p&gt;If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP type or -1 (all ICMP types).&lt;/p&gt;
  /// [ipProtocol] &lt;p&gt;The IP protocol name (&lt;code&gt;tcp&lt;/code&gt;, &lt;code&gt;udp&lt;/code&gt;, &lt;code&gt;icmp&lt;/code&gt;, &lt;code&gt;icmpv6&lt;/code&gt;) or number (see &lt;a href='http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml'&gt;Protocol Numbers&lt;/a&gt;).&lt;/p&gt; &lt;p&gt;Use &lt;code&gt;-1&lt;/code&gt; to specify all protocols. When authorizing security group rules, specifying &lt;code&gt;-1&lt;/code&gt; or a protocol number other than &lt;code&gt;tcp&lt;/code&gt;, &lt;code&gt;udp&lt;/code&gt;, &lt;code&gt;icmp&lt;/code&gt;, or &lt;code&gt;icmpv6&lt;/code&gt; allows traffic on all ports, regardless of any port range you specify. For &lt;code&gt;tcp&lt;/code&gt;, &lt;code&gt;udp&lt;/code&gt;, and &lt;code&gt;icmp&lt;/code&gt;, you must specify a port range. For &lt;code&gt;icmpv6&lt;/code&gt;, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.&lt;/p&gt;
  /// [ipRanges] &lt;p&gt;The IPv4 address ranges.&lt;/p&gt;
  /// [ipv6Ranges] &lt;p&gt;The IPv6 address ranges.&lt;/p&gt;
  /// [prefixListIds] &lt;p&gt;The prefix list IDs.&lt;/p&gt;
  /// [toPort] &lt;p&gt;If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP code or -1 (all ICMP codes). If the start port is -1 (all ICMP types), then the end port must be -1 (all ICMP codes).&lt;/p&gt;
  /// [userIdGroupPairs] &lt;p&gt;The security group and Amazon Web Services account ID pairs.&lt;/p&gt;
  IpPermission({
    this.fromPort,
    this.ipProtocol,
    this.ipRanges,
    this.ipv6Ranges,
    this.prefixListIds,
    this.toPort,
    this.userIdGroupPairs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'ipProtocol': ?ipProtocol,
      'ipRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<IpRange>,
            List<Map<String, dynamic>>
          >(
            ipRanges,
            (value) => pulumi.Input.encodeList<IpRange, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'ipv6Ranges':
          ?pulumi.Input.mapOptionalInputValue<
            List<Ipv6Range>,
            List<Map<String, dynamic>>
          >(
            ipv6Ranges,
            (value) => pulumi.Input.encodeList<Ipv6Range, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'prefixListIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<PrefixListId>,
            List<Map<String, dynamic>>
          >(
            prefixListIds,
            (value) =>
                pulumi.Input.encodeList<PrefixListId, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'toPort': ?toPort,
      'userIdGroupPairs':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserIdGroupPair>,
            List<Map<String, dynamic>>
          >(
            userIdGroupPairs,
            (value) =>
                pulumi.Input.encodeList<UserIdGroupPair, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory IpPermission.fromMap(Map<String, dynamic> map) {
    return IpPermission(
      fromPort: (() {
        final guardedValue = map['fromPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipProtocol: (() {
        final guardedValue = map['ipProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipRanges: (() {
        final guardedValue = map['ipRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IpRange>(
            guardedValue,
            (value) => IpRange.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      ipv6Ranges: (() {
        final guardedValue = map['ipv6Ranges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Ipv6Range>(
            guardedValue,
            (value) =>
                Ipv6Range.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      prefixListIds: (() {
        final guardedValue = map['prefixListIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PrefixListId>(
            guardedValue,
            (value) =>
                PrefixListId.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      toPort: (() {
        final guardedValue = map['toPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      userIdGroupPairs: (() {
        final guardedValue = map['userIdGroupPairs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserIdGroupPair>(
            guardedValue,
            (value) =>
                UserIdGroupPair.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
