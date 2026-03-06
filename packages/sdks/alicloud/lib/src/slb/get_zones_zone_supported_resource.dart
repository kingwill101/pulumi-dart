// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZoneSupportedResource {
  /// The type of IP address.
  final pulumi.Input<String> addressIpVersion;
  /// The type of network.
  final pulumi.Input<String> addressType;

  /// Creates a new [GetZonesZoneSupportedResource].
  /// [addressIpVersion] The type of IP address.
  /// [addressType] The type of network.
  const GetZonesZoneSupportedResource({
    required this.addressIpVersion,
    required this.addressType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': addressIpVersion,
      'addressType': addressType,
    };
  }

  factory GetZonesZoneSupportedResource.fromMap(Map<String, dynamic> map) {
    return GetZonesZoneSupportedResource(
      addressIpVersion: pulumi.Input.fromValue(map['addressIpVersion'] as String),
      addressType: pulumi.Input.fromValue(map['addressType'] as String),
    );
  }
}

