// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskMonitorConfFileDownload {
  /// Connection timeout time, in ms. Default 5000. Optional range: 1000-120000ms.
  final pulumi.Input<int>? connectionTimeout;
  /// Custom header, in JSON Map format.
  final pulumi.Input<Map<String, String>>? customHeaderContent;
  /// Download the kernel.
  /// - 1:curl
  /// - 0:WinInet
  /// Default 1.
  final pulumi.Input<int>? downloadKernel;
  /// Ignore CA Certificate authorization error 0: Do not ignore, 1: ignore, default 1.
  final pulumi.Input<int>? ignoreCertificateAuthError;
  /// Ignore certificate revocation error 0: Do not ignore, 1: ignore, default 1.
  final pulumi.Input<int>? ignoreCertificateCanceledError;
  /// Ignore certificate expiration error 0: not ignored, 1: Ignored, default 1.
  final pulumi.Input<int>? ignoreCertificateOutOfDateError;
  /// The certificate status error is ignored. 0: Do not ignore, 1: IGNORE. The default value is 1.
  final pulumi.Input<int>? ignoreCertificateStatusError;
  /// The certificate cannot be trusted and ignored. 0: Do not ignore, 1: IGNORE. The default value is 1.
  final pulumi.Input<int>? ignoreCertificateUntrustworthyError;
  /// Ignore certificate usage error 0: Do not ignore, 1: ignore, default 1.
  final pulumi.Input<int>? ignoreCertificateUsingError;
  /// Invalid host error ignored, 0: not ignored, 1: Ignored, default 1.
  final pulumi.Input<int>? ignoreInvalidHostError;
  /// Monitoring timeout, in ms. Not required, 20000 by default.
  final pulumi.Input<int>? monitorTimeout;
  /// Quick agreement
  /// - 1:http1
  /// - 2:http2
  /// - 3:http3
  /// Default 1.
  final pulumi.Input<int>? quickProtocol;
  /// When redirection occurs, whether to continue browsing, 0-No, 1-Yes, the default is 1.
  final pulumi.Input<int>? redirection;
  /// The target URL.
  final pulumi.Input<String> targetUrl;
  /// The transmission size, in KB. The default value is 2048KB. The transmission size of the downloaded file must be between 1 and 20480KB.
  final pulumi.Input<int>? transmissionSize;
  /// Verify keywords.
  final pulumi.Input<String>? validateKeywords;
  /// The verification method.
  /// - 0: Do not validate
  /// - 1: Validation string
  /// - 2:MD5 validation.
  final pulumi.Input<int>? verifyWay;
  /// DNS hijack whitelist. Match rules support IP, IP wildcard, subnet mask, and CNAME. Multiple match rules can be filled in. Multiple match rules are separated by vertical bars (|). For example, www.aliyun.com:203.0.3.55 | 203.3.44.67 indicates that all other IP addresses under the www.aliyun.com domain except 203.0.3.55 and 203.3.44.67 are hijacked.
  final pulumi.Input<String>? whiteList;

  /// Creates a new [SyntheticTaskMonitorConfFileDownload].
  /// [connectionTimeout] Connection timeout time, in ms. Default 5000. Optional range: 1000-120000ms.
  /// [customHeaderContent] Custom header, in JSON Map format.
  /// [downloadKernel] Download the kernel.
  /// [ignoreCertificateAuthError] Ignore CA Certificate authorization error 0: Do not ignore, 1: ignore, default 1.
  /// [ignoreCertificateCanceledError] Ignore certificate revocation error 0: Do not ignore, 1: ignore, default 1.
  /// [ignoreCertificateOutOfDateError] Ignore certificate expiration error 0: not ignored, 1: Ignored, default 1.
  /// [ignoreCertificateStatusError] The certificate status error is ignored. 0: Do not ignore, 1: IGNORE. The default value is 1.
  /// [ignoreCertificateUntrustworthyError] The certificate cannot be trusted and ignored. 0: Do not ignore, 1: IGNORE. The default value is 1.
  /// [ignoreCertificateUsingError] Ignore certificate usage error 0: Do not ignore, 1: ignore, default 1.
  /// [ignoreInvalidHostError] Invalid host error ignored, 0: not ignored, 1: Ignored, default 1.
  /// [monitorTimeout] Monitoring timeout, in ms. Not required, 20000 by default.
  /// [quickProtocol] Quick agreement
  /// [redirection] When redirection occurs, whether to continue browsing, 0-No, 1-Yes, the default is 1.
  /// [targetUrl] The target URL.
  /// [transmissionSize] The transmission size, in KB. The default value is 2048KB. The transmission size of the downloaded file must be between 1 and 20480KB.
  /// [validateKeywords] Verify keywords.
  /// [verifyWay] The verification method.
  /// [whiteList] DNS hijack whitelist. Match rules support IP, IP wildcard, subnet mask, and CNAME. Multiple match rules can be filled in. Multiple match rules are separated by vertical bars (|). For example, www.aliyun.com:203.0.3.55 | 203.3.44.67 indicates that all other IP addresses under the www.aliyun.com domain except 203.0.3.55 and 203.3.44.67 are hijacked.
  SyntheticTaskMonitorConfFileDownload({
    this.connectionTimeout,
    this.customHeaderContent,
    this.downloadKernel,
    this.ignoreCertificateAuthError,
    this.ignoreCertificateCanceledError,
    this.ignoreCertificateOutOfDateError,
    this.ignoreCertificateStatusError,
    this.ignoreCertificateUntrustworthyError,
    this.ignoreCertificateUsingError,
    this.ignoreInvalidHostError,
    this.monitorTimeout,
    this.quickProtocol,
    this.redirection,
    required this.targetUrl,
    this.transmissionSize,
    this.validateKeywords,
    this.verifyWay,
    this.whiteList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionTimeout': ?connectionTimeout,
      'customHeaderContent': ?customHeaderContent,
      'downloadKernel': ?downloadKernel,
      'ignoreCertificateAuthError': ?ignoreCertificateAuthError,
      'ignoreCertificateCanceledError': ?ignoreCertificateCanceledError,
      'ignoreCertificateOutOfDateError': ?ignoreCertificateOutOfDateError,
      'ignoreCertificateStatusError': ?ignoreCertificateStatusError,
      'ignoreCertificateUntrustworthyError': ?ignoreCertificateUntrustworthyError,
      'ignoreCertificateUsingError': ?ignoreCertificateUsingError,
      'ignoreInvalidHostError': ?ignoreInvalidHostError,
      'monitorTimeout': ?monitorTimeout,
      'quickProtocol': ?quickProtocol,
      'redirection': ?redirection,
      'targetUrl': targetUrl,
      'transmissionSize': ?transmissionSize,
      'validateKeywords': ?validateKeywords,
      'verifyWay': ?verifyWay,
      'whiteList': ?whiteList,
    };
  }

  factory SyntheticTaskMonitorConfFileDownload.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfFileDownload(
      connectionTimeout: map['connectionTimeout'] == null ? null : (map['connectionTimeout'] as int).input(),
      customHeaderContent: map['customHeaderContent'] == null ? null : ((map['customHeaderContent'] as Map).cast<String, String>()).input(),
      downloadKernel: map['downloadKernel'] == null ? null : (map['downloadKernel'] as int).input(),
      ignoreCertificateAuthError: map['ignoreCertificateAuthError'] == null ? null : (map['ignoreCertificateAuthError'] as int).input(),
      ignoreCertificateCanceledError: map['ignoreCertificateCanceledError'] == null ? null : (map['ignoreCertificateCanceledError'] as int).input(),
      ignoreCertificateOutOfDateError: map['ignoreCertificateOutOfDateError'] == null ? null : (map['ignoreCertificateOutOfDateError'] as int).input(),
      ignoreCertificateStatusError: map['ignoreCertificateStatusError'] == null ? null : (map['ignoreCertificateStatusError'] as int).input(),
      ignoreCertificateUntrustworthyError: map['ignoreCertificateUntrustworthyError'] == null ? null : (map['ignoreCertificateUntrustworthyError'] as int).input(),
      ignoreCertificateUsingError: map['ignoreCertificateUsingError'] == null ? null : (map['ignoreCertificateUsingError'] as int).input(),
      ignoreInvalidHostError: map['ignoreInvalidHostError'] == null ? null : (map['ignoreInvalidHostError'] as int).input(),
      monitorTimeout: map['monitorTimeout'] == null ? null : (map['monitorTimeout'] as int).input(),
      quickProtocol: map['quickProtocol'] == null ? null : (map['quickProtocol'] as int).input(),
      redirection: map['redirection'] == null ? null : (map['redirection'] as int).input(),
      targetUrl: (map['targetUrl'] as String).input(),
      transmissionSize: map['transmissionSize'] == null ? null : (map['transmissionSize'] as int).input(),
      validateKeywords: map['validateKeywords'] == null ? null : (map['validateKeywords'] as String).input(),
      verifyWay: map['verifyWay'] == null ? null : (map['verifyWay'] as int).input(),
      whiteList: map['whiteList'] == null ? null : (map['whiteList'] as String).input(),
    );
  }
}

