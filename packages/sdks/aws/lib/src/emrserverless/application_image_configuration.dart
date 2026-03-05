// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationImageConfiguration {
  /// The image URI.
  final pulumi.Input<String> imageUri;

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
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
    );
  }
}

