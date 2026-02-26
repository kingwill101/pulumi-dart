// ignore_for_file: unused_element, unnecessary_cast

class ServerProtocolDetails {
  /// Indicates the transport method for the AS2 messages. Currently, only `HTTP` is supported.
  final List<String>? as2Transports;

  /// Indicates passive mode, for FTP and FTPS protocols. Enter a single IPv4 address, such as the public IP address of a firewall, router, or load balancer.
  final String? passiveIp;

  /// Use to ignore the error that is generated when the client attempts to use `SETSTAT` on a file you are uploading to an S3 bucket. Valid values: `DEFAULT`, `ENABLE_NO_OP`.
  final String? setStatOption;

  /// A property used with Transfer Family servers that use the FTPS protocol. Provides a mechanism to resume or share a negotiated secret key between the control and data connection for an FTPS session. Valid values: `DISABLED`, `ENABLED`, `ENFORCED`.
  final String? tlsSessionResumptionMode;

  ServerProtocolDetails({
    this.as2Transports,
    this.passiveIp,
    this.setStatOption,
    this.tlsSessionResumptionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final as2TransportsValue = as2Transports;
    if (as2TransportsValue != null) {
      map['as2Transports'] = as2TransportsValue;
    }
    final passiveIpValue = passiveIp;
    if (passiveIpValue != null) {
      map['passiveIp'] = passiveIpValue;
    }
    final setStatOptionValue = setStatOption;
    if (setStatOptionValue != null) {
      map['setStatOption'] = setStatOptionValue;
    }
    final tlsSessionResumptionModeValue = tlsSessionResumptionMode;
    if (tlsSessionResumptionModeValue != null) {
      map['tlsSessionResumptionMode'] = tlsSessionResumptionModeValue;
    }
    return map;
  }

  factory ServerProtocolDetails.fromMap(Map<String, dynamic> map) {
    return ServerProtocolDetails(
      as2Transports: map['as2Transports'] == null
          ? null
          : (map['as2Transports'] as List).cast<String>(),
      passiveIp: map['passiveIp'] == null ? null : map['passiveIp'] as String,
      setStatOption:
          map['setStatOption'] == null ? null : map['setStatOption'] as String,
      tlsSessionResumptionMode: map['tlsSessionResumptionMode'] == null
          ? null
          : map['tlsSessionResumptionMode'] as String,
    );
  }
}
