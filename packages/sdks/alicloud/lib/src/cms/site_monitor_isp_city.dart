// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteMonitorIspCity {
  /// The ID of the city.
  final pulumi.Input<String>? city;
  /// The ID of the carrier.
  final pulumi.Input<String>? isp;
  /// The network type of the detection point. Valid values: `IDC`, `LASTMILE`, and `MOBILE`.
  final pulumi.Input<String>? type;

  /// Creates a new [SiteMonitorIspCity].
  /// [city] The ID of the city.
  /// [isp] The ID of the carrier.
  /// [type] The network type of the detection point. Valid values: `IDC`, `LASTMILE`, and `MOBILE`.
  SiteMonitorIspCity({
    this.city,
    this.isp,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'isp': ?isp,
      'type': ?type,
    };
  }

  factory SiteMonitorIspCity.fromMap(Map<String, dynamic> map) {
    return SiteMonitorIspCity(
      city: map['city'] == null ? null : (map['city']! as String).input(),
      isp: map['isp'] == null ? null : (map['isp']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

