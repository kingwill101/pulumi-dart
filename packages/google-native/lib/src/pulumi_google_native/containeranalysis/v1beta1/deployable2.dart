// ignore_for_file: unused_element, unnecessary_cast

/// An artifact that can be deployed in some runtime.
class Deployable2 {
  /// Resource URI for the artifact being deployed.
  final List<String> resourceUri;

  Deployable2({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceUri'] = resourceUri;
    return map;
  }

  factory Deployable2.fromMap(Map<String, dynamic> map) {
    return Deployable2(
      resourceUri: (map['resourceUri'] as List).cast<String>(),
    );
  }
}
