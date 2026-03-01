// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_range.dart';
import 'ipv6_range.dart';
import 'prefix_list_id.dart';
import 'user_id_group_pair.dart';

/// Definition of IpPermission
class IpPermission {
  /// <p>If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP type or -1 (all ICMP types).</p>
  final int? fromPort;
  /// <p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>, <code>icmpv6</code>) or number (see <a href='http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml'>Protocol Numbers</a>).</p> <p>Use <code>-1</code> to specify all protocols. When authorizing security group rules, specifying <code>-1</code> or a protocol number other than <code>tcp</code>, <code>udp</code>, <code>icmp</code>, or <code>icmpv6</code> allows traffic on all ports, regardless of any port range you specify. For <code>tcp</code>, <code>udp</code>, and <code>icmp</code>, you must specify a port range. For <code>icmpv6</code>, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.</p>
  final String? ipProtocol;
  /// <p>The IPv4 address ranges.</p>
  final List<IpRange>? ipRanges;
  /// <p>The IPv6 address ranges.</p>
  final List<Ipv6Range>? ipv6Ranges;
  /// <p>The prefix list IDs.</p>
  final List<PrefixListId>? prefixListIds;
  /// <p>If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP or ICMPv6, this is the ICMP code or -1 (all ICMP codes). If the start port is -1 (all ICMP types), then the end port must be -1 (all ICMP codes).</p>
  final int? toPort;
  /// <p>The security group and Amazon Web Services account ID pairs.</p>
  final List<UserIdGroupPair>? userIdGroupPairs;

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
      'ipRanges': ?ipRanges == null ? null : pulumi.Input.encodeList<IpRange, Map<String, dynamic>>(ipRanges!, (value) => value.toMap()),
      'ipv6Ranges': ?ipv6Ranges == null ? null : pulumi.Input.encodeList<Ipv6Range, Map<String, dynamic>>(ipv6Ranges!, (value) => value.toMap()),
      'prefixListIds': ?prefixListIds == null ? null : pulumi.Input.encodeList<PrefixListId, Map<String, dynamic>>(prefixListIds!, (value) => value.toMap()),
      'toPort': ?toPort,
      'userIdGroupPairs': ?userIdGroupPairs == null ? null : pulumi.Input.encodeList<UserIdGroupPair, Map<String, dynamic>>(userIdGroupPairs!, (value) => value.toMap()),
    };
  }

  factory IpPermission.fromMap(Map<String, dynamic> map) {
    return IpPermission(
      fromPort: map['fromPort'] == null ? null : map['fromPort'] as int,
      ipProtocol: map['ipProtocol'] == null ? null : map['ipProtocol'] as String,
      ipRanges: map['ipRanges'] == null ? null : pulumi.Input.decodeList<IpRange>(map['ipRanges'], (value) => IpRange.fromMap((value as Map).cast<String, dynamic>())),
      ipv6Ranges: map['ipv6Ranges'] == null ? null : pulumi.Input.decodeList<Ipv6Range>(map['ipv6Ranges'], (value) => Ipv6Range.fromMap((value as Map).cast<String, dynamic>())),
      prefixListIds: map['prefixListIds'] == null ? null : pulumi.Input.decodeList<PrefixListId>(map['prefixListIds'], (value) => PrefixListId.fromMap((value as Map).cast<String, dynamic>())),
      toPort: map['toPort'] == null ? null : map['toPort'] as int,
      userIdGroupPairs: map['userIdGroupPairs'] == null ? null : pulumi.Input.decodeList<UserIdGroupPair>(map['userIdGroupPairs'], (value) => UserIdGroupPair.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

