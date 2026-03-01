// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_spec_response.dart';
import 'tag_response.dart';

/// Definition of awsSageMakerApp
class AwsSageMakerAppPropertiesResponse {
  /// The Amazon Resource Name (ARN) of the app.
  final String? appArn;
  /// The name of the app.
  final String? appName;
  /// The type of app.
  final String? appType;
  /// The domain ID.
  final String? domainId;
  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
  final ResourceSpecResponse? resourceSpec;
  /// A list of tags to apply to the app.
  final List<TagResponse>? tags;
  /// The user profile name.
  final String? userProfileName;

  /// Creates a new [AwsSageMakerAppPropertiesResponse].
  /// [appArn] The Amazon Resource Name (ARN) of the app.
  /// [appName] The name of the app.
  /// [appType] The type of app.
  /// [domainId] The domain ID.
  /// [resourceSpec] The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
  /// [tags] A list of tags to apply to the app.
  /// [userProfileName] The user profile name.
  AwsSageMakerAppPropertiesResponse({
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
      'resourceSpec': ?resourceSpec == null ? null : resourceSpec!.toMap(),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'userProfileName': ?userProfileName,
    };
  }

  factory AwsSageMakerAppPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSageMakerAppPropertiesResponse(
      appArn: map['appArn'] == null ? null : map['appArn'] as String,
      appName: map['appName'] == null ? null : map['appName'] as String,
      appType: map['appType'] == null ? null : map['appType'] as String,
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      resourceSpec: map['resourceSpec'] == null ? null : ResourceSpecResponse.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      userProfileName: map['userProfileName'] == null ? null : map['userProfileName'] as String,
    );
  }
}

