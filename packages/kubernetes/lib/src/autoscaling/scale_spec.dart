// ignore_for_file: unused_element, unnecessary_cast


/// ScaleSpec describes the attributes of a scale subresource.
class ScaleSpec {
  /// replicas is the desired number of instances for the scaled object.
  final int? replicas;

  /// Creates a new [ScaleSpec].
  /// [replicas] replicas is the desired number of instances for the scaled object.
  ScaleSpec({
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
    };
  }

  factory ScaleSpec.fromMap(Map<String, dynamic> map) {
    return ScaleSpec(
      replicas: map['replicas'] == null ? null : map['replicas'] as int,
    );
  }
}

