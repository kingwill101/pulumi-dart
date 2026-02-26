// ignore_for_file: unused_element, unnecessary_cast

class ApplicationImageConfiguration {
  /// The image URI.
  final String imageUri;

  ApplicationImageConfiguration({
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageUri'] = imageUri;
    return map;
  }

  factory ApplicationImageConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationImageConfiguration(
      imageUri: map['imageUri'] as String,
    );
  }
}
