// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_spec.dart';
import 'tag.dart';

/// Definition of awsSageMakerApp
class AwsSageMakerAppProperties {
  /// The Amazon Resource Name (ARN) of the app.
  final String? appArn;
  /// The name of the app.
  final String? appName;
  /// The type of app.
  final String? appType;
  /// The domain ID.
  final String? domainId;
  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
  final ResourceSpec? resourceSpec;
  /// A list of tags to apply to the app.
  final List<Tag>? tags;
  /// The user profile name.
  final String? userProfileName;

  /// Creates a new [AwsSageMakerAppProperties].
  /// [appArn] The Amazon Resource Name (ARN) of the app.
  /// [appName] The name of the app.
  /// [appType] The type of app.
  /// [domainId] The domain ID.
  /// [resourceSpec] The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
  /// [tags] A list of tags to apply to the app.
  /// [userProfileName] The user profile name.
  AwsSageMakerAppProperties({
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
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'userProfileName': ?userProfileName,
    };
  }

  factory AwsSageMakerAppProperties.fromMap(Map<String, dynamic> map) {
    return AwsSageMakerAppProperties(
      appArn: map['appArn'] == null ? null : map['appArn'] as String,
      appName: map['appName'] == null ? null : map['appName'] as String,
      appType: map['appType'] == null ? null : map['appType'] as String,
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      resourceSpec: map['resourceSpec'] == null ? null : ResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      userProfileName: map['userProfileName'] == null ? null : map['userProfileName'] as String,
    );
  }
}

