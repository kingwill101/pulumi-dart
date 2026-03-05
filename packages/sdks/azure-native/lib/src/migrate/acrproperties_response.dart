// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class for ACR Properties.
class ACRPropertiesResponse {
  /// Gets or sets the azure container registry name.
  final pulumi.Input<String>? registryName;
  /// Gets or sets the resource group of the resource.
  final pulumi.Input<String>? resourceGroup;
  /// Gets or sets the subscription id of the resource.
  final pulumi.Input<String>? subscriptionId;
  /// Gets or sets the tenant id.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ACRPropertiesResponse].
  /// [registryName] Gets or sets the azure container registry name.
  /// [resourceGroup] Gets or sets the resource group of the resource.
  /// [subscriptionId] Gets or sets the subscription id of the resource.
  /// [tenantId] Gets or sets the tenant id.
  ACRPropertiesResponse({
    this.registryName,
    this.resourceGroup,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': ?registryName,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory ACRPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ACRPropertiesResponse(
      registryName: (() { final guardedValue = map['registryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

