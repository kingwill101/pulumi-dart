// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_networking_ipv4_private.dart';
import 'get_instance_networking_ipv4_public.dart';
import 'get_instance_networking_ipv4_reserved.dart';
import 'get_instance_networking_ipv4_shared.dart';
import 'get_instance_networking_ipv4_vpc.dart';

class GetInstanceNetworkingIpv4 {
  final List<GetInstanceNetworkingIpv4Private> privates;
  /// Whether this is a public or private IP address.
  final List<GetInstanceNetworkingIpv4Public> publics;
  final List<GetInstanceNetworkingIpv4Reserved> reserveds;
  final List<GetInstanceNetworkingIpv4Shared> shareds;
  final List<GetInstanceNetworkingIpv4Vpc> vpcs;

  /// Creates a new [GetInstanceNetworkingIpv4].
  /// [privates] Required.
  /// [publics] Whether this is a public or private IP address.
  /// [reserveds] Required.
  /// [shareds] Required.
  /// [vpcs] Required.
  GetInstanceNetworkingIpv4({
    required this.privates,
    required this.publics,
    required this.reserveds,
    required this.shareds,
    required this.vpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privates': pulumi.Input.encodeList<GetInstanceNetworkingIpv4Private, Map<String, dynamic>>(privates, (value) => value.toMap()),
      'publics': pulumi.Input.encodeList<GetInstanceNetworkingIpv4Public, Map<String, dynamic>>(publics, (value) => value.toMap()),
      'reserveds': pulumi.Input.encodeList<GetInstanceNetworkingIpv4Reserved, Map<String, dynamic>>(reserveds, (value) => value.toMap()),
      'shareds': pulumi.Input.encodeList<GetInstanceNetworkingIpv4Shared, Map<String, dynamic>>(shareds, (value) => value.toMap()),
      'vpcs': pulumi.Input.encodeList<GetInstanceNetworkingIpv4Vpc, Map<String, dynamic>>(vpcs, (value) => value.toMap()),
    };
  }

  factory GetInstanceNetworkingIpv4.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv4(
      privates: pulumi.Input.decodeList<GetInstanceNetworkingIpv4Private>(map['privates'], (value) => GetInstanceNetworkingIpv4Private.fromMap((value as Map).cast<String, dynamic>())),
      publics: pulumi.Input.decodeList<GetInstanceNetworkingIpv4Public>(map['publics'], (value) => GetInstanceNetworkingIpv4Public.fromMap((value as Map).cast<String, dynamic>())),
      reserveds: pulumi.Input.decodeList<GetInstanceNetworkingIpv4Reserved>(map['reserveds'], (value) => GetInstanceNetworkingIpv4Reserved.fromMap((value as Map).cast<String, dynamic>())),
      shareds: pulumi.Input.decodeList<GetInstanceNetworkingIpv4Shared>(map['shareds'], (value) => GetInstanceNetworkingIpv4Shared.fromMap((value as Map).cast<String, dynamic>())),
      vpcs: pulumi.Input.decodeList<GetInstanceNetworkingIpv4Vpc>(map['vpcs'], (value) => GetInstanceNetworkingIpv4Vpc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

