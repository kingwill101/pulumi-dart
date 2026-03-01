// ignore_for_file: unused_element, unnecessary_cast


class FeaturesTemplateDeployment {
  final bool deleteNestedItemsDuringDeletion;

  /// Creates a new [FeaturesTemplateDeployment].
  /// [deleteNestedItemsDuringDeletion] Required.
  FeaturesTemplateDeployment({
    required this.deleteNestedItemsDuringDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteNestedItemsDuringDeletion': deleteNestedItemsDuringDeletion,
    };
  }

  factory FeaturesTemplateDeployment.fromMap(Map<String, dynamic> map) {
    return FeaturesTemplateDeployment(
      deleteNestedItemsDuringDeletion: map['deleteNestedItemsDuringDeletion'] as bool,
    );
  }
}

