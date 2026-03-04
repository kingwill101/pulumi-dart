// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshMeshConfigKiali {
  /// Whether to enable CNI.
  final pulumi.Input<bool> enabled;

  /// The service address of the Kiali.
  final pulumi.Input<String> url;

  /// Creates a new [GetServiceMeshesMeshMeshConfigKiali].
  /// [enabled] Whether to enable CNI.
  /// [url] The service address of the Kiali.
  GetServiceMeshesMeshMeshConfigKiali({
    required this.enabled,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'url': url};
  }

  factory GetServiceMeshesMeshMeshConfigKiali.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceMeshesMeshMeshConfigKiali(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
