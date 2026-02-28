// ignore_for_file: unused_element, unnecessary_cast

import 'web_app_endpoint_details_vpc.dart';

class WebAppEndpointDetails {
  /// Block defining VPC configuration for hosting the web app endpoint within a VPC. See Vpc below.
  final WebAppEndpointDetailsVpc? vpc;

  /// Creates a new [WebAppEndpointDetails].
  /// [vpc] Block defining VPC configuration for hosting the web app endpoint within a VPC. See Vpc below.
  WebAppEndpointDetails({
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vpcValue = vpc;
    if (vpcValue != null) {
      map['vpc'] = vpcValue.toMap();
    }
    return map;
  }

  factory WebAppEndpointDetails.fromMap(Map<String, dynamic> map) {
    return WebAppEndpointDetails(
      vpc: map['vpc'] == null
          ? null
          : WebAppEndpointDetailsVpc.fromMap(
              (map['vpc'] as Map).cast<String, dynamic>()),
    );
  }
}
