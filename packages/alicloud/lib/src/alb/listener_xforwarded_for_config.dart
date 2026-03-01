// ignore_for_file: unused_element, unnecessary_cast


class ListenerXForwardedForConfig {
  /// The Custom Header Field Names Only When xforwardedforclientcertclientverifyenabled Has a Value of True, this Value Will Not Take Effect until.
  final String? xForwardedForClientCertClientVerifyAlias;
  /// Indicates Whether the X-Forwarded-Clientcert-clientverify Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate to Verify the Results.
  final bool? xForwardedForClientCertClientVerifyEnabled;
  /// The Custom Header Field Names Only When xforwardedforclientcertfingerprintenabled, Which Evaluates to True When the Entry into Force of.
  final String? xForwardedForClientCertFingerPrintAlias;
  /// Indicates Whether the X-Forwarded-Clientcert-fingerprint Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate Fingerprint Value.
  final bool? xForwardedForClientCertFingerPrintEnabled;
  /// The Custom Header Field Names Only When xforwardedforclientcertsubjectdnenabled, Which Evaluates to True When the Entry into Force of.
  final String? xForwardedForClientCertIssuerDnAlias;
  /// Indicates Whether the X-Forwarded-Clientcert-issuerdn Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate after the Manifests Are Signed, the Publisher Information.
  final bool? xForwardedForClientCertIssuerDnEnabled;
  /// The Custom Header Field Name,
  final String? xForwardedForClientCertSubjectDnAlias;
  /// Indicates Whether the X-Forwarded-Clientcert-subjectdn Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate Owner Information.
  final bool? xForwardedForClientCertSubjectDnEnabled;
  /// Whether to use the X-Forwarded-Client-Ip header to obtain the source IP address of the server load balancer instance. Value:
  final bool? xForwardedForClientSourceIpsEnabled;
  /// Specify the trusted proxy IP. Application-oriented load balancing ALB will traverse the X-Forwarded-For from back to front, and select the first IP that is not in the trusted IP list as the real client IP, which will be used for the source IP speed limit.
  final String? xForwardedForClientSourceIpsTrusted;
  /// Indicates Whether the X-Forwarded-Client-Port Header Field Is Used to Obtain Access to Server Load Balancer Instances to the Client, and Those of the Ports.
  final bool? xForwardedForClientSrcPortEnabled;
  /// Whether to Enable by X-Forwarded-For Header Field Is Used to Obtain the Client IP Addresses.
  final bool? xForwardedForEnabled;
  /// Whether to enable the X-Forwarded-Host header field to obtain the domain name of the client accessing the Application Load Balancer. Value:
  final bool? xForwardedForHostEnabled;
  /// Schema for processing X-Forwarded-For header fields. This value takes effect only when XForwardedForEnabled is true. Value:
  final String? xForwardedForProcessingMode;
  /// Indicates Whether the X-Forwarded-Proto Header Field Is Used to Obtain the Server Load Balancer Instance Snooping Protocols.
  final bool? xForwardedForProtoEnabled;
  /// Indicates Whether the SLB-ID Header Field Is Used to Obtain the Load Balancing Instance Id
  final bool? xForwardedForSlbIdEnabled;
  /// Indicates Whether the X-Forwarded-Port Header Field Is Used to Obtain the Server Load Balancer Instance Listening Port
  final bool? xForwardedForSlbPortEnabled;

