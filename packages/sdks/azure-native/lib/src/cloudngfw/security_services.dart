// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// security services
class SecurityServices {
  /// Anti spyware Profile data
  final pulumi.Input<String?>? antiSpywareProfile;
  /// anti virus profile data
  final pulumi.Input<String?>? antiVirusProfile;
  /// DNS Subscription profile data
  final pulumi.Input<String?>? dnsSubscription;
  /// File blocking profile data
  final pulumi.Input<String?>? fileBlockingProfile;
  /// Trusted Egress Decryption profile data
  final pulumi.Input<String?>? outboundTrustCertificate;
  /// Untrusted Egress Decryption profile data
  final pulumi.Input<String?>? outboundUnTrustCertificate;
  /// URL filtering profile data
  final pulumi.Input<String?>? urlFilteringProfile;
  /// IPs Vulnerability Profile Data
  final pulumi.Input<String?>? vulnerabilityProfile;

  /// Creates a new [SecurityServices].
  /// [antiSpywareProfile] Anti spyware Profile data
  /// [antiVirusProfile] anti virus profile data
  /// [dnsSubscription] DNS Subscription profile data
  /// [fileBlockingProfile] File blocking profile data
  /// [outboundTrustCertificate] Trusted Egress Decryption profile data
  /// [outboundUnTrustCertificate] Untrusted Egress Decryption profile data
  /// [urlFilteringProfile] URL filtering profile data
  /// [vulnerabilityProfile] IPs Vulnerability Profile Data
  const SecurityServices({
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
      antiSpywareProfile: (() { final guardedValue = map['antiSpywareProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      antiVirusProfile: (() { final guardedValue = map['antiVirusProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsSubscription: (() { final guardedValue = map['dnsSubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileBlockingProfile: (() { final guardedValue = map['fileBlockingProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundTrustCertificate: (() { final guardedValue = map['outboundTrustCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundUnTrustCertificate: (() { final guardedValue = map['outboundUnTrustCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlFilteringProfile: (() { final guardedValue = map['urlFilteringProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vulnerabilityProfile: (() { final guardedValue = map['vulnerabilityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
