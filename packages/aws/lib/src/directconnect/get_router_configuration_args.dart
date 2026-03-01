// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_get_router_configuration_get_router_configuration_args_doc}
/// Arguments for getRouterConfiguration.
/// {@endtemplate}
/// {@macro pulumi_directconnect_get_router_configuration_get_router_configuration_args_doc}
class GetRouterConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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
  final pulumi.Input<String> routerTypeIdentifier;

  /// ID of the Direct Connect Virtual Interface
  final pulumi.Input<String> virtualInterfaceId;

  /// Creates a new [GetRouterConfigurationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routerTypeIdentifier] ID of the Router Type. For example: `CiscoSystemsInc-2900SeriesRouters-IOS124`
  /// [virtualInterfaceId] ID of the Direct Connect Virtual Interface
  GetRouterConfigurationArgs({
    String? region,
    required String routerTypeIdentifier,
    required String virtualInterfaceId,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       routerTypeIdentifier = pulumi.Input.asInput<String>(
         routerTypeIdentifier,
       ),
       virtualInterfaceId = pulumi.Input.asInput<String>(virtualInterfaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routerTypeIdentifier': routerTypeIdentifier,
      'virtualInterfaceId': virtualInterfaceId,
    };
  }

  factory GetRouterConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterConfigurationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      routerTypeIdentifier: map['routerTypeIdentifier'] as String,
      virtualInterfaceId: map['virtualInterfaceId'] as String,
    );
  }
}
