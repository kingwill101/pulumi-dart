// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_spec.dart';
import 'tag.dart';

/// Definition of awsSageMakerApp
class AwsSageMakerAppProperties {
  /// The Amazon Resource Name (ARN) of the app.
  final pulumi.Input<String?>? appArn;
  /// The name of the app.
  final pulumi.Input<String?>? appName;
  /// The type of app.
  final pulumi.Input<dynamic>? appType;
  /// The domain ID.
  final pulumi.Input<String?>? domainId;
  /// The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
  final pulumi.Input<ResourceSpec?>? resourceSpec;
  /// A list of tags to apply to the app.
  final pulumi.Input<List<Tag>?>? tags;
  /// The user profile name.
  final pulumi.Input<String?>? userProfileName;

  /// Creates a new [AwsSageMakerAppProperties].
  /// [appArn] The Amazon Resource Name (ARN) of the app.
  /// [appName] The name of the app.
  /// [appType] The type of app.
  /// [domainId] The domain ID.
  /// [resourceSpec] The instance type and the Amazon Resource Name (ARN) of the SageMaker image created on the instance.
  /// [tags] A list of tags to apply to the app.
  /// [userProfileName] The user profile name.
  const AwsSageMakerAppProperties({
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
      'resourceSpec': ?pulumi.Input.mapOptionalInputValue<ResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userProfileName': ?userProfileName,
    };
  }

  factory AwsSageMakerAppProperties.fromMap(Map<String, dynamic> map) {
    return AwsSageMakerAppProperties(
      appArn: (() { final guardedValue = map['appArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appType: (() { final guardedValue = map['appType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceSpec: (() { final guardedValue = map['resourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userProfileName: (() { final guardedValue = map['userProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
