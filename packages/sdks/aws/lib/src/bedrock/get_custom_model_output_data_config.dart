// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomModelOutputDataConfig {
  /// S3 URI where the validation data is stored.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [GetCustomModelOutputDataConfig].
  /// [s3Uri] S3 URI where the validation data is stored.
  const GetCustomModelOutputDataConfig({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory GetCustomModelOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return GetCustomModelOutputDataConfig(
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
