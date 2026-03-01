// ignore_for_file: unused_element, unnecessary_cast


/// A DataFactory compute.
class DataFactory {
  /// Location for the underlying compute
  final String? computeLocation;
  /// The type of compute
  /// Expected value is 'DataFactory'.
  final String computeType;
  /// The description of the Machine Learning compute.
  final String? description;
  /// Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  final bool? disableLocalAuth;
  /// ARM resource id of the underlying compute
  final String? resourceId;

  /// Creates a new [DataFactory].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [resourceId] ARM resource id of the underlying compute
  DataFactory({
    this.computeLocation,
    required this.computeType,
    this.description,
    this.disableLocalAuth,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeLocation': ?computeLocation,
      'computeType': computeType,
      'description': ?description,
      'disableLocalAuth': ?disableLocalAuth,
      'resourceId': ?resourceId,
    };
  }

  factory DataFactory.fromMap(Map<String, dynamic> map) {
    return DataFactory(
      computeLocation: map['computeLocation'] == null ? null : map['computeLocation'] as String,
      computeType: map['computeType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