  /// Creates a new [ListenerXForwardedForConfig].
  /// [xForwardedForClientCertClientVerifyAlias] The Custom Header Field Names Only When xforwardedforclientcertclientverifyenabled Has a Value of True, this Value Will Not Take Effect until.
  /// [xForwardedForClientCertClientVerifyEnabled] Indicates Whether the X-Forwarded-Clientcert-clientverify Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate to Verify the Results.
  /// [xForwardedForClientCertFingerPrintAlias] The Custom Header Field Names Only When xforwardedforclientcertfingerprintenabled, Which Evaluates to True When the Entry into Force of.
  /// [xForwardedForClientCertFingerPrintEnabled] Indicates Whether the X-Forwarded-Clientcert-fingerprint Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate Fingerprint Value.
  /// [xForwardedForClientCertIssuerDnAlias] The Custom Header Field Names Only When xforwardedforclientcertsubjectdnenabled, Which Evaluates to True When the Entry into Force of.
  /// [xForwardedForClientCertIssuerDnEnabled] Indicates Whether the X-Forwarded-Clientcert-issuerdn Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate after the Manifests Are Signed, the Publisher Information.
  /// [xForwardedForClientCertSubjectDnAlias] The Custom Header Field Name,
  /// [xForwardedForClientCertSubjectDnEnabled] Indicates Whether the X-Forwarded-Clientcert-subjectdn Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate Owner Information.
  /// [xForwardedForClientSourceIpsEnabled] Whether to use the X-Forwarded-Client-Ip header to obtain the source IP address of the server load balancer instance. Value:
  /// [xForwardedForClientSourceIpsTrusted] Specify the trusted proxy IP. Application-oriented load balancing ALB will traverse the X-Forwarded-For from back to front, and select the first IP that is not in the trusted IP list as the real client IP, which will be used for the source IP speed limit.
  /// [xForwardedForClientSrcPortEnabled] Indicates Whether the X-Forwarded-Client-Port Header Field Is Used to Obtain Access to Server Load Balancer Instances to the Client, and Those of the Ports.
  /// [xForwardedForEnabled] Whether to Enable by X-Forwarded-For Header Field Is Used to Obtain the Client IP Addresses.
  /// [xForwardedForHostEnabled] Whether to enable the X-Forwarded-Host header field to obtain the domain name of the client accessing the Application Load Balancer. Value:
  /// [xForwardedForProcessingMode] Schema for processing X-Forwarded-For header fields. This value takes effect only when XForwardedForEnabled is true. Value:
  /// [xForwardedForProtoEnabled] Indicates Whether the X-Forwarded-Proto Header Field Is Used to Obtain the Server Load Balancer Instance Snooping Protocols.
  /// [xForwardedForSlbIdEnabled] Indicates Whether the SLB-ID Header Field Is Used to Obtain the Load Balancing Instance Id
  /// [xForwardedForSlbPortEnabled] Indicates Whether the X-Forwarded-Port Header Field Is Used to Obtain the Server Load Balancer Instance Listening Port
  ListenerXForwardedForConfig({
    this.xForwardedForClientCertClientVerifyAlias,
    this.xForwardedForClientCertClientVerifyEnabled,
    this.xForwardedForClientCertFingerPrintAlias,
    this.xForwardedForClientCertFingerPrintEnabled,
    this.xForwardedForClientCertIssuerDnAlias,
    this.xForwardedForClientCertIssuerDnEnabled,
    this.xForwardedForClientCertSubjectDnAlias,
    this.xForwardedForClientCertSubjectDnEnabled,
    this.xForwardedForClientSourceIpsEnabled,
    this.xForwardedForClientSourceIpsTrusted,
    this.xForwardedForClientSrcPortEnabled,
    this.xForwardedForEnabled,
    this.xForwardedForHostEnabled,
    this.xForwardedForProcessingMode,
    this.xForwardedForProtoEnabled,
    this.xForwardedForSlbIdEnabled,
    this.xForwardedForSlbPortEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xForwardedForClientCertClientVerifyAlias': ?xForwardedForClientCertClientVerifyAlias,
      'xForwardedForClientCertClientVerifyEnabled': ?xForwardedForClientCertClientVerifyEnabled,
      'xForwardedForClientCertFingerPrintAlias': ?xForwardedForClientCertFingerPrintAlias,
      'xForwardedForClientCertFingerPrintEnabled': ?xForwardedForClientCertFingerPrintEnabled,
      'xForwardedForClientCertIssuerDnAlias': ?xForwardedForClientCertIssuerDnAlias,
      'xForwardedForClientCertIssuerDnEnabled': ?xForwardedForClientCertIssuerDnEnabled,
      'xForwardedForClientCertSubjectDnAlias': ?xForwardedForClientCertSubjectDnAlias,
      'xForwardedForClientCertSubjectDnEnabled': ?xForwardedForClientCertSubjectDnEnabled,
      'xForwardedForClientSourceIpsEnabled': ?xForwardedForClientSourceIpsEnabled,
      'xForwardedForClientSourceIpsTrusted': ?xForwardedForClientSourceIpsTrusted,
      'xForwardedForClientSrcPortEnabled': ?xForwardedForClientSrcPortEnabled,
      'xForwardedForEnabled': ?xForwardedForEnabled,
      'xForwardedForHostEnabled': ?xForwardedForHostEnabled,
      'xForwardedForProcessingMode': ?xForwardedForProcessingMode,
      'xForwardedForProtoEnabled': ?xForwardedForProtoEnabled,
      'xForwardedForSlbIdEnabled': ?xForwardedForSlbIdEnabled,
      'xForwardedForSlbPortEnabled': ?xForwardedForSlbPortEnabled,
    };
  }

