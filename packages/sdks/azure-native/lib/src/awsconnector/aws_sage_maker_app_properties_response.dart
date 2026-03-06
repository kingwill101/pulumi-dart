// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_spec_response.dart';
import 'tag_response.dart';

/// Definition of awsSageMakerApp
class AwsSageMakerAppPropertiesResponse {
  /// The Amazon Resource Name (ARN) of the app.
  final pulumi.Input<String>? appArn;
  /// The name of the app.
  final pulumi.Input<String>? appName;
  /// The type of app.
  final pulumi.Input<String>? appType;
  /// The domain ID.
  final pulumi.Input<String>? domainId;
  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
  final pulumi.Input<ResourceSpecResponse>? resourceSpec;
  /// A list of tags to apply to the app.
  final pulumi.Input<List<TagResponse>>? tags;
  /// The user profile name.
  final pulumi.Input<String>? userProfileName;

  /// Creates a new [AwsSageMakerAppPropertiesResponse].
  /// [appArn] The Amazon Resource Name (ARN) of the app.
  /// [appName] The name of the app.
  /// [appType] The type of app.
  /// [domainId] The domain ID.
  /// [resourceSpec] The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
  /// [tags] A list of tags to apply to the app.
  /// [userProfileName] The user profile name.
  const AwsSageMakerAppPropertiesResponse({
    this.appArn,
    this.appName,
    this.appType,
    this.domainId,
    this.resourceSpec,
    this.tags,
    this.userProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appArn': ?appArn,
      'appName': ?appName,
      'appType': ?appType,
      'domainId': ?domainId,
      'resourceSpec': ?pulumi.Input.mapOptionalInputValue<ResourceSpecResponse, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userProfileName': ?userProfileName,
    };
  }

  factory AwsSageMakerAppPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSageMakerAppPropertiesResponse(
      appArn: (() { final guardedValue = map['appArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appType: (() { final guardedValue = map['appType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceSpec: (() { final guardedValue = map['resourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userProfileName: (() { final guardedValue = map['userProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

