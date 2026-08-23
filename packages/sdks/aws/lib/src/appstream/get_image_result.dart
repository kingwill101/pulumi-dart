// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_application.dart';
import 'get_image_image_permission.dart';
import 'get_image_state_change_reason.dart';

/// Result data returned by getImage.
class GetImageResult {
  /// Application object that contains the following:
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
  /// Name of the image builder that was used to created the private image. If the image is shared then the value is null.
  final String imageBuilderName;
  /// Whether an image builder can be launched from this image.
  final bool imageBuilderSupported;
  /// List of objects describing the image permissions containing the following:
  final List<GetImageImagePermission> imagePermissions;
  final bool? mostRecent;
  /// Name of the application.
  final String name;
  final String? nameRegex;
  /// Operating system platform of the image. Values will be from: WINDOWS | WINDOWS_SERVER_2016 | WINDOWS_SERVER_2019 | WINDOWS_SERVER_2022 | AMAZON_LINUX2
  final String platform;
  /// Release date of base image if public. For private images, it is the release date of the base image that it was created from.
  final String publicBaseImageReleasedDate;
  final String region;
  /// Current state of image. Image starts in PENDING state which changes to AVAILABLE if creation passes and FAILED if it fails. Values will be from: PENDING | AVAILABLE | FAILED | COPYING | DELETING | CREATING | IMPORTING.
  final String state;
  /// Reason for the last state change.
  final List<GetImageStateChangeReason> stateChangeReasons;
  final String? type;

  /// Creates a new [GetImageResult].
  /// [applications] Application object that contains the following:
  /// [appstreamAgentVersion] Version of the AppStream 2.0 agent to use for instances that are launched from this image. Has a maximum length of 100 characters.
  /// [arn] ARN of the image.
  /// [baseImageArn] ARN of the image from which the image was created.
  /// [createdTime] Time at which this image was created.
  /// [description] Description of image.
  /// [displayName] Image name to display.
  /// [imageBuilderName] Name of the image builder that was used to created the private image. If the image is shared then the value is null.
  /// [imageBuilderSupported] Whether an image builder can be launched from this image.
  /// [imagePermissions] List of objects describing the image permissions containing the following:
  /// [mostRecent] Optional.
  /// [name] Name of the application.
  /// [nameRegex] Optional.
  /// [platform] Operating system platform of the image. Values will be from: WINDOWS | WINDOWS_SERVER_2016 | WINDOWS_SERVER_2019 | WINDOWS_SERVER_2022 | AMAZON_LINUX2
  /// [publicBaseImageReleasedDate] Release date of base image if public. For private images, it is the release date of the base image that it was created from.
  /// [region] Required.
  /// [state] Current state of image. Image starts in PENDING state which changes to AVAILABLE if creation passes and FAILED if it fails. Values will be from: PENDING | AVAILABLE | FAILED | COPYING | DELETING | CREATING | IMPORTING.
  /// [stateChangeReasons] Reason for the last state change.
  /// [type] Optional.
  const GetImageResult({
    required this.applications,
    required this.appstreamAgentVersion,
    required this.arn,
    required this.baseImageArn,
    required this.createdTime,
    required this.description,
    required this.displayName,
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
    return <String, dynamic>{
      'applications': pulumi.Input.encodeList<GetImageApplication, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'appstreamAgentVersion': appstreamAgentVersion,
      'arn': arn,
      'baseImageArn': baseImageArn,
      'createdTime': createdTime,
      'description': description,
      'displayName': displayName,
      'imageBuilderName': imageBuilderName,
      'imageBuilderSupported': imageBuilderSupported,
      'imagePermissions': pulumi.Input.encodeList<GetImageImagePermission, Map<String, dynamic>>(imagePermissions, (value) => value.toMap()),
      'mostRecent': ?mostRecent,
      'name': name,
      'nameRegex': ?nameRegex,
      'platform': platform,
      'publicBaseImageReleasedDate': publicBaseImageReleasedDate,
      'region': region,
      'state': state,
      'stateChangeReasons': pulumi.Input.encodeList<GetImageStateChangeReason, Map<String, dynamic>>(stateChangeReasons, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      applications: pulumi.Input.decodeList<GetImageApplication>(map['applications']!, (value) => GetImageApplication.fromMap((value as Map).cast<String, dynamic>())),
      appstreamAgentVersion: map['appstreamAgentVersion'] as String,
      arn: map['arn'] as String,
      baseImageArn: map['baseImageArn'] as String,
      createdTime: map['createdTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      imageBuilderName: map['imageBuilderName'] as String,
      imageBuilderSupported: map['imageBuilderSupported'] as bool,
      imagePermissions: pulumi.Input.decodeList<GetImageImagePermission>(map['imagePermissions']!, (value) => GetImageImagePermission.fromMap((value as Map).cast<String, dynamic>())),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platform: map['platform'] as String,
      publicBaseImageReleasedDate: map['publicBaseImageReleasedDate'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      stateChangeReasons: pulumi.Input.decodeList<GetImageStateChangeReason>(map['stateChangeReasons']!, (value) => GetImageStateChangeReason.fromMap((value as Map).cast<String, dynamic>())),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
