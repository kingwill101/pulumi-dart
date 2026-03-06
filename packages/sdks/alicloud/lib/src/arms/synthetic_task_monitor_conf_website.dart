// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskMonitorConfWebsite {
  /// Whether to support automatic scrolling screen, loading page.
  /// - 0 (default): No
  /// 1: Yes.
  final pulumi.Input<int>? automaticScrolling;
  /// Custom header.
  /// - 0 (default): Off
  /// - 1: Modify the first package
  /// - 2: Modify all packages.
  final pulumi.Input<int>? customHeader;
  /// Custom header, in JSON Map format.
  final pulumi.Input<Map<String, String>>? customHeaderContent;
  /// Whether to disable caching.
  /// - 0: not disabled
  /// - 1 (default): Disabled.
  final pulumi.Input<int>? disableCache;
  /// The Accept-Encoding field is used to determine whether to Accept compressed files. 0-do not disable, 1-disable, the default is 0.
  final pulumi.Input<int>? disableCompression;
  /// When a domain name (such as www.aliyun.com) is resolved, if the resolved IP address or CNAME is not in the DNS hijacking white list, the user will fail to access or return a target IP address that is not Aliyun. If the IP or CNAME in the resolution result is in the DNS white list, it will be determined that DNS hijacking has not occurred.  Fill in the format: Domain name: matching rules. Match rules support IP, IP wildcard, subnet mask, and CNAME. Multiple match rules can be filled in. Multiple match rules are separated by vertical bars (|). For example, www.aliyun.com:203.0.3.55 | 203.3.44.67 indicates that all other IP addresses under the www.aliyun.com domain except 203.0.3.55 and 203.3.44.67 are hijacked.
  final pulumi.Input<String>? dnsHijackWhitelist;
  /// If an element configured in the element blacklist appears during page loading, the element is not requested to be loaded.
  final pulumi.Input<String>? elementBlacklist;
  /// Whether to filter invalid IP parameters. 0: filter, 1: do not filter. The default value is 0.
  final pulumi.Input<int>? filterInvalidIp;
  /// Identify elements: Set the total number of elements on the Browse page.
  final pulumi.Input<int>? flowHijackJumpTimes;
  /// Hijacking ID: Set the matching key information. Enter the hijacking keyword or key element, with an asterisk (*) allowed.
  final pulumi.Input<String>? flowHijackLogo;
  /// Whether to ignore certificate errors during certificate verification in SSL Handshake and continue browsing. 0-do not ignore, 1-ignore. The default value is 1.
  final pulumi.Input<int>? ignoreCertificateError;
  /// Monitoring timeout, in ms. Not required, 20000 by default.
  final pulumi.Input<int>? monitorTimeout;
  /// Monitoring the page appears to be tampered with elements other than the domain settings that belong to the page. Common manifestations are pop-up advertisements, floating advertisements, jumps, etc.  Fill in the format: Domain name: Element. You can fill multiple elements separated by a vertical bar (|). For example, www.aliyun.com:|/cc/bb/a.gif |/vv/bb/cc.jpg indicates that all the other elements of the www.aliyun.com domain name except the basic document,/cc/bb/a.gif, and/vv/bb/cc.jpg are tampered.
  final pulumi.Input<String>? pageTamper;
  /// When redirection occurs, whether to continue browsing, 0-No, 1-Yes, the default is 1.
  final pulumi.Input<int>? redirection;
  /// The slow element threshold, in ms, is 5000 by default and can be selected from 1 to 300000ms.
  final pulumi.Input<int>? slowElementThreshold;
  /// The target URL.
  final pulumi.Input<String> targetUrl;
  /// The verification string is an arbitrary string in the source code of the monitoring page. If the source code returned by the client contains any of the blacklisted strings, 650 error is returned. Multiple strings are separated by a vertical bar (|).
  final pulumi.Input<String>? verifyStringBlacklist;
  /// The verification string is an arbitrary string in the source code of the monitoring page. The source code returned by the client must contain all the strings in the whitelist. Otherwise, 650 error is returned. Multiple strings are separated by a vertical bar (|).
  final pulumi.Input<String>? verifyStringWhitelist;
  /// The maximum waiting time, in ms, is 5000 by default and can be selected from 5000 ms to 300000ms.
  final pulumi.Input<int>? waitCompletionTime;

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
  const SyntheticTaskMonitorConfWebsite({
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
      automaticScrolling: (() { final guardedValue = map['automaticScrolling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customHeader: (() { final guardedValue = map['customHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customHeaderContent: (() { final guardedValue = map['customHeaderContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      disableCache: (() { final guardedValue = map['disableCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      disableCompression: (() { final guardedValue = map['disableCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dnsHijackWhitelist: (() { final guardedValue = map['dnsHijackWhitelist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elementBlacklist: (() { final guardedValue = map['elementBlacklist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterInvalidIp: (() { final guardedValue = map['filterInvalidIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      flowHijackJumpTimes: (() { final guardedValue = map['flowHijackJumpTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      flowHijackLogo: (() { final guardedValue = map['flowHijackLogo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreCertificateError: (() { final guardedValue = map['ignoreCertificateError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      monitorTimeout: (() { final guardedValue = map['monitorTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageTamper: (() { final guardedValue = map['pageTamper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirection: (() { final guardedValue = map['redirection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      slowElementThreshold: (() { final guardedValue = map['slowElementThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetUrl: pulumi.Input.fromValue(map['targetUrl'] as String),
      verifyStringBlacklist: (() { final guardedValue = map['verifyStringBlacklist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifyStringWhitelist: (() { final guardedValue = map['verifyStringWhitelist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waitCompletionTime: (() { final guardedValue = map['waitCompletionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

