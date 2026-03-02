// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// security services
class SecurityServices {
  /// Anti spyware Profile data
  final pulumi.Input<String>? antiSpywareProfile;
  /// anti virus profile data
  final pulumi.Input<String>? antiVirusProfile;
  /// DNS Subscription profile data
  final pulumi.Input<String>? dnsSubscription;
  /// File blocking profile data
  final pulumi.Input<String>? fileBlockingProfile;
  /// Trusted Egress Decryption profile data
  final pulumi.Input<String>? outboundTrustCertificate;
  /// Untrusted Egress Decryption profile data
  final pulumi.Input<String>? outboundUnTrustCertificate;
  /// URL filtering profile data
  final pulumi.Input<String>? urlFilteringProfile;
  /// IPs Vulnerability Profile Data
  final pulumi.Input<String>? vulnerabilityProfile;

  /// Creates a new [SecurityServices].
  /// [antiSpywareProfile] Anti spyware Profile data
  /// [antiVirusProfile] anti virus profile data
  /// [dnsSubscription] DNS Subscription profile data
  /// [fileBlockingProfile] File blocking profile data
  /// [outboundTrustCertificate] Trusted Egress Decryption profile data
  /// [outboundUnTrustCertificate] Untrusted Egress Decryption profile data
  /// [urlFilteringProfile] URL filtering profile data
  /// [vulnerabilityProfile] IPs Vulnerability Profile Data
  SecurityServices({
    this.antiSpywareProfile,
    this.antiVirusProfile,
    this.dnsSubscription,
    this.fileBlockingProfile,
    this.outboundTrustCertificate,
    this.outboundUnTrustCertificate,
    this.urlFilteringProfile,
    this.vulnerabilityProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antiSpywareProfile': ?antiSpywareProfile,
      'antiVirusProfile': ?antiVirusProfile,
      'dnsSubscription': ?dnsSubscription,
      'fileBlockingProfile': ?fileBlockingProfile,
      'outboundTrustCertificate': ?outboundTrustCertificate,
      'outboundUnTrustCertificate': ?outboundUnTrustCertificate,
      'urlFilteringProfile': ?urlFilteringProfile,
      'vulnerabilityProfile': ?vulnerabilityProfile,
    };
  }

  factory SecurityServices.fromMap(Map<String, dynamic> map) {
    return SecurityServices(
      antiSpywareProfile: map['antiSpywareProfile'] == null ? null : (map['antiSpywareProfile']! as String).input(),
      antiVirusProfile: map['antiVirusProfile'] == null ? null : (map['antiVirusProfile']! as String).input(),
      dnsSubscription: map['dnsSubscription'] == null ? null : (map['dnsSubscription']! as String).input(),
      fileBlockingProfile: map['fileBlockingProfile'] == null ? null : (map['fileBlockingProfile']! as String).input(),
      outboundTrustCertificate: map['outboundTrustCertificate'] == null ? null : (map['outboundTrustCertificate']! as String).input(),
      outboundUnTrustCertificate: map['outboundUnTrustCertificate'] == null ? null : (map['outboundUnTrustCertificate']! as String).input(),
      urlFilteringProfile: map['urlFilteringProfile'] == null ? null : (map['urlFilteringProfile']! as String).input(),
      vulnerabilityProfile: map['vulnerabilityProfile'] == null ? null : (map['vulnerabilityProfile']! as String).input(),
    );
  }
}

