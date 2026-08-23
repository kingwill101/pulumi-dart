// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomModelOutputDataConfig {
  /// The S3 URI where the output data is stored.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [CustomModelOutputDataConfig].
  /// [s3Uri] The S3 URI where the output data is stored.
  const CustomModelOutputDataConfig({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory CustomModelOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return CustomModelOutputDataConfig(
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
