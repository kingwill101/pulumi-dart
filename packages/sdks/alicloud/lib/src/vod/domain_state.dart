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
      'sources':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainSource>,
            List<Map<String, dynamic>>
          >(
            sources,
            (value) =>
                pulumi.Input.encodeList<DomainSource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      certName: (() {
        final guardedValue = map['certName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      checkUrl: (() {
        final guardedValue = map['checkUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cname: (() {
        final guardedValue = map['cname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gmtCreated: (() {
        final guardedValue = map['gmtCreated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gmtModified: (() {
        final guardedValue = map['gmtModified'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sources: (() {
        final guardedValue = map['sources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainSource>(
            guardedValue,
            (value) =>
                DomainSource.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      sslProtocol: (() {
        final guardedValue = map['sslProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslPub: (() {
        final guardedValue = map['sslPub'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      topLevelDomain: (() {
        final guardedValue = map['topLevelDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
