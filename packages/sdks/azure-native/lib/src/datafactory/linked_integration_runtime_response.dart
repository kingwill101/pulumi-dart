// ignore_for_file: unused_element, unnecessary_cast


/// The linked integration runtime information.
class LinkedIntegrationRuntimeResponse {
  /// The creating time of the linked integration runtime.
  final String createTime;
  /// The location of the data factory for which the linked integration runtime belong to.
  final String dataFactoryLocation;
  /// The name of the data factory for which the linked integration runtime belong to.
  final String dataFactoryName;
  /// The name of the linked integration runtime.
  final String name;
  /// The subscription ID for which the linked integration runtime belong to.
  final String subscriptionId;

  /// Creates a new [LinkedIntegrationRuntimeResponse].
  /// [createTime] The creating time of the linked integration runtime.
  /// [dataFactoryLocation] The location of the data factory for which the linked integration runtime belong to.
  /// [dataFactoryName] The name of the data factory for which the linked integration runtime belong to.
  /// [name] The name of the linked integration runtime.
  /// [subscriptionId] The subscription ID for which the linked integration runtime belong to.
  LinkedIntegrationRuntimeResponse({
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
      createTime: map['createTime'] as String,
      dataFactoryLocation: map['dataFactoryLocation'] as String,
      dataFactoryName: map['dataFactoryName'] as String,
      name: map['name'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

