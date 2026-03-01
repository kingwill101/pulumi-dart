// ignore_for_file: unused_element, unnecessary_cast


/// Class for ACR Properties.
class ACRProperties {
  /// Gets or sets the azure container registry name.
  final String? registryName;
  /// Gets or sets the resource group of the resource.
  final String? resourceGroup;
  /// Gets or sets the subscription id of the resource.
  final String? subscriptionId;
  /// Gets or sets the tenant id.
  final String? tenantId;

  /// Creates a new [ACRProperties].
  /// [registryName] Gets or sets the azure container registry name.
  /// [resourceGroup] Gets or sets the resource group of the resource.
  /// [subscriptionId] Gets or sets the subscription id of the resource.
  /// [tenantId] Gets or sets the tenant id.
  ACRProperties({
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

  factory ACRProperties.fromMap(Map<String, dynamic> map) {
    return ACRProperties(
      registryName: map['registryName'] == null ? null : map['registryName'] as String,
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

