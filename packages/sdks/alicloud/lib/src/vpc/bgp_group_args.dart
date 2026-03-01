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
  /// > **NOTE:** Note A router that runs BGP typically belongs to only one AS. If you need to replace an AS with a new one, but you cannot immediately modify BGP configurations due to business requirements, you can specify a fake AS number to establish a connection with the local end. This ensures service continuity in scenarios such as AS migration or AS merging.
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
  BgpGroupArgs({
    pulumi.Output<String>? authKey,
    pulumi.Output<String>? bgpGroupName,
    pulumi.Output<bool>? clearAuthKey,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ipVersion,
    pulumi.Output<bool>? isFakeAsn,
    pulumi.Output<int>? localAsn,
    required pulumi.Output<int> peerAsn,
    pulumi.Output<int>? routeLimit,
    required pulumi.Output<String> routerId,
  }) :
      authKey = pulumi.Input.asOptionalInput<String>(authKey),
      bgpGroupName = pulumi.Input.asOptionalInput<String>(bgpGroupName),
      clearAuthKey = pulumi.Input.asOptionalInput<bool>(clearAuthKey),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipVersion = pulumi.Input.asOptionalInput<String>(ipVersion),
      isFakeAsn = pulumi.Input.asOptionalInput<bool>(isFakeAsn),
      localAsn = pulumi.Input.asOptionalInput<int>(localAsn),
      peerAsn = pulumi.Input.asInput<int>(peerAsn),
      routeLimit = pulumi.Input.asOptionalInput<int>(routeLimit),
      routerId = pulumi.Input.asInput<String>(routerId);

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
      authKey: map['authKey'] == null ? null : pulumi.Output.create<String>(map['authKey'] as String),
      bgpGroupName: map['bgpGroupName'] == null ? null : pulumi.Output.create<String>(map['bgpGroupName'] as String),
      clearAuthKey: map['clearAuthKey'] == null ? null : pulumi.Output.create<bool>(map['clearAuthKey'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<String>(map['ipVersion'] as String),
      isFakeAsn: map['isFakeAsn'] == null ? null : pulumi.Output.create<bool>(map['isFakeAsn'] as bool),
      localAsn: map['localAsn'] == null ? null : pulumi.Output.create<int>(map['localAsn'] as int),
      peerAsn: pulumi.Output.create<int>(map['peerAsn'] as int),
      routeLimit: map['routeLimit'] == null ? null : pulumi.Output.create<int>(map['routeLimit'] as int),
      routerId: pulumi.Output.create<String>(map['routerId'] as String),
    );
  }
}

