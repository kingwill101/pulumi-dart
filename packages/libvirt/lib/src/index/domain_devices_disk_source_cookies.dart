// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_source_cookies_cookie.dart';

class DomainDevicesDiskSourceCookies {
  /// Configures cookies for the backing store source, allowing additional parameters for storage.
  final List<DomainDevicesDiskSourceCookiesCookie>? cookies;

  /// Creates a new [DomainDevicesDiskSourceCookies].
  /// [cookies] Configures cookies for the backing store source, allowing additional parameters for storage.
  DomainDevicesDiskSourceCookies({
    this.cookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookies': ?cookies == null ? null : pulumi.Input.encodeList<DomainDevicesDiskSourceCookiesCookie, Map<String, dynamic>>(cookies!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesDiskSourceCookies.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceCookies(
      cookies: map['cookies'] == null ? null : pulumi.Input.decodeList<DomainDevicesDiskSourceCookiesCookie>(map['cookies'], (value) => DomainDevicesDiskSourceCookiesCookie.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

