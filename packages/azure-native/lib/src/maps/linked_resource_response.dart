// ignore_for_file: unused_element, unnecessary_cast


/// Linked resource is reference to a resource deployed in an Azure subscription, add the linked resource `uniqueName` value as an optional parameter for operations on Azure Maps Geospatial REST APIs.
class LinkedResourceResponse {
  /// ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/accounts/{storageName}'.
  final String id;
  /// A provided name which uniquely identifies the linked resource.
  final String uniqueName;

  /// Creates a new [LinkedResourceResponse].
  /// [id] ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/accounts/{storageName}'.
  /// [uniqueName] A provided name which uniquely identifies the linked resource.
  LinkedResourceResponse({
    required this.id,
    required this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uniqueName': uniqueName,
    };
  }

  factory LinkedResourceResponse.fromMap(Map<String, dynamic> map) {
    return LinkedResourceResponse(
      id: map['id'] as String,
      uniqueName: map['uniqueName'] as String,
    );
  }
}

