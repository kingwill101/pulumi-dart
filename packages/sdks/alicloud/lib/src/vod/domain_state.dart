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
    pulumi.Output<String>? certName,
    pulumi.Output<String>? checkUrl,
    pulumi.Output<String>? cname,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? gmtCreated,
    pulumi.Output<String>? gmtModified,
    pulumi.Output<String>? scope,
    pulumi.Output<List<DomainSource>>? sources,
    pulumi.Output<String>? sslProtocol,
    pulumi.Output<String>? sslPub,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? topLevelDomain,
    pulumi.Output<String>? weight,
  }) :
      certName = pulumi.Input.asOptionalInput<String>(certName),
      checkUrl = pulumi.Input.asOptionalInput<String>(checkUrl),
      cname = pulumi.Input.asOptionalInput<String>(cname),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      gmtCreated = pulumi.Input.asOptionalInput<String>(gmtCreated),
      gmtModified = pulumi.Input.asOptionalInput<String>(gmtModified),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      sources = pulumi.Input.asOptionalInput<List<DomainSource>>(sources),
      sslProtocol = pulumi.Input.asOptionalInput<String>(sslProtocol),
      sslPub = pulumi.Input.asOptionalInput<String>(sslPub),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topLevelDomain = pulumi.Input.asOptionalInput<String>(topLevelDomain),
      weight = pulumi.Input.asOptionalInput<String>(weight);

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
      certName: map['certName'] == null ? null : pulumi.Output.create<String>(map['certName'] as String),
      checkUrl: map['checkUrl'] == null ? null : pulumi.Output.create<String>(map['checkUrl'] as String),
      cname: map['cname'] == null ? null : pulumi.Output.create<String>(map['cname'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      gmtCreated: map['gmtCreated'] == null ? null : pulumi.Output.create<String>(map['gmtCreated'] as String),
      gmtModified: map['gmtModified'] == null ? null : pulumi.Output.create<String>(map['gmtModified'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<DomainSource>>(pulumi.Input.decodeList<DomainSource>(map['sources'], (value) => DomainSource.fromMap((value as Map).cast<String, dynamic>()))),
      sslProtocol: map['sslProtocol'] == null ? null : pulumi.Output.create<String>(map['sslProtocol'] as String),
      sslPub: map['sslPub'] == null ? null : pulumi.Output.create<String>(map['sslPub'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      topLevelDomain: map['topLevelDomain'] == null ? null : pulumi.Output.create<String>(map['topLevelDomain'] as String),
      weight: map['weight'] == null ? null : pulumi.Output.create<String>(map['weight'] as String),
    );
  }
}

