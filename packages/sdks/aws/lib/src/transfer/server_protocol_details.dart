// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerProtocolDetails {
  /// Indicates the transport method for the AS2 messages. Currently, only `HTTP` is supported.
  final pulumi.Input<List<String>>? as2Transports;
  /// Indicates passive mode, for FTP and FTPS protocols. Enter a single IPv4 address, such as the public IP address of a firewall, router, or load balancer.
  final pulumi.Input<String>? passiveIp;
  /// Use to ignore the error that is generated when the client attempts to use `SETSTAT` on a file you are uploading to an S3 bucket. Valid values: `DEFAULT`, `ENABLE_NO_OP`.
  final pulumi.Input<String>? setStatOption;
  /// A property used with Transfer Family servers that use the FTPS protocol. Provides a mechanism to resume or share a negotiated secret key between the control and data connection for an FTPS session. Valid values: `DISABLED`, `ENABLED`, `ENFORCED`.
  final pulumi.Input<String>? tlsSessionResumptionMode;

  /// Creates a new [ServerProtocolDetails].
  /// [as2Transports] Indicates the transport method for the AS2 messages. Currently, only `HTTP` is supported.
  /// [passiveIp] Indicates passive mode, for FTP and FTPS protocols. Enter a single IPv4 address, such as the public IP address of a firewall, router, or load balancer.
  /// [setStatOption] Use to ignore the error that is generated when the client attempts to use `SETSTAT` on a file you are uploading to an S3 bucket. Valid values: `DEFAULT`, `ENABLE_NO_OP`.
  /// [tlsSessionResumptionMode] A property used with Transfer Family servers that use the FTPS protocol. Provides a mechanism to resume or share a negotiated secret key between the control and data connection for an FTPS session. Valid values: `DISABLED`, `ENABLED`, `ENFORCED`.
  ServerProtocolDetails({
    this.as2Transports,
    this.passiveIp,
    this.setStatOption,
    this.tlsSessionResumptionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'as2Transports': ?as2Transports,
      'passiveIp': ?passiveIp,
      'setStatOption': ?setStatOption,
      'tlsSessionResumptionMode': ?tlsSessionResumptionMode,
    };
  }

  factory ServerProtocolDetails.fromMap(Map<String, dynamic> map) {
    return ServerProtocolDetails(
      as2Transports: map['as2Transports'] == null ? null : (((map['as2Transports'] as List).cast<String>()).input()).input(),
      passiveIp: map['passiveIp'] == null ? null : ((map['passiveIp'] as String).input()).input(),
      setStatOption: map['setStatOption'] == null ? null : ((map['setStatOption'] as String).input()).input(),
      tlsSessionResumptionMode: map['tlsSessionResumptionMode'] == null ? null : ((map['tlsSessionResumptionMode'] as String).input()).input(),
    );
  }
}

