// ignore_for_file: unused_element, unnecessary_cast

class GdcServiceInstanceGdceCluster {
  /// Gdce cluster resource id.
  final String gdceCluster;

  /// Creates a new [GdcServiceInstanceGdceCluster].
  /// [gdceCluster] Gdce cluster resource id.
  GdcServiceInstanceGdceCluster({
    required this.gdceCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gdceCluster'] = gdceCluster;
    return map;
  }

  factory GdcServiceInstanceGdceCluster.fromMap(Map<String, dynamic> map) {
    return GdcServiceInstanceGdceCluster(
      gdceCluster: map['gdceCluster'] as String,
    );
  }
}
