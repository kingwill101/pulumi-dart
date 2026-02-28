// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_application.dart';
import 'get_image_image_permission.dart';
import 'get_image_state_change_reason.dart';

/// Result data returned by getImage.
class GetImageResult {
  final List<GetImageApplication> applications;

  /// Version of the AppStream 2.0 agent to use for instances that are launched from this image. Has a maximum length of 100 characters.
  final String appstreamAgentVersion;

  /// ARN of the image.
  final String arn;

  /// ARN of the image from which the image was created.
  final String baseImageArn;

  /// Time at which this image was created.
  final String createdTime;

  /// Description of image.
  final String description;

  /// Image name to display.
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The name of the image builder that was used to created the private image. If the image is sharedthen the value is null.
  final String imageBuilderName;

  /// Boolean to indicate whether an image builder can be launched from this image.
  /// * `image error` - Resource error object that describes the error containing the following:
  final bool imageBuilderSupported;

  /// List of strings describing the image permissions containing the following:
  final List<GetImageImagePermission> imagePermissions;
  final bool? mostRecent;
  final String name;
  final String? nameRegex;

  /// Operating system platform of the image. Values will be from: WINDOWS | WINDOWS_SERVER_2016 | WINDOWS_SERVER_2019 | WINDOWS_SERVER_2022 | AMAZON_LINUX2
  final String platform;
  final String publicBaseImageReleasedDate;
  final String region;

  /// Current state of image. Image starts in PENDING state which changes to AVAILABLE if creation passes and FAILED if it fails. Values will be from: PENDING | AVAILABLE | FAILED | COPYING | DELETING | CREATING | IMPORTING.
  final String state;
  final List<GetImageStateChangeReason> stateChangeReasons;
  final String? type;

  /// Creates a new [GetImageResult].
  /// [applications] Required.
  /// [appstreamAgentVersion] Version of the AppStream 2.0 agent to use for instances that are launched from this image. Has a maximum length of 100 characters.
  /// [arn] ARN of the image.
  /// [baseImageArn] ARN of the image from which the image was created.
  /// [createdTime] Time at which this image was created.
  /// [description] Description of image.
  /// [displayName] Image name to display.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageBuilderName] The name of the image builder that was used to created the private image. If the image is sharedthen the value is null.
  /// [imageBuilderSupported] Boolean to indicate whether an image builder can be launched from this image.
  /// [imagePermissions] List of strings describing the image permissions containing the following:
  /// [mostRecent] Optional.
  /// [name] Required.
  /// [nameRegex] Optional.
  /// [platform] Operating system platform of the image. Values will be from: WINDOWS | WINDOWS_SERVER_2016 | WINDOWS_SERVER_2019 | WINDOWS_SERVER_2022 | AMAZON_LINUX2
  /// [publicBaseImageReleasedDate] Required.
  /// [region] Required.
  /// [state] Current state of image. Image starts in PENDING state which changes to AVAILABLE if creation passes and FAILED if it fails. Values will be from: PENDING | AVAILABLE | FAILED | COPYING | DELETING | CREATING | IMPORTING.
  /// [stateChangeReasons] Required.
  /// [type] Optional.
  GetImageResult({
    required this.applications,
    required this.appstreamAgentVersion,
    required this.arn,
    required this.baseImageArn,
    required this.createdTime,
    required this.description,
    required this.displayName,
    required this.id,
    required this.imageBuilderName,
    required this.imageBuilderSupported,
    required this.imagePermissions,
    this.mostRecent,
    required this.name,
    this.nameRegex,
    required this.platform,
    required this.publicBaseImageReleasedDate,
    required this.region,
    required this.state,
    required this.stateChangeReasons,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applications'] =
        pulumi.Input.encodeList<GetImageApplication, Map<String, dynamic>>(
            applications, (value) => value.toMap());
    map['appstreamAgentVersion'] = appstreamAgentVersion;
    map['arn'] = arn;
    map['baseImageArn'] = baseImageArn;
    map['createdTime'] = createdTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['id'] = id;
    map['imageBuilderName'] = imageBuilderName;
    map['imageBuilderSupported'] = imageBuilderSupported;
    map['imagePermissions'] =
        pulumi.Input.encodeList<GetImageImagePermission, Map<String, dynamic>>(
            imagePermissions, (value) => value.toMap());
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    map['name'] = name;
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    map['platform'] = platform;
    map['publicBaseImageReleasedDate'] = publicBaseImageReleasedDate;
    map['region'] = region;
    map['state'] = state;
    map['stateChangeReasons'] = pulumi.Input.encodeList<
        GetImageStateChangeReason,
        Map<String, dynamic>>(stateChangeReasons, (value) => value.toMap());
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      applications: pulumi.Input.decodeList<GetImageApplication>(
          map['applications'],
          (value) => GetImageApplication.fromMap(
              (value as Map).cast<String, dynamic>())),
      appstreamAgentVersion: map['appstreamAgentVersion'] as String,
      arn: map['arn'] as String,
      baseImageArn: map['baseImageArn'] as String,
      createdTime: map['createdTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      imageBuilderName: map['imageBuilderName'] as String,
      imageBuilderSupported: map['imageBuilderSupported'] as bool,
      imagePermissions: pulumi.Input.decodeList<GetImageImagePermission>(
          map['imagePermissions'],
          (value) => GetImageImagePermission.fromMap(
              (value as Map).cast<String, dynamic>())),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      platform: map['platform'] as String,
      publicBaseImageReleasedDate: map['publicBaseImageReleasedDate'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      stateChangeReasons: pulumi.Input.decodeList<GetImageStateChangeReason>(
          map['stateChangeReasons'],
          (value) => GetImageStateChangeReason.fromMap(
              (value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
