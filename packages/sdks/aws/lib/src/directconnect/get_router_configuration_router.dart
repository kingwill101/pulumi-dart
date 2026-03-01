// ignore_for_file: unused_element, unnecessary_cast


class GetRouterConfigurationRouter {
  /// Router platform
  final String platform;
  /// ID of the Router Type. For example: `CiscoSystemsInc-2900SeriesRouters-IOS124`
  ///
  /// There is currently no AWS API to retrieve the full list of `router_type_identifier` values. Here is a list of known `RouterType` objects that can be used:
  ///
  /// ```json
  /// {
  /// "routerTypes": [
  /// {"platform":"2900 Series Routers","routerTypeIdentifier":"CiscoSystemsInc-2900SeriesRouters-IOS124","software":"IOS 12.4+","vendor":"Cisco Systems, Inc.","xsltTemplateName":"customer-router-cisco-generic.xslt","xsltTemplateNameForMacSec":""},
  /// {"platform":"3700 Series Routers","routerTypeIdentifier":"CiscoSystemsInc-3700SeriesRouters-IOS124","software":"IOS 12.4+","vendor":"Cisco Systems, Inc.","xsltTemplateName":"customer-router-cisco-generic.xslt","xsltTemplateNameForMacSec":""},
  /// {"platform":"7200 Series Routers","routerTypeIdentifier":"CiscoSystemsInc-7200SeriesRouters-IOS124","software":"IOS 12.4+","vendor":"Cisco Systems, Inc.","xsltTemplateName":"customer-router-cisco-generic.xslt","xsltTemplateNameForMacSec":""},
  /// {"platform":"Nexus 7000 Series Switches","routerTypeIdentifier":"CiscoSystemsInc-Nexus7000SeriesSwitches-NXOS51","software":"NX-OS 5.1+","vendor":"Cisco Systems, Inc.","xsltTemplateName":"customer-switch-cisco-nexus-generic.xslt","xsltTemplateNameForMacSec":""},
  /// {"platform":"Nexus 9K+ Series Switches","routerTypeIdentifier":"CiscoSystemsInc-Nexus9KSeriesSwitches-NXOS93","software":"NX-OS 9.3+","vendor":"Cisco Systems, Inc.","xsltTemplateName":"customer-switch-cisco-nexus-generic.xslt","xsltTemplateNameForMacSec":"customer-switch-cisco-nexus-generic-macsec.xslt"},
  /// {"platform":"M/MX Series Routers","routerTypeIdentifier":"JuniperNetworksInc-MMXSeriesRouters-JunOS95","software":"JunOS 9.5+","vendor":"Juniper Networks, Inc.","xsltTemplateName":"customer-router-juniper-generic.xslt","xsltTemplateNameForMacSec":"customer-router-juniper-generic-macsec.xslt"},
  /// {"platform":"SRX Series Routers","routerTypeIdentifier":"JuniperNetworksInc-SRXSeriesRouters-JunOS95","software":"JunOS 9.5+","vendor":"Juniper Networks, Inc.","xsltTemplateName":"customer-router-juniper-generic.xslt","xsltTemplateNameForMacSec":""},
  /// {"platform":"T Series Routers","routerTypeIdentifier":"JuniperNetworksInc-TSeriesRouters-JunOS95","software":"JunOS 9.5+","vendor":"Juniper Networks, Inc.","xsltTemplateName":"customer-router-juniper-generic.xslt","xsltTemplateNameForMacSec":""},
  /// {"platform":"PA-3000+ and 5000+ series","routerTypeIdentifier":"PaloAltoNetworks-PA3000and5000series-PANOS803","software":"PAN-OS 8.0.3+","vendor":"Palo Alto Networks","xsltTemplateName":"customer-router-palo-alto-generic.xslt","xsltTemplateNameForMacSec":""}]
  /// }
  /// ```
  final String routerTypeIdentifier;
  /// Router operating system
  final String software;
  /// Router vendor
  final String vendor;
  /// Router XSLT Template Name
  final String xsltTemplateName;
  final String xsltTemplateNameForMacSec;

  /// Creates a new [GetRouterConfigurationRouter].
  /// [platform] Router platform
  /// [routerTypeIdentifier] ID of the Router Type. For example: `CiscoSystemsInc-2900SeriesRouters-IOS124`
  /// [software] Router operating system
  /// [vendor] Router vendor
  /// [xsltTemplateName] Router XSLT Template Name
  /// [xsltTemplateNameForMacSec] Required.
  GetRouterConfigurationRouter({
    required this.platform,
    required this.routerTypeIdentifier,
    required this.software,
    required this.vendor,
    required this.xsltTemplateName,
    required this.xsltTemplateNameForMacSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platform': platform,
      'routerTypeIdentifier': routerTypeIdentifier,
      'software': software,
      'vendor': vendor,
      'xsltTemplateName': xsltTemplateName,
      'xsltTemplateNameForMacSec': xsltTemplateNameForMacSec,
    };
  }

  factory GetRouterConfigurationRouter.fromMap(Map<String, dynamic> map) {
    return GetRouterConfigurationRouter(
      platform: map['platform'] as String,
      routerTypeIdentifier: map['routerTypeIdentifier'] as String,
      software: map['software'] as String,
      vendor: map['vendor'] as String,
      xsltTemplateName: map['xsltTemplateName'] as String,
      xsltTemplateNameForMacSec: map['xsltTemplateNameForMacSec'] as String,
    );
  }
}

