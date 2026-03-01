// ignore_for_file: unused_element, unnecessary_cast

class WireGroupWireEndpoint {
  /// (Output)
  final String? interconnect;

  /// (Output)
  final int? vlanTag;

  /// Creates a new [WireGroupWireEndpoint].
  /// [interconnect] (Output)
  /// [vlanTag] (Output)
  WireGroupWireEndpoint({this.interconnect, this.vlanTag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnect': ?interconnect,
      'vlanTag': ?vlanTag,
    };
  }

  factory WireGroupWireEndpoint.fromMap(Map<String, dynamic> map) {
    return WireGroupWireEndpoint(
      interconnect: map['interconnect'] == null
          ? null
          : map['interconnect'] as String,
      vlanTag: map['vlanTag'] == null ? null : map['vlanTag'] as int,
    );
  }
}
