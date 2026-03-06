// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_pool_origin_auth_conf.dart';

class OriginPoolOrigin {
  /// Origin Address.
  final pulumi.Input<String>? address;
  /// The authentication information. When the source Station is an OSS or S3 and other source stations need to be authenticated, the authentication-related configuration information needs to be transmitted. See `auth_conf` below.
  final pulumi.Input<OriginPoolOriginAuthConf>? authConf;
  /// Whether the source station is enabled:
  final pulumi.Input<bool>? enabled;
  /// The request header that is sent when returning to the source. Only Host is supported.
  final pulumi.Input<String>? header;
  /// Origin Name.
  final pulumi.Input<String>? name;
  /// Origin ID.
  final pulumi.Input<int>? originId;
  /// Source station type:
  /// ip_domain: ip or domain name type origin station;
  /// - `OSS`:OSS address source station;
  /// - `S3`:AWS S3 Source station.
  final pulumi.Input<String>? type;
  /// Weight, 0-100.
  final pulumi.Input<int>? weight;

  /// Creates a new [OriginPoolOrigin].
  /// [address] Origin Address.
  /// [authConf] The authentication information. When the source Station is an OSS or S3 and other source stations need to be authenticated, the authentication-related configuration information needs to be transmitted. See `auth_conf` below.
  /// [enabled] Whether the source station is enabled:
  /// [header] The request header that is sent when returning to the source. Only Host is supported.
  /// [name] Origin Name.
  /// [originId] Origin ID.
  /// [type] Source station type:
  /// [weight] Weight, 0-100.
  const OriginPoolOrigin({
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
      'authConf': ?pulumi.Input.mapOptionalInputValue<OriginPoolOriginAuthConf, Map<String, dynamic>>(authConf, (value) => value.toMap()),
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
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authConf: (() { final guardedValue = map['authConf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OriginPoolOriginAuthConf.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originId: (() { final guardedValue = map['originId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

