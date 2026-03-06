// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_bgp_group_bgp_group_args_doc}
/// The set of arguments for BgpGroup.
/// {@endtemplate}
/// {@macro pulumi_vpc_bgp_group_bgp_group_args_doc}
class BgpGroupArgs {
  /// The authentication key of the BGP group.
  final pulumi.Input<String>? authKey;
  /// The name of the BGP group. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String>? bgpGroupName;
  /// Specifies whether to clear the secret key. Valid values: `true`, `false`.
  final pulumi.Input<bool>? clearAuthKey;
  /// The description of the BGP group. The description must be 2 to 256 characters in length. It must start with a letter and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The IP version. Valid values:
  /// - `IPv4`: This is the default value.
  /// - `IPv6`: IPv6 is supported only if the VBR for which you want to create the BGP group has IPv6 enabled.
  final pulumi.Input<String>? ipVersion;
  /// Specifies whether to use a fake AS number. Valid values: `true`, `false`.
  ///
  /// &gt; **NOTE:** Note A router that runs BGP typically belongs to only one AS. If you need to replace an AS with a new one, but you cannot immediately modify BGP configurations due to business requirements, you can specify a fake AS number to establish a connection with the local end. This ensures service continuity in scenarios such as AS migration or AS merging.
  final pulumi.Input<bool>? isFakeAsn;
  /// The custom ASN on the Alibaba Cloud side. Valid values:
  final pulumi.Input<int>? localAsn;
  /// The ASN of the gateway device in the data center.
  final pulumi.Input<int> peerAsn;
  /// The maximum number of routes supported by a BGP peer. Default value: 110.
  final pulumi.Input<int>? routeLimit;
  /// The ID of the virtual border router (VBR) that is associated with the BGP group.
  final pulumi.Input<String> routerId;

  /// Creates a new [BgpGroupArgs].
  /// [authKey] The authentication key of the BGP group.
  /// [bgpGroupName] The name of the BGP group. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  /// [clearAuthKey] Specifies whether to clear the secret key. Valid values: `true`, `false`.
  /// [description] The description of the BGP group. The description must be 2 to 256 characters in length. It must start with a letter and cannot start with `http://` or `https://`.
  /// [ipVersion] The IP version. Valid values:
  /// [isFakeAsn] Specifies whether to use a fake AS number. Valid values: `true`, `false`.
  /// [localAsn] The custom ASN on the Alibaba Cloud side. Valid values:
  /// [peerAsn] The ASN of the gateway device in the data center.
  /// [routeLimit] The maximum number of routes supported by a BGP peer. Default value: 110.
  /// [routerId] The ID of the virtual border router (VBR) that is associated with the BGP group.
  const BgpGroupArgs({
    this.authKey,
    this.bgpGroupName,
    this.clearAuthKey,
    this.description,
    this.ipVersion,
    this.isFakeAsn,
    this.localAsn,
    required this.peerAsn,
    this.routeLimit,
    required this.routerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey': ?authKey,
      'bgpGroupName': ?bgpGroupName,
      'clearAuthKey': ?clearAuthKey,
      'description': ?description,
      'ipVersion': ?ipVersion,
      'isFakeAsn': ?isFakeAsn,
      'localAsn': ?localAsn,
      'peerAsn': peerAsn,
      'routeLimit': ?routeLimit,
      'routerId': routerId,
    };
  }

  factory BgpGroupArgs.fromMap(Map<String, dynamic> map) {
    return BgpGroupArgs(
      authKey: (() { final guardedValue = map['authKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpGroupName: (() { final guardedValue = map['bgpGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clearAuthKey: (() { final guardedValue = map['clearAuthKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isFakeAsn: (() { final guardedValue = map['isFakeAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localAsn: (() { final guardedValue = map['localAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as int),
      routeLimit: (() { final guardedValue = map['routeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      routerId: pulumi.Input.fromValue(map['routerId'] as String),
    );
  }
}

