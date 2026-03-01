// ignore_for_file: unused_element, unnecessary_cast


/// security services
class SecurityServicesResponse {
  /// Anti spyware Profile data
  final String? antiSpywareProfile;
  /// anti virus profile data
  final String? antiVirusProfile;
  /// DNS Subscription profile data
  final String? dnsSubscription;
  /// File blocking profile data
  final String? fileBlockingProfile;
  /// Trusted Egress Decryption profile data
  final String? outboundTrustCertificate;
  /// Untrusted Egress Decryption profile data
  final String? outboundUnTrustCertificate;
  /// URL filtering profile data
  final String? urlFilteringProfile;
  /// IPs Vulnerability Profile Data
  final String? vulnerabilityProfile;

  /// Creates a new [SecurityServicesResponse].
  /// [antiSpywareProfile] Anti spyware Profile data
  /// [antiVirusProfile] anti virus profile data
  /// [dnsSubscription] DNS Subscription profile data
  /// [fileBlockingProfile] File blocking profile data
  /// [outboundTrustCertificate] Trusted Egress Decryption profile data
  /// [outboundUnTrustCertificate] Untrusted Egress Decryption profile data
  /// [urlFilteringProfile] URL filtering profile data
  /// [vulnerabilityProfile] IPs Vulnerability Profile Data
  SecurityServicesResponse({
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

  factory SecurityServicesResponse.fromMap(Map<String, dynamic> map) {
    return SecurityServicesResponse(
      antiSpywareProfile: map['antiSpywareProfile'] == null ? null : map['antiSpywareProfile'] as String,
      antiVirusProfile: map['antiVirusProfile'] == null ? null : map['antiVirusProfile'] as String,
      dnsSubscription: map['dnsSubscription'] == null ? null : map['dnsSubscription'] as String,
      fileBlockingProfile: map['fileBlockingProfile'] == null ? null : map['fileBlockingProfile'] as String,
      outboundTrustCertificate: map['outboundTrustCertificate'] == null ? null : map['outboundTrustCertificate'] as String,
      outboundUnTrustCertificate: map['outboundUnTrustCertificate'] == null ? null : map['outboundUnTrustCertificate'] as String,
      urlFilteringProfile: map['urlFilteringProfile'] == null ? null : map['urlFilteringProfile'] as String,
      vulnerabilityProfile: map['vulnerabilityProfile'] == null ? null : map['vulnerabilityProfile'] as String,
    );
  }
}

