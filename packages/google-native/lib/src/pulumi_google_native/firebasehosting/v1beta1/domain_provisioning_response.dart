// ignore_for_file: unused_element, unnecessary_cast

import 'cert_dns_challenge_response.dart';
import 'cert_http_challenge_response.dart';

/// The current certificate provisioning status information for a domain.
class DomainProvisioningResponse {
  /// The TXT records (for the certificate challenge) that were found at the last DNS fetch.
  final List<String> certChallengeDiscoveredTxt;

  /// The DNS challenge for generating a certificate.
  final CertDnsChallengeResponse certChallengeDns;

  /// The HTTP challenge for generating a certificate.
  final CertHttpChallengeResponse certChallengeHttp;

  /// The certificate provisioning status; updated when Firebase Hosting provisions an SSL certificate for the domain.
  final String certStatus;

  /// The IPs found at the last DNS fetch.
  final List<String> discoveredIps;

  /// The time at which the last DNS fetch occurred.
  final String dnsFetchTime;

  /// The DNS record match status as of the last DNS fetch.
  final String dnsStatus;

  /// The list of IPs to which the domain is expected to resolve.
  final List<String> expectedIps;

  DomainProvisioningResponse({
    required this.certChallengeDiscoveredTxt,
    required this.certChallengeDns,
    required this.certChallengeHttp,
    required this.certStatus,
    required this.discoveredIps,
    required this.dnsFetchTime,
    required this.dnsStatus,
    required this.expectedIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certChallengeDiscoveredTxt'] = certChallengeDiscoveredTxt;
    map['certChallengeDns'] = certChallengeDns.toMap();
    map['certChallengeHttp'] = certChallengeHttp.toMap();
    map['certStatus'] = certStatus;
    map['discoveredIps'] = discoveredIps;
    map['dnsFetchTime'] = dnsFetchTime;
    map['dnsStatus'] = dnsStatus;
    map['expectedIps'] = expectedIps;
    return map;
  }

  factory DomainProvisioningResponse.fromMap(Map<String, dynamic> map) {
    return DomainProvisioningResponse(
      certChallengeDiscoveredTxt:
          (map['certChallengeDiscoveredTxt'] as List).cast<String>(),
      certChallengeDns: CertDnsChallengeResponse.fromMap(
          (map['certChallengeDns'] as Map).cast<String, dynamic>()),
      certChallengeHttp: CertHttpChallengeResponse.fromMap(
          (map['certChallengeHttp'] as Map).cast<String, dynamic>()),
      certStatus: map['certStatus'] as String,
      discoveredIps: (map['discoveredIps'] as List).cast<String>(),
      dnsFetchTime: map['dnsFetchTime'] as String,
      dnsStatus: map['dnsStatus'] as String,
      expectedIps: (map['expectedIps'] as List).cast<String>(),
    );
  }
}
