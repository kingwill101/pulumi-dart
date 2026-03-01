// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskMonitorConfWebsite {
  /// Whether to support automatic scrolling screen, loading page.
  /// - 0 (default): No
  /// 1: Yes.
  final int? automaticScrolling;
  /// Custom header.
  /// - 0 (default): Off
  /// - 1: Modify the first package
  /// - 2: Modify all packages.
  final int? customHeader;
  /// Custom header, in JSON Map format.
  final Map<String, String>? customHeaderContent;
  /// Whether to disable caching.
  /// - 0: not disabled
  /// - 1 (default): Disabled.
  final int? disableCache;
  /// The Accept-Encoding field is used to determine whether to Accept compressed files. 0-do not disable, 1-disable, the default is 0.
  final int? disableCompression;
  /// When a domain name (such as www.aliyun.com) is resolved, if the resolved IP address or CNAME is not in the DNS hijacking white list, the user will fail to access or return a target IP address that is not Aliyun. If the IP or CNAME in the resolution result is in the DNS white list, it will be determined that DNS hijacking has not occurred.  Fill in the format: Domain name: matching rules. Match rules support IP, IP wildcard, subnet mask, and CNAME. Multiple match rules can be filled in. Multiple match rules are separated by vertical bars (|). For example, www.aliyun.com:203.0.3.55 | 203.3.44.67 indicates that all other IP addresses under the www.aliyun.com domain except 203.0.3.55 and 203.3.44.67 are hijacked.
  final String? dnsHijackWhitelist;
  /// If an element configured in the element blacklist appears during page loading, the element is not requested to be loaded.
  final String? elementBlacklist;
  /// Whether to filter invalid IP parameters. 0: filter, 1: do not filter. The default value is 0.
  final int? filterInvalidIp;
  /// Identify elements: Set the total number of elements on the Browse page.
  final int? flowHijackJumpTimes;
  /// Hijacking ID: Set the matching key information. Enter the hijacking keyword or key element, with an asterisk (*) allowed.
  final String? flowHijackLogo;
  /// Whether to ignore certificate errors during certificate verification in SSL Handshake and continue browsing. 0-do not ignore, 1-ignore. The default value is 1.
  final int? ignoreCertificateError;
  /// Monitoring timeout, in ms. Not required, 20000 by default.
  final int? monitorTimeout;
  /// Monitoring the page appears to be tampered with elements other than the domain settings that belong to the page. Common manifestations are pop-up advertisements, floating advertisements, jumps, etc.  Fill in the format: Domain name: Element. You can fill multiple elements separated by a vertical bar (|). For example, www.aliyun.com:|/cc/bb/a.gif |/vv/bb/cc.jpg indicates that all the other elements of the www.aliyun.com domain name except the basic document,/cc/bb/a.gif, and/vv/bb/cc.jpg are tampered.
  final String? pageTamper;
  /// When redirection occurs, whether to continue browsing, 0-No, 1-Yes, the default is 1.
  final int? redirection;
  /// The slow element threshold, in ms, is 5000 by default and can be selected from 1 to 300000ms.
  final int? slowElementThreshold;
  /// The target URL.
  final String targetUrl;
  /// The verification string is an arbitrary string in the source code of the monitoring page. If the source code returned by the client contains any of the blacklisted strings, 650 error is returned. Multiple strings are separated by a vertical bar (|).
  final String? verifyStringBlacklist;
  /// The verification string is an arbitrary string in the source code of the monitoring page. The source code returned by the client must contain all the strings in the whitelist. Otherwise, 650 error is returned. Multiple strings are separated by a vertical bar (|).
  final String? verifyStringWhitelist;
  /// The maximum waiting time, in ms, is 5000 by default and can be selected from 5000 ms to 300000ms.
  final int? waitCompletionTime;

  /// Creates a new [SyntheticTaskMonitorConfWebsite].
  /// [automaticScrolling] Whether to support automatic scrolling screen, loading page.
  /// [customHeader] Custom header.
  /// [customHeaderContent] Custom header, in JSON Map format.
  /// [disableCache] Whether to disable caching.
  /// [disableCompression] The Accept-Encoding field is used to determine whether to Accept compressed files. 0-do not disable, 1-disable, the default is 0.
  /// [dnsHijackWhitelist] When a domain name (such as www.aliyun.com) is resolved, if the resolved IP address or CNAME is not in the DNS hijacking white list, the user will fail to access or return a target IP address that is not Aliyun. If the IP or CNAME in the resolution result is in the DNS white list, it will be determined that DNS hijacking has not occurred.  Fill in the format: Domain name: matching rules. Match rules support IP, IP wildcard, subnet mask, and CNAME. Multiple match rules can be filled in. Multiple match rules are separated by vertical bars (|). For example, www.aliyun.com:203.0.3.55 | 203.3.44.67 indicates that all other IP addresses under the www.aliyun.com domain except 203.0.3.55 and 203.3.44.67 are hijacked.
  /// [elementBlacklist] If an element configured in the element blacklist appears during page loading, the element is not requested to be loaded.
  /// [filterInvalidIp] Whether to filter invalid IP parameters. 0: filter, 1: do not filter. The default value is 0.
  /// [flowHijackJumpTimes] Identify elements: Set the total number of elements on the Browse page.
  /// [flowHijackLogo] Hijacking ID: Set the matching key information. Enter the hijacking keyword or key element, with an asterisk (*) allowed.
  /// [ignoreCertificateError] Whether to ignore certificate errors during certificate verification in SSL Handshake and continue browsing. 0-do not ignore, 1-ignore. The default value is 1.
  /// [monitorTimeout] Monitoring timeout, in ms. Not required, 20000 by default.
  /// [pageTamper] Monitoring the page appears to be tampered with elements other than the domain settings that belong to the page. Common manifestations are pop-up advertisements, floating advertisements, jumps, etc.  Fill in the format: Domain name: Element. You can fill multiple elements separated by a vertical bar (|). For example, www.aliyun.com:|/cc/bb/a.gif |/vv/bb/cc.jpg indicates that all the other elements of the www.aliyun.com domain name except the basic document,/cc/bb/a.gif, and/vv/bb/cc.jpg are tampered.
  /// [redirection] When redirection occurs, whether to continue browsing, 0-No, 1-Yes, the default is 1.
  /// [slowElementThreshold] The slow element threshold, in ms, is 5000 by default and can be selected from 1 to 300000ms.
  /// [targetUrl] The target URL.
  /// [verifyStringBlacklist] The verification string is an arbitrary string in the source code of the monitoring page. If the source code returned by the client contains any of the blacklisted strings, 650 error is returned. Multiple strings are separated by a vertical bar (|).
  /// [verifyStringWhitelist] The verification string is an arbitrary string in the source code of the monitoring page. The source code returned by the client must contain all the strings in the whitelist. Otherwise, 650 error is returned. Multiple strings are separated by a vertical bar (|).
  /// [waitCompletionTime] The maximum waiting time, in ms, is 5000 by default and can be selected from 5000 ms to 300000ms.
  SyntheticTaskMonitorConfWebsite({
    this.automaticScrolling,
    this.customHeader,
    this.customHeaderContent,
    this.disableCache,
    this.disableCompression,
    this.dnsHijackWhitelist,
    this.elementBlacklist,
    this.filterInvalidIp,
    this.flowHijackJumpTimes,
    this.flowHijackLogo,
    this.ignoreCertificateError,
    this.monitorTimeout,
    this.pageTamper,
    this.redirection,
    this.slowElementThreshold,
    required this.targetUrl,
    this.verifyStringBlacklist,
    this.verifyStringWhitelist,
    this.waitCompletionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticScrolling': ?automaticScrolling,
      'customHeader': ?customHeader,
      'customHeaderContent': ?customHeaderContent,
      'disableCache': ?disableCache,
      'disableCompression': ?disableCompression,
      'dnsHijackWhitelist': ?dnsHijackWhitelist,
      'elementBlacklist': ?elementBlacklist,
      'filterInvalidIp': ?filterInvalidIp,
      'flowHijackJumpTimes': ?flowHijackJumpTimes,
      'flowHijackLogo': ?flowHijackLogo,
      'ignoreCertificateError': ?ignoreCertificateError,
      'monitorTimeout': ?monitorTimeout,
      'pageTamper': ?pageTamper,
      'redirection': ?redirection,
      'slowElementThreshold': ?slowElementThreshold,
      'targetUrl': targetUrl,
      'verifyStringBlacklist': ?verifyStringBlacklist,
      'verifyStringWhitelist': ?verifyStringWhitelist,
      'waitCompletionTime': ?waitCompletionTime,
    };
  }

  factory SyntheticTaskMonitorConfWebsite.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfWebsite(
      automaticScrolling: map['automaticScrolling'] == null ? null : map['automaticScrolling'] as int,
      customHeader: map['customHeader'] == null ? null : map['customHeader'] as int,
      customHeaderContent: map['customHeaderContent'] == null ? null : (map['customHeaderContent'] as Map).cast<String, String>(),
      disableCache: map['disableCache'] == null ? null : map['disableCache'] as int,
      disableCompression: map['disableCompression'] == null ? null : map['disableCompression'] as int,
      dnsHijackWhitelist: map['dnsHijackWhitelist'] == null ? null : map['dnsHijackWhitelist'] as String,
      elementBlacklist: map['elementBlacklist'] == null ? null : map['elementBlacklist'] as String,
      filterInvalidIp: map['filterInvalidIp'] == null ? null : map['filterInvalidIp'] as int,
      flowHijackJumpTimes: map['flowHijackJumpTimes'] == null ? null : map['flowHijackJumpTimes'] as int,
      flowHijackLogo: map['flowHijackLogo'] == null ? null : map['flowHijackLogo'] as String,
      ignoreCertificateError: map['ignoreCertificateError'] == null ? null : map['ignoreCertificateError'] as int,
      monitorTimeout: map['monitorTimeout'] == null ? null : map['monitorTimeout'] as int,
      pageTamper: map['pageTamper'] == null ? null : map['pageTamper'] as String,
      redirection: map['redirection'] == null ? null : map['redirection'] as int,
      slowElementThreshold: map['slowElementThreshold'] == null ? null : map['slowElementThreshold'] as int,
      targetUrl: map['targetUrl'] as String,
      verifyStringBlacklist: map['verifyStringBlacklist'] == null ? null : map['verifyStringBlacklist'] as String,
      verifyStringWhitelist: map['verifyStringWhitelist'] == null ? null : map['verifyStringWhitelist'] as String,
      waitCompletionTime: map['waitCompletionTime'] == null ? null : map['waitCompletionTime'] as int,
    );
  }
}

