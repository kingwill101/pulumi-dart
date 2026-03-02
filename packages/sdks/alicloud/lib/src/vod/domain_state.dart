// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_source.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  /// The name of the certificate. The value of this parameter is returned if HTTPS is enabled.
  final pulumi.Input<String>? certName;
  /// The URL that is used for health checks.
  final pulumi.Input<String>? checkUrl;
  /// The CNAME that is assigned to the domain name for CDN. You must add a CNAME record in the system of your Domain Name System (DNS) service provider to map the domain name for CDN to the CNAME.
  final pulumi.Input<String>? cname;
  /// The description of the domain name for CDN.
  final pulumi.Input<String>? description;
  /// The domain name for CDN that you want to add to ApsaraVideo VOD. Wildcard domain names are supported. Start the domain name with a period (.). Example: `.example.com.`.
  final pulumi.Input<String>? domainName;
  /// The time when the domain name for CDN was added. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? gmtCreated;
  /// The last time when the domain name for CDN was modified. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? gmtModified;
  /// This parameter is applicable to users of level 3 or higher in mainland China and users outside mainland China. Valid values:
  final pulumi.Input<String>? scope;
  /// The information about the address of the origin server. For more information about the Sources parameter, See the following `Block sources`.
  final pulumi.Input<List<DomainSource>>? sources;
  /// Indicates whether the Secure Sockets Layer (SSL) certificate is enabled. Valid values: `on`,`off`.
  final pulumi.Input<String>? sslProtocol;
  /// The public key of the certificate. The value of this parameter is returned if HTTPS is enabled.
  final pulumi.Input<String>? sslPub;
  /// The status of the domain name for CDN. Valid values:
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  /// * `Key`: It can be up to 64 characters in length. It cannot be a null string.
  /// * `Value`: It can be up to 128 characters in length. It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// The top-level domain name.
  final pulumi.Input<String>? topLevelDomain;
  /// The weight of the origin server.
  final pulumi.Input<String>? weight;

  /// Creates a new [DomainState].
  /// [certName] The name of the certificate. The value of this parameter is returned if HTTPS is enabled.
  /// [checkUrl] The URL that is used for health checks.
  /// [cname] The CNAME that is assigned to the domain name for CDN. You must add a CNAME record in the system of your Domain Name System (DNS) service provider to map the domain name for CDN to the CNAME.
  /// [description] The description of the domain name for CDN.
  /// [domainName] The domain name for CDN that you want to add to ApsaraVideo VOD. Wildcard domain names are supported. Start the domain name with a period (.). Example: `.example.com.`.
  /// [gmtCreated] The time when the domain name for CDN was added. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [gmtModified] The last time when the domain name for CDN was modified. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [scope] This parameter is applicable to users of level 3 or higher in mainland China and users outside mainland China. Valid values:
  /// [sources] The information about the address of the origin server. For more information about the Sources parameter, See the following `Block sources`.
  /// [sslProtocol] Indicates whether the Secure Sockets Layer (SSL) certificate is enabled. Valid values: `on`,`off`.
  /// [sslPub] The public key of the certificate. The value of this parameter is returned if HTTPS is enabled.
  /// [status] The status of the domain name for CDN. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [topLevelDomain] The top-level domain name.
  /// [weight] The weight of the origin server.
  DomainState({
    this.certName,
    this.checkUrl,
    this.cname,
    this.description,
    this.domainName,
    this.gmtCreated,
    this.gmtModified,
    this.scope,
    this.sources,
    this.sslProtocol,
    this.sslPub,
    this.status,
    this.tags,
    this.topLevelDomain,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': ?certName,
      'checkUrl': ?checkUrl,
      'cname': ?cname,
      'description': ?description,
      'domainName': ?domainName,
      'gmtCreated': ?gmtCreated,
      'gmtModified': ?gmtModified,
      'scope': ?scope,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<DomainSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<DomainSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslProtocol': ?sslProtocol,
      'sslPub': ?sslPub,
      'status': ?status,
      'tags': ?tags,
      'topLevelDomain': ?topLevelDomain,
      'weight': ?weight,
    };
  }

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      certName: map['certName'] == null ? null : (map['certName'] as String).input(),
      checkUrl: map['checkUrl'] == null ? null : (map['checkUrl'] as String).input(),
      cname: map['cname'] == null ? null : (map['cname'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      gmtCreated: map['gmtCreated'] == null ? null : (map['gmtCreated'] as String).input(),
      gmtModified: map['gmtModified'] == null ? null : (map['gmtModified'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<DomainSource>(map['sources'], (value) => DomainSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sslProtocol: map['sslProtocol'] == null ? null : (map['sslProtocol'] as String).input(),
      sslPub: map['sslPub'] == null ? null : (map['sslPub'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      topLevelDomain: map['topLevelDomain'] == null ? null : (map['topLevelDomain'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as String).input(),
    );
  }
}

