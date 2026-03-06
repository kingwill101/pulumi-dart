// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The linked integration runtime information.
class LinkedIntegrationRuntimeResponse {
  /// The creating time of the linked integration runtime.
  final pulumi.Input<String> createTime;
  /// The location of the data factory for which the linked integration runtime belong to.
  final pulumi.Input<String> dataFactoryLocation;
  /// The name of the data factory for which the linked integration runtime belong to.
  final pulumi.Input<String> dataFactoryName;
  /// The name of the linked integration runtime.
  final pulumi.Input<String> name;
  /// The subscription ID for which the linked integration runtime belong to.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [LinkedIntegrationRuntimeResponse].
  /// [createTime] The creating time of the linked integration runtime.
  /// [dataFactoryLocation] The location of the data factory for which the linked integration runtime belong to.
  /// [dataFactoryName] The name of the data factory for which the linked integration runtime belong to.
  /// [name] The name of the linked integration runtime.
  /// [subscriptionId] The subscription ID for which the linked integration runtime belong to.
  const LinkedIntegrationRuntimeResponse({
    required this.createTime,
    required this.dataFactoryLocation,
    required this.dataFactoryName,
    required this.name,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataFactoryLocation': dataFactoryLocation,
      'dataFactoryName': dataFactoryName,
      'name': name,
      'subscriptionId': subscriptionId,
    };
  }

  factory LinkedIntegrationRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return LinkedIntegrationRuntimeResponse(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataFactoryLocation: pulumi.Input.fromValue(map['dataFactoryLocation'] as String),
      dataFactoryName: pulumi.Input.fromValue(map['dataFactoryName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