  factory ListenerXForwardedForConfig.fromMap(Map<String, dynamic> map) {
    return ListenerXForwardedForConfig(
      xForwardedForClientCertClientVerifyAlias: map['xForwardedForClientCertClientVerifyAlias'] == null ? null : map['xForwardedForClientCertClientVerifyAlias'] as String,
      xForwardedForClientCertClientVerifyEnabled: map['xForwardedForClientCertClientVerifyEnabled'] == null ? null : map['xForwardedForClientCertClientVerifyEnabled'] as bool,
      xForwardedForClientCertFingerPrintAlias: map['xForwardedForClientCertFingerPrintAlias'] == null ? null : map['xForwardedForClientCertFingerPrintAlias'] as String,
      xForwardedForClientCertFingerPrintEnabled: map['xForwardedForClientCertFingerPrintEnabled'] == null ? null : map['xForwardedForClientCertFingerPrintEnabled'] as bool,
      xForwardedForClientCertIssuerDnAlias: map['xForwardedForClientCertIssuerDnAlias'] == null ? null : map['xForwardedForClientCertIssuerDnAlias'] as String,
      xForwardedForClientCertIssuerDnEnabled: map['xForwardedForClientCertIssuerDnEnabled'] == null ? null : map['xForwardedForClientCertIssuerDnEnabled'] as bool,
      xForwardedForClientCertSubjectDnAlias: map['xForwardedForClientCertSubjectDnAlias'] == null ? null : map['xForwardedForClientCertSubjectDnAlias'] as String,
      xForwardedForClientCertSubjectDnEnabled: map['xForwardedForClientCertSubjectDnEnabled'] == null ? null : map['xForwardedForClientCertSubjectDnEnabled'] as bool,
      xForwardedForClientSourceIpsEnabled: map['xForwardedForClientSourceIpsEnabled'] == null ? null : map['xForwardedForClientSourceIpsEnabled'] as bool,
      xForwardedForClientSourceIpsTrusted: map['xForwardedForClientSourceIpsTrusted'] == null ? null : map['xForwardedForClientSourceIpsTrusted'] as String,
      xForwardedForClientSrcPortEnabled: map['xForwardedForClientSrcPortEnabled'] == null ? null : map['xForwardedForClientSrcPortEnabled'] as bool,
      xForwardedForEnabled: map['xForwardedForEnabled'] == null ? null : map['xForwardedForEnabled'] as bool,
      xForwardedForHostEnabled: map['xForwardedForHostEnabled'] == null ? null : map['xForwardedForHostEnabled'] as bool,
      xForwardedForProcessingMode: map['xForwardedForProcessingMode'] == null ? null : map['xForwardedForProcessingMode'] as String,
      xForwardedForProtoEnabled: map['xForwardedForProtoEnabled'] == null ? null : map['xForwardedForProtoEnabled'] as bool,
      xForwardedForSlbIdEnabled: map['xForwardedForSlbIdEnabled'] == null ? null : map['xForwardedForSlbIdEnabled'] as bool,
      xForwardedForSlbPortEnabled: map['xForwardedForSlbPortEnabled'] == null ? null : map['xForwardedForSlbPortEnabled'] as bool,
    );
  }
}

