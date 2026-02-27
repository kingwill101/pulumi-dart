// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_image_application_icon_s3_location/get_image_application_icon_s3_location.dart';

class GetImageApplication {
  /// The app block ARN of the application.
  final String appBlockArn;

  /// ARN of the image being searched for. Cannot be used with `name_regex` or `name`.
  final String arn;

  /// Time at which this image was created.
  final String createdTime;

  /// Description of image.
  final String description;

  /// Image name to display.
  final String displayName;

  /// Bool based on if the application is enabled.
  final bool enabled;

  /// A list named icon_s3_location that contains the following:
  final List<GetImageApplicationIconS3Location> iconS3Locations;

  /// URL of the application icon. This URL may be time-limited.
  final String iconUrl;

  /// List of the instance families of the application.
  final List<String> instanceFamilies;

  /// Arguments that are passed to the application at it's launch.
  final String launchParameters;

  /// Path to the application's excecutable in the instance.
  final String launchPath;

  /// String to string map that contains additional attributes used to describe the application.
  /// * `Name` - Name of the application.
  final Map<String, String> metadata;

  /// Name of the image being searched for. Cannot be used with `name_regex` or `arn`.
  final String name;

  /// Array of strings describing the platforms on which the application can run.
  /// Values will be from: WINDOWS | WINDOWS_SERVER_2016 | WINDOWS_SERVER_2019 | WINDOWS_SERVER_2022 | AMAZON_LINUX2
  final List<String> platforms;

  /// Working directory for the application.
  final String workingDirectory;

  GetImageApplication({
    required this.appBlockArn,
    required this.arn,
    required this.createdTime,
    required this.description,
    required this.displayName,
    required this.enabled,
    required this.iconS3Locations,
    required this.iconUrl,
    required this.instanceFamilies,
    required this.launchParameters,
    required this.launchPath,
    required this.metadata,
    required this.name,
    required this.platforms,
    required this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appBlockArn'] = appBlockArn;
    map['arn'] = arn;
    map['createdTime'] = createdTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['enabled'] = enabled;
    map['iconS3Locations'] = pulumi.Input.encodeList<
        GetImageApplicationIconS3Location,
        Map<String, dynamic>>(iconS3Locations, (value) => value.toMap());
    map['iconUrl'] = iconUrl;
    map['instanceFamilies'] = instanceFamilies;
    map['launchParameters'] = launchParameters;
    map['launchPath'] = launchPath;
    map['metadata'] = metadata;
    map['name'] = name;
    map['platforms'] = platforms;
    map['workingDirectory'] = workingDirectory;
    return map;
  }

  factory GetImageApplication.fromMap(Map<String, dynamic> map) {
    return GetImageApplication(
      appBlockArn: map['appBlockArn'] as String,
      arn: map['arn'] as String,
      createdTime: map['createdTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      iconS3Locations:
          pulumi.Input.decodeList<GetImageApplicationIconS3Location>(
              map['iconS3Locations'],
              (value) => GetImageApplicationIconS3Location.fromMap(
                  (value as Map).cast<String, dynamic>())),
      iconUrl: map['iconUrl'] as String,
      instanceFamilies: (map['instanceFamilies'] as List).cast<String>(),
      launchParameters: map['launchParameters'] as String,
      launchPath: map['launchPath'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      platforms: (map['platforms'] as List).cast<String>(),
      workingDirectory: map['workingDirectory'] as String,
    );
  }
}
