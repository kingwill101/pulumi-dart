// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_domain_source.dart';

class GetDomainsDomain {
  /// The CNAME that is assigned to the domain name for CDN. You must add a CNAME record in the system of your Domain Name System (DNS) service provider to map the domain name for CDN to the CNAME.
  final pulumi.Input<String> cname;

  /// The description of the domain name for CDN.
  final pulumi.Input<String> description;

  /// The domain name for CDN.
  final pulumi.Input<String> domainName;

  /// The time when the domain name for CDN was added. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> gmtCreated;

  /// The last time when the domain name for CDN was modified. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> gmtModified;

  /// The ID of the Domain. Its value is same as Queue Name.
  final pulumi.Input<String> id;

  /// Indicates whether the domain name for CDN is in a sandbox environment.
  final pulumi.Input<String> sandBox;

  /// The information about the address of the origin server. For more information about the Sources parameter, See the following `Block sources`.
  final pulumi.Input<List<GetDomainsDomainSource>> sources;

  /// Indicates whether the Secure Sockets Layer (SSL) certificate is enabled. Valid values: `on`,`off`.
  final pulumi.Input<String> sslProtocol;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetDomainsDomain].
  /// [cname] The CNAME that is assigned to the domain name for CDN. You must add a CNAME record in the system of your Domain Name System (DNS) service provider to map the domain name for CDN to the CNAME.
  /// [description] The description of the domain name for CDN.
  /// [domainName] The domain name for CDN.
  /// [gmtCreated] The time when the domain name for CDN was added. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [gmtModified] The last time when the domain name for CDN was modified. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [id] The ID of the Domain. Its value is same as Queue Name.
  /// [sandBox] Indicates whether the domain name for CDN is in a sandbox environment.
  /// [sources] The information about the address of the origin server. For more information about the Sources parameter, See the following `Block sources`.
  /// [sslProtocol] Indicates whether the Secure Sockets Layer (SSL) certificate is enabled. Valid values: `on`,`off`.
  /// [status] The status of the resource.
  GetDomainsDomain({
    required this.cname,
    required this.description,
    required this.domainName,
    required this.gmtCreated,
    required this.gmtModified,
    required this.id,
    required this.sandBox,
    required this.sources,
    required this.sslProtocol,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cname': cname,
      'description': description,
      'domainName': domainName,
      'gmtCreated': gmtCreated,
      'gmtModified': gmtModified,
      'id': id,
      'sandBox': sandBox,
      'sources':
          pulumi.Input.mapInputValue<
            List<GetDomainsDomainSource>,
            List<Map<String, dynamic>>
          >(
            sources,
            (value) =>
                pulumi.Input.encodeList<
                  GetDomainsDomainSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sslProtocol': sslProtocol,
      'status': status,
    };
  }

  factory GetDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomain(
      cname: pulumi.Input.fromValue(map['cname'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      gmtCreated: pulumi.Input.fromValue(map['gmtCreated'] as String),
      gmtModified: pulumi.Input.fromValue(map['gmtModified'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      sandBox: pulumi.Input.fromValue(map['sandBox'] as String),
      sources: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDomainsDomainSource>(
          map['sources']!,
          (value) => GetDomainsDomainSource.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sslProtocol: pulumi.Input.fromValue(map['sslProtocol'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
