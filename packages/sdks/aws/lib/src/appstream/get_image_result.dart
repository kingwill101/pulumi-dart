// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_application.dart';
import 'get_image_image_permission.dart';
import 'get_image_state_change_reason.dart';

/// Result data returned by getImage.
class GetImageResult {
  /// Application object that contains the following:
  final List<GetImageApplication>? applications;
  /// Version of the AppStream 2.0 agent to use for instances that are launched from this image. Has a maximum length of 100 characters.
  final String? appstreamAgentVersion;
  /// ARN of the image.
  final String? arn;
  /// ARN of the image from which the image was created.
  final String? baseImageArn;
  /// Time at which this image was created.
  final String? createdTime;
  /// Description of image.
  final String? description;
  /// Image name to display.
  final String? displayName;
  /// Name of the image builder that was used to created the private image. If the image is shared then the value is null.
  final String? imageBuilderName;
  /// Whether an image builder can be launched from this image.
  final bool? imageBuilderSupported;
  /// List of objects describing the image permissions containing the following:
  final List<GetImageImagePermission>? imagePermissions;
  final bool? mostRecent;
  /// Name of the application.
  final String? name;
  final String? nameRegex;
  /// Operating system platform of the image. Values will be from: WINDOWS | WINDOWS_SERVER_2016 | WINDOWS_SERVER_2019 | WINDOWS_SERVER_2022 | AMAZON_LINUX2
  final String? platform;
  /// Release date of base image if public. For private images, it is the release date of the base image that it was created from.
  final String? publicBaseImageReleasedDate;
  final String? region;
  /// Current state of image. Image starts in PENDING state which changes to AVAILABLE if creation passes and FAILED if it fails. Values will be from: PENDING | AVAILABLE | FAILED | COPYING | DELETING | CREATING | IMPORTING.
  final String? state;
  /// Reason for the last state change.
  final List<GetImageStateChangeReason>? stateChangeReasons;
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
  /// [region] Optional.
  /// [state] Current state of image. Image starts in PENDING state which changes to AVAILABLE if creation passes and FAILED if it fails. Values will be from: PENDING | AVAILABLE | FAILED | COPYING | DELETING | CREATING | IMPORTING.
  /// [stateChangeReasons] Reason for the last state change.
  /// [type] Optional.
  const GetImageResult({
    this.applications,
    this.appstreamAgentVersion,
    this.arn,
    this.baseImageArn,
    this.createdTime,
    this.description,
    this.displayName,
    this.imageBuilderName,
    this.imageBuilderSupported,
    this.imagePermissions,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.platform,
    this.publicBaseImageReleasedDate,
    this.region,
    this.state,
    this.stateChangeReasons,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': ?(() { final guardedValue = applications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageApplication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'appstreamAgentVersion': ?appstreamAgentVersion,
      'arn': ?arn,
      'baseImageArn': ?baseImageArn,
      'createdTime': ?createdTime,
      'description': ?description,
      'displayName': ?displayName,
      'imageBuilderName': ?imageBuilderName,
      'imageBuilderSupported': ?imageBuilderSupported,
      'imagePermissions': ?(() { final guardedValue = imagePermissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageImagePermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'platform': ?platform,
      'publicBaseImageReleasedDate': ?publicBaseImageReleasedDate,
      'region': ?region,
      'state': ?state,
      'stateChangeReasons': ?(() { final guardedValue = stateChangeReasons; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageStateChangeReason, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      applications: (() { final guardedValue = map['applications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageApplication>(guardedValue, (value) => GetImageApplication.fromMap((value as Map).cast<String, dynamic>())); })(),
      appstreamAgentVersion: (() { final guardedValue = map['appstreamAgentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      baseImageArn: (() { final guardedValue = map['baseImageArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageBuilderName: (() { final guardedValue = map['imageBuilderName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageBuilderSupported: (() { final guardedValue = map['imageBuilderSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      imagePermissions: (() { final guardedValue = map['imagePermissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageImagePermission>(guardedValue, (value) => GetImageImagePermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicBaseImageReleasedDate: (() { final guardedValue = map['publicBaseImageReleasedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateChangeReasons: (() { final guardedValue = map['stateChangeReasons']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageStateChangeReason>(guardedValue, (value) => GetImageStateChangeReason.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
