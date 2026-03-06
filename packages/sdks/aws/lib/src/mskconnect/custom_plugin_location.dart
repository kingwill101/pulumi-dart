// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_plugin_location_s3.dart';

class CustomPluginLocation {
  /// Information of the plugin file stored in Amazon S3. See `s3` Block for details..
  final pulumi.Input<CustomPluginLocationS3> s3;

  /// Creates a new [CustomPluginLocation].
  /// [s3] Information of the plugin file stored in Amazon S3. See `s3` Block for details..
  const CustomPluginLocation({
    required this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': pulumi.Input.mapInputValue<CustomPluginLocationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory CustomPluginLocation.fromMap(Map<String, dynamic> map) {
    return CustomPluginLocation(
      s3: pulumi.Input.fromValue(CustomPluginLocationS3.fromMap((map['s3']! as Map).cast<String, dynamic>())),
    );
  }
}

