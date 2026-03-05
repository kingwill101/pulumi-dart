// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_application_icon_s3_location.dart';

class GetImageApplication {
  /// The app block ARN of the application.
  final pulumi.Input<String> appBlockArn;
  /// ARN of the image being searched for. Cannot be used with `name_regex` or `name`.
  final pulumi.Input<String> arn;
  /// Time at which this image was created.
  final pulumi.Input<String> createdTime;
  /// Description of image.
  final pulumi.Input<String> description;
  /// Image name to display.
  final pulumi.Input<String> displayName;
  /// Bool based on if the application is enabled.
  final pulumi.Input<bool> enabled;
  /// A list named icon_s3_location that contains the following:
  final pulumi.Input<List<GetImageApplicationIconS3Location>> iconS3Locations;
  /// URL of the application icon. This URL may be time-limited.
  final pulumi.Input<String> iconUrl;
  /// List of the instance families of the application.
  final pulumi.Input<List<String>> instanceFamilies;
  /// Arguments that are passed to the application at it's launch.
  final pulumi.Input<String> launchParameters;
  /// Path to the application's excecutable in the instance.
  final pulumi.Input<String> launchPath;
  /// String to string map that contains additional attributes used to describe the application.
  /// * `Name` - Name of the application.
  final pulumi.Input<Map<String, String>> metadata;
  /// Name of the image being searched for. Cannot be used with `name_regex` or `arn`.
  final pulumi.Input<String> name;
  /// Array of strings describing the platforms on which the application can run.
  /// Values will be from: WINDOWS | WINDOWS_SERVER_2016 | WINDOWS_SERVER_2019 | WINDOWS_SERVER_2022 | AMAZON_LINUX2
  final pulumi.Input<List<String>> platforms;
  /// Working directory for the application.
  final pulumi.Input<String> workingDirectory;

  /// Creates a new [GetImageApplication].
  /// [appBlockArn] The app block ARN of the application.
  /// [arn] ARN of the image being searched for. Cannot be used with `name_regex` or `name`.
  /// [createdTime] Time at which this image was created.
  /// [description] Description of image.
  /// [displayName] Image name to display.
  /// [enabled] Bool based on if the application is enabled.
  /// [iconS3Locations] A list named icon_s3_location that contains the following:
  /// [iconUrl] URL of the application icon. This URL may be time-limited.
  /// [instanceFamilies] List of the instance families of the application.
  /// [launchParameters] Arguments that are passed to the application at it's launch.
  /// [launchPath] Path to the application's excecutable in the instance.
  /// [metadata] String to string map that contains additional attributes used to describe the application.
  /// [name] Name of the image being searched for. Cannot be used with `name_regex` or `arn`.
  /// [platforms] Array of strings describing the platforms on which the application can run.
  /// [workingDirectory] Working directory for the application.
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
    return <String, dynamic>{
      'appBlockArn': appBlockArn,
      'arn': arn,
      'createdTime': createdTime,
      'description': description,
      'displayName': displayName,
      'enabled': enabled,
      'iconS3Locations': pulumi.Input.mapInputValue<List<GetImageApplicationIconS3Location>, List<Map<String, dynamic>>>(iconS3Locations, (value) => pulumi.Input.encodeList<GetImageApplicationIconS3Location, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iconUrl': iconUrl,
      'instanceFamilies': instanceFamilies,
      'launchParameters': launchParameters,
      'launchPath': launchPath,
      'metadata': metadata,
      'name': name,
      'platforms': platforms,
      'workingDirectory': workingDirectory,
    };
  }

  factory GetImageApplication.fromMap(Map<String, dynamic> map) {
    return GetImageApplication(
      appBlockArn: pulumi.Input.fromValue(map['appBlockArn'] as String),
      arn: pulumi.Input.fromValue(map['arn'] as String),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      iconS3Locations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImageApplicationIconS3Location>(map['iconS3Locations']!, (value) => GetImageApplicationIconS3Location.fromMap((value as Map).cast<String, dynamic>()))),
      iconUrl: pulumi.Input.fromValue(map['iconUrl'] as String),
      instanceFamilies: pulumi.Input.fromValue((map['instanceFamilies'] as List).cast<String>()),
      launchParameters: pulumi.Input.fromValue(map['launchParameters'] as String),
      launchPath: pulumi.Input.fromValue(map['launchPath'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      platforms: pulumi.Input.fromValue((map['platforms'] as List).cast<String>()),
      workingDirectory: pulumi.Input.fromValue(map['workingDirectory'] as String),
    );
  }
}

