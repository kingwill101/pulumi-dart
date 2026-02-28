// ignore_for_file: unused_element, unnecessary_cast

import 'custom_plugin_location_s3.dart';

class CustomPluginLocation {
  /// Information of the plugin file stored in Amazon S3. See `s3` Block for details..
  final CustomPluginLocationS3 s3;

  /// Creates a new [CustomPluginLocation].
  /// [s3] Information of the plugin file stored in Amazon S3. See `s3` Block for details..
  CustomPluginLocation({
    required this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3'] = s3.toMap();
    return map;
  }

  factory CustomPluginLocation.fromMap(Map<String, dynamic> map) {
    return CustomPluginLocation(
      s3: CustomPluginLocationS3.fromMap(
          (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
