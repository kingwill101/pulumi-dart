// ignore_for_file: unused_element, unnecessary_cast

/// Container of information related to one possible annotation that can be used in a labeling task. For example, an image classification task where images are labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an AnnotationSpec for `cat`.
class GoogleCloudDatalabelingV1beta1AnnotationSpec {
  /// Optional. User-provided description of the annotation specification. The description can be up to 10,000 characters long.
  final String? description;

  /// The display name of the AnnotationSpec. Maximum of 64 characters.
  final String displayName;

  /// Creates a new [GoogleCloudDatalabelingV1beta1AnnotationSpec].
  /// [description] Optional. User-provided description of the annotation specification. The description can be up to 10,000 characters long.
  /// [displayName] The display name of the AnnotationSpec. Maximum of 64 characters.
  GoogleCloudDatalabelingV1beta1AnnotationSpec({
    this.description,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1AnnotationSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1AnnotationSpec(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
    );
  }
}
