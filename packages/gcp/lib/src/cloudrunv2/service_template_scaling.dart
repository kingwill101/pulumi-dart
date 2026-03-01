// ignore_for_file: unused_element, unnecessary_cast

class ServiceTemplateScaling {
  /// Combined maximum number of instances for all revisions receiving traffic.
  final int? maxInstanceCount;

  /// Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  final int? minInstanceCount;

  /// Creates a new [ServiceTemplateScaling].
  /// [maxInstanceCount] Combined maximum number of instances for all revisions receiving traffic.
  /// [minInstanceCount] Minimum number of instances for the service, to be divided among all revisions receiving traffic.
  ServiceTemplateScaling({this.maxInstanceCount, this.minInstanceCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
    };
  }

  factory ServiceTemplateScaling.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateScaling(
      maxInstanceCount: map['maxInstanceCount'] == null
          ? null
          : map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] == null
          ? null
          : map['minInstanceCount'] as int,
    );
  }
}
