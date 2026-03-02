// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_range.dart';
import 'ipv6_range.dart';
import 'prefix_list_id.dart';
import 'user_id_group_pair.dart';

/// Definition of IpPermission
class IpPermission {
  /// <p>If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP type or -1 (all ICMP types).</p>
  final pulumi.Input<int>? fromPort;
  /// <p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>, <code>icmpv6</code>) or number (see <a href='http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml'>Protocol Numbers</a>).</p> <p>Use <code>-1</code> to specify all protocols. When authorizing security group rules, specifying <code>-1</code> or a protocol number other than <code>tcp</code>, <code>udp</code>, <code>icmp</code>, or <code>icmpv6</code> allows traffic on all ports, regardless of any port range you specify. For <code>tcp</code>, <code>udp</code>, and <code>icmp</code>, you must specify a port range. For <code>icmpv6</code>, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.</p>
  final pulumi.Input<String>? ipProtocol;
  /// <p>The IPv4 address ranges.</p>
  final pulumi.Input<List<IpRange>>? ipRanges;
  /// <p>The IPv6 address ranges.</p>
  final pulumi.Input<List<Ipv6Range>>? ipv6Ranges;
  /// <p>The prefix list IDs.</p>
  final pulumi.Input<List<PrefixListId>>? prefixListIds;
  /// <p>If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP code or -1 (all ICMP codes). If the start port is -1 (all ICMP types), then the end port must be -1 (all ICMP codes).</p>
  final pulumi.Input<int>? toPort;
  /// <p>The security group and Amazon Web Services account ID pairs.</p>
  final pulumi.Input<List<UserIdGroupPair>>? userIdGroupPairs;

  /// Creates a new [IpPermission].
  /// [fromPort] <p>If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP type or -1 (all ICMP types).</p>
  /// [ipProtocol] <p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>, <code>icmpv6</code>) or number (see <a href='http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml'>Protocol Numbers</a>).</p> <p>Use <code>-1</code> to specify all protocols. When authorizing security group rules, specifying <code>-1</code> or a protocol number other than <code>tcp</code>, <code>udp</code>, <code>icmp</code>, or <code>icmpv6</code> allows traffic on all ports, regardless of any port range you specify. For <code>tcp</code>, <code>udp</code>, and <code>icmp</code>, you must specify a port range. For <code>icmpv6</code>, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.</p>
  /// [ipRanges] <p>The IPv4 address ranges.</p>
  /// [ipv6Ranges] <p>The IPv6 address ranges.</p>
  /// [prefixListIds] <p>The prefix list IDs.</p>
  /// [toPort] <p>If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP code or -1 (all ICMP codes). If the start port is -1 (all ICMP types), then the end port must be -1 (all ICMP codes).</p>
  /// [userIdGroupPairs] <p>The security group and Amazon Web Services account ID pairs.</p>
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
      'ipRanges': ?pulumi.Input.mapOptionalInputValue<List<IpRange>, List<Map<String, dynamic>>>(ipRanges, (value) => pulumi.Input.encodeList<IpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Ranges': ?pulumi.Input.mapOptionalInputValue<List<Ipv6Range>, List<Map<String, dynamic>>>(ipv6Ranges, (value) => pulumi.Input.encodeList<Ipv6Range, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefixListIds': ?pulumi.Input.mapOptionalInputValue<List<PrefixListId>, List<Map<String, dynamic>>>(prefixListIds, (value) => pulumi.Input.encodeList<PrefixListId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toPort': ?toPort,
      'userIdGroupPairs': ?pulumi.Input.mapOptionalInputValue<List<UserIdGroupPair>, List<Map<String, dynamic>>>(userIdGroupPairs, (value) => pulumi.Input.encodeList<UserIdGroupPair, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IpPermission.fromMap(Map<String, dynamic> map) {
    return IpPermission(
      fromPort: map['fromPort'] == null ? null : (map['fromPort'] as int).input(),
      ipProtocol: map['ipProtocol'] == null ? null : (map['ipProtocol'] as String).input(),
      ipRanges: map['ipRanges'] == null ? null : (pulumi.Input.decodeList<IpRange>(map['ipRanges'], (value) => IpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6Ranges: map['ipv6Ranges'] == null ? null : (pulumi.Input.decodeList<Ipv6Range>(map['ipv6Ranges'], (value) => Ipv6Range.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefixListIds: map['prefixListIds'] == null ? null : (pulumi.Input.decodeList<PrefixListId>(map['prefixListIds'], (value) => PrefixListId.fromMap((value as Map).cast<String, dynamic>()))).input(),
      toPort: map['toPort'] == null ? null : (map['toPort'] as int).input(),
      userIdGroupPairs: map['userIdGroupPairs'] == null ? null : (pulumi.Input.decodeList<UserIdGroupPair>(map['userIdGroupPairs'], (value) => UserIdGroupPair.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

