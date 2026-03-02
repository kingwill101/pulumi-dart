// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Linked resource is reference to a resource deployed in an Azure subscription, add the linked resource `uniqueName` value as an optional parameter for operations on Azure Maps Geospatial REST APIs.
class LinkedResource {
  /// ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/accounts/{storageName}'.
  final pulumi.Input<String> id;
  /// A provided name which uniquely identifies the linked resource.
  final pulumi.Input<String> uniqueName;

  /// Creates a new [LinkedResource].
  /// [id] ARM resource id in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/accounts/{storageName}'.
  /// [uniqueName] A provided name which uniquely identifies the linked resource.
  LinkedResource({
    required this.id,
    required this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uniqueName': uniqueName,
    };
  }

  factory LinkedResource.fromMap(Map<String, dynamic> map) {
    return LinkedResource(
      id: (map['id'] as String).input(),
      uniqueName: (map['uniqueName'] as String).input(),
    );
  }
}

