// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_domains_domain_defense_scene.dart';

class GetWafDomainsDomain {
  /// The client ip tag.
  final pulumi.Input<String> clientIpTag;
  /// Protection policy type.
  final pulumi.Input<List<GetWafDomainsDomainDefenseScene>> defenseScenes;
  /// The accelerated domain name.
  final pulumi.Input<String> domainName;
  /// The ID of the Waf Domain.
  final pulumi.Input<String> id;

  /// Creates a new [GetWafDomainsDomain].
  /// [clientIpTag] The client ip tag.
  /// [defenseScenes] Protection policy type.
  /// [domainName] The accelerated domain name.
  /// [id] The ID of the Waf Domain.
  const GetWafDomainsDomain({
    required this.clientIpTag,
    required this.defenseScenes,
    required this.domainName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIpTag': clientIpTag,
      'defenseScenes': pulumi.Input.mapInputValue<List<GetWafDomainsDomainDefenseScene>, List<Map<String, dynamic>>>(defenseScenes, (value) => pulumi.Input.encodeList<GetWafDomainsDomainDefenseScene, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domainName': domainName,
      'id': id,
    };
  }

  factory GetWafDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetWafDomainsDomain(
      clientIpTag: pulumi.Input.fromValue(map['clientIpTag'] as String),
      defenseScenes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWafDomainsDomainDefenseScene>(map['defenseScenes']!, (value) => GetWafDomainsDomainDefenseScene.fromMap((value as Map).cast<String, dynamic>()))),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

