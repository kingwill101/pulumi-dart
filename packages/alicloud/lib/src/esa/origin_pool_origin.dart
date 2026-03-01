// ignore_for_file: unused_element, unnecessary_cast

import 'origin_pool_origin_auth_conf.dart';

class OriginPoolOrigin {
  /// Origin Address.
  final String? address;
  /// The authentication information. When the source Station is an OSS or S3 and other source stations need to be authenticated, the authentication-related configuration information needs to be transmitted. See `auth_conf` below.
  final OriginPoolOriginAuthConf? authConf;
  /// Whether the source station is enabled:
  final bool? enabled;
  /// The request header that is sent when returning to the source. Only Host is supported.
  final String? header;
  /// Origin Name.
  final String? name;
  /// Origin ID.
  final int? originId;
  /// Source station type:
  /// ip_domain: ip or domain name type origin station;
  /// - `OSS`:OSS address source station;
  /// - `S3`:AWS S3 Source station.
  final String? type;
  /// Weight, 0-100.
  final int? weight;

  /// Creates a new [OriginPoolOrigin].
  /// [address] Origin Address.
  /// [authConf] The authentication information. When the source Station is an OSS or S3 and other source stations need to be authenticated, the authentication-related configuration information needs to be transmitted. See `auth_conf` below.
  /// [enabled] Whether the source station is enabled:
  /// [header] The request header that is sent when returning to the source. Only Host is supported.
  /// [name] Origin Name.
  /// [originId] Origin ID.
  /// [type] Source station type:
  /// [weight] Weight, 0-100.
  OriginPoolOrigin({
    this.address,
    this.authConf,
    this.enabled,
    this.header,
    this.name,
    this.originId,
    this.type,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'authConf': ?authConf == null ? null : authConf!.toMap(),
      'enabled': ?enabled,
      'header': ?header,
      'name': ?name,
      'originId': ?originId,
      'type': ?type,
      'weight': ?weight,
    };
  }

  factory OriginPoolOrigin.fromMap(Map<String, dynamic> map) {
    return OriginPoolOrigin(
      address: map['address'] == null ? null : map['address'] as String,
      authConf: map['authConf'] == null ? null : OriginPoolOriginAuthConf.fromMap((map['authConf'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      header: map['header'] == null ? null : map['header'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      originId: map['originId'] == null ? null : map['originId'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

