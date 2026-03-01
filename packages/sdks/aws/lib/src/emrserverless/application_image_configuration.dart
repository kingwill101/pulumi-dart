// ignore_for_file: unused_element, unnecessary_cast


class ApplicationImageConfiguration {
  /// The image URI.
  final String imageUri;

  /// Creates a new [ApplicationImageConfiguration].
  /// [imageUri] The image URI.
  ApplicationImageConfiguration({
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUri': imageUri,
    };
  }

  factory ApplicationImageConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationImageConfiguration(
      imageUri: map['imageUri'] as String,
    );
  }
}

