// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getToken.
class GetTokenArgs {
  /// The site identifier. If the type is set to SITE, the identifier is a URL. If the type is
  /// set to INET_DOMAIN, the identifier is a domain name.
  final Input<String> identifier;

  /// The type of resource to be verified, either a domain or a web site.
  /// Possible values are: `INET_DOMAIN`, `SITE`.
  final Input<String> type;

  /// The verification method for the Site Verification system to use to verify
  /// this site or domain.
  /// Possible values are: `ANALYTICS`, `DNS_CNAME`, `DNS_TXT`, `FILE`, `META`, `TAG_MANAGER`.
  ///
  ///
  /// - - -
  final Input<String> verificationMethod;

  GetTokenArgs({
    required this.identifier,
    required this.type,
    required this.verificationMethod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['type'] = type;
    map['verificationMethod'] = verificationMethod;
    return map;
  }

  factory GetTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetTokenArgs(
      identifier: Input.asInput<String>(map['identifier']),
      type: Input.asInput<String>(map['type']),
      verificationMethod: Input.asInput<String>(map['verificationMethod']),
    );
  }
}
