// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerXForwardedForConfig {
  /// The Custom Header Field Names Only When xforwardedforclientcertclientverifyenabled Has a Value of True, this Value Will Not Take Effect until.
  final pulumi.Input<String>? xForwardedForClientCertClientVerifyAlias;
  /// Indicates Whether the X-Forwarded-Clientcert-clientverify Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate to Verify the Results.
  final pulumi.Input<bool>? xForwardedForClientCertClientVerifyEnabled;
  /// The Custom Header Field Names Only When xforwardedforclientcertfingerprintenabled, Which Evaluates to True When the Entry into Force of.
  final pulumi.Input<String>? xForwardedForClientCertFingerPrintAlias;
  /// Indicates Whether the X-Forwarded-Clientcert-fingerprint Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate Fingerprint Value.
  final pulumi.Input<bool>? xForwardedForClientCertFingerPrintEnabled;
  /// The Custom Header Field Names Only When xforwardedforclientcertsubjectdnenabled, Which Evaluates to True When the Entry into Force of.
  final pulumi.Input<String>? xForwardedForClientCertIssuerDnAlias;
  /// Indicates Whether the X-Forwarded-Clientcert-issuerdn Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate after the Manifests Are Signed, the Publisher Information.
  final pulumi.Input<bool>? xForwardedForClientCertIssuerDnEnabled;
  /// The Custom Header Field Name,
  final pulumi.Input<String>? xForwardedForClientCertSubjectDnAlias;
  /// Indicates Whether the X-Forwarded-Clientcert-subjectdn Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate Owner Information.
  final pulumi.Input<bool>? xForwardedForClientCertSubjectDnEnabled;
  /// Whether to use the X-Forwarded-Client-Ip header to obtain the source IP address of the server load balancer instance. Value:
  final pulumi.Input<bool>? xForwardedForClientSourceIpsEnabled;
  /// Specify the trusted proxy IP. Application-oriented load balancing ALB will traverse the X-Forwarded-For from back to front, and select the first IP that is not in the trusted IP list as the real client IP, which will be used for the source IP speed limit.
  final pulumi.Input<String>? xForwardedForClientSourceIpsTrusted;
  /// Indicates Whether the X-Forwarded-Client-Port Header Field Is Used to Obtain Access to Server Load Balancer Instances to the Client, and Those of the Ports.
  final pulumi.Input<bool>? xForwardedForClientSrcPortEnabled;
  /// Whether to Enable by X-Forwarded-For Header Field Is Used to Obtain the Client IP Addresses.
  final pulumi.Input<bool>? xForwardedForEnabled;
  /// Whether to enable the X-Forwarded-Host header field to obtain the domain name of the client accessing the Application Load Balancer. Value:
  final pulumi.Input<bool>? xForwardedForHostEnabled;
  /// Schema for processing X-Forwarded-For header fields. This value takes effect only when XForwardedForEnabled is true. Value:
  final pulumi.Input<String>? xForwardedForProcessingMode;
  /// Indicates Whether the X-Forwarded-Proto Header Field Is Used to Obtain the Server Load Balancer Instance Snooping Protocols.
  final pulumi.Input<bool>? xForwardedForProtoEnabled;
  /// Indicates Whether the SLB-ID Header Field Is Used to Obtain the Load Balancing Instance Id
  final pulumi.Input<bool>? xForwardedForSlbIdEnabled;
  /// Indicates Whether the X-Forwarded-Port Header Field Is Used to Obtain the Server Load Balancer Instance Listening Port
  final pulumi.Input<bool>? xForwardedForSlbPortEnabled;

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
      xForwardedForClientCertClientVerifyAlias: map['xForwardedForClientCertClientVerifyAlias'] == null ? null : (map['xForwardedForClientCertClientVerifyAlias']! as String).input(),
      xForwardedForClientCertClientVerifyEnabled: map['xForwardedForClientCertClientVerifyEnabled'] == null ? null : (map['xForwardedForClientCertClientVerifyEnabled']! as bool).input(),
      xForwardedForClientCertFingerPrintAlias: map['xForwardedForClientCertFingerPrintAlias'] == null ? null : (map['xForwardedForClientCertFingerPrintAlias']! as String).input(),
      xForwardedForClientCertFingerPrintEnabled: map['xForwardedForClientCertFingerPrintEnabled'] == null ? null : (map['xForwardedForClientCertFingerPrintEnabled']! as bool).input(),
      xForwardedForClientCertIssuerDnAlias: map['xForwardedForClientCertIssuerDnAlias'] == null ? null : (map['xForwardedForClientCertIssuerDnAlias']! as String).input(),
      xForwardedForClientCertIssuerDnEnabled: map['xForwardedForClientCertIssuerDnEnabled'] == null ? null : (map['xForwardedForClientCertIssuerDnEnabled']! as bool).input(),
      xForwardedForClientCertSubjectDnAlias: map['xForwardedForClientCertSubjectDnAlias'] == null ? null : (map['xForwardedForClientCertSubjectDnAlias']! as String).input(),
      xForwardedForClientCertSubjectDnEnabled: map['xForwardedForClientCertSubjectDnEnabled'] == null ? null : (map['xForwardedForClientCertSubjectDnEnabled']! as bool).input(),
      xForwardedForClientSourceIpsEnabled: map['xForwardedForClientSourceIpsEnabled'] == null ? null : (map['xForwardedForClientSourceIpsEnabled']! as bool).input(),
      xForwardedForClientSourceIpsTrusted: map['xForwardedForClientSourceIpsTrusted'] == null ? null : (map['xForwardedForClientSourceIpsTrusted']! as String).input(),
      xForwardedForClientSrcPortEnabled: map['xForwardedForClientSrcPortEnabled'] == null ? null : (map['xForwardedForClientSrcPortEnabled']! as bool).input(),
      xForwardedForEnabled: map['xForwardedForEnabled'] == null ? null : (map['xForwardedForEnabled']! as bool).input(),
      xForwardedForHostEnabled: map['xForwardedForHostEnabled'] == null ? null : (map['xForwardedForHostEnabled']! as bool).input(),
      xForwardedForProcessingMode: map['xForwardedForProcessingMode'] == null ? null : (map['xForwardedForProcessingMode']! as String).input(),
      xForwardedForProtoEnabled: map['xForwardedForProtoEnabled'] == null ? null : (map['xForwardedForProtoEnabled']! as bool).input(),
      xForwardedForSlbIdEnabled: map['xForwardedForSlbIdEnabled'] == null ? null : (map['xForwardedForSlbIdEnabled']! as bool).input(),
      xForwardedForSlbPortEnabled: map['xForwardedForSlbPortEnabled'] == null ? null : (map['xForwardedForSlbPortEnabled']! as bool).input(),
    );
  }
}

