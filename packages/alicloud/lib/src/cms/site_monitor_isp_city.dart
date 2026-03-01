// ignore_for_file: unused_element, unnecessary_cast


class SiteMonitorIspCity {
  /// The ID of the city.
  final String? city;
  /// The ID of the carrier.
  final String? isp;
  /// The network type of the detection point. Valid values: `IDC`, `LASTMILE`, and `MOBILE`.
  final String? type;

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
      city: map['city'] == null ? null : map['city'] as String,
      isp: map['isp'] == null ? null : map['isp'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

