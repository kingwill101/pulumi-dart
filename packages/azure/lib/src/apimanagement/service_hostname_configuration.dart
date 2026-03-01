// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_hostname_configuration_developer_portal.dart';
import 'service_hostname_configuration_management.dart';
import 'service_hostname_configuration_portal.dart';
import 'service_hostname_configuration_proxy.dart';
import 'service_hostname_configuration_scm.dart';

class ServiceHostnameConfiguration {
  /// One or more `developer_portal` blocks as documented below.
  final List<ServiceHostnameConfigurationDeveloperPortal>? developerPortals;
  /// One or more `management` blocks as documented below.
  final List<ServiceHostnameConfigurationManagement>? managements;
  /// One or more `portal` blocks as documented below.
  final List<ServiceHostnameConfigurationPortal>? portals;
  /// One or more `proxy` blocks as documented below.
  final List<ServiceHostnameConfigurationProxy>? proxies;
  /// One or more `scm` blocks as documented below.
  final List<ServiceHostnameConfigurationScm>? scms;

  /// Creates a new [ServiceHostnameConfiguration].
  /// [developerPortals] One or more `developer_portal` blocks as documented below.
  /// [managements] One or more `management` blocks as documented below.
  /// [portals] One or more `portal` blocks as documented below.
  /// [proxies] One or more `proxy` blocks as documented below.
  /// [scms] One or more `scm` blocks as documented below.
  ServiceHostnameConfiguration({
    this.developerPortals,
    this.managements,
    this.portals,
    this.proxies,
    this.scms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'developerPortals': ?developerPortals == null ? null : pulumi.Input.encodeList<ServiceHostnameConfigurationDeveloperPortal, Map<String, dynamic>>(developerPortals!, (value) => value.toMap()),
      'managements': ?managements == null ? null : pulumi.Input.encodeList<ServiceHostnameConfigurationManagement, Map<String, dynamic>>(managements!, (value) => value.toMap()),
      'portals': ?portals == null ? null : pulumi.Input.encodeList<ServiceHostnameConfigurationPortal, Map<String, dynamic>>(portals!, (value) => value.toMap()),
      'proxies': ?proxies == null ? null : pulumi.Input.encodeList<ServiceHostnameConfigurationProxy, Map<String, dynamic>>(proxies!, (value) => value.toMap()),
      'scms': ?scms == null ? null : pulumi.Input.encodeList<ServiceHostnameConfigurationScm, Map<String, dynamic>>(scms!, (value) => value.toMap()),
    };
  }

  factory ServiceHostnameConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceHostnameConfiguration(
      developerPortals: map['developerPortals'] == null ? null : pulumi.Input.decodeList<ServiceHostnameConfigurationDeveloperPortal>(map['developerPortals'], (value) => ServiceHostnameConfigurationDeveloperPortal.fromMap((value as Map).cast<String, dynamic>())),
      managements: map['managements'] == null ? null : pulumi.Input.decodeList<ServiceHostnameConfigurationManagement>(map['managements'], (value) => ServiceHostnameConfigurationManagement.fromMap((value as Map).cast<String, dynamic>())),
      portals: map['portals'] == null ? null : pulumi.Input.decodeList<ServiceHostnameConfigurationPortal>(map['portals'], (value) => ServiceHostnameConfigurationPortal.fromMap((value as Map).cast<String, dynamic>())),
      proxies: map['proxies'] == null ? null : pulumi.Input.decodeList<ServiceHostnameConfigurationProxy>(map['proxies'], (value) => ServiceHostnameConfigurationProxy.fromMap((value as Map).cast<String, dynamic>())),
      scms: map['scms'] == null ? null : pulumi.Input.decodeList<ServiceHostnameConfigurationScm>(map['scms'], (value) => ServiceHostnameConfigurationScm.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

