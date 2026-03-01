// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAttachedNetwork.
class GetAttachedNetworkResult {
  final String devCenterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The ID of the attached Dev Center Network Connection.
  final String networkConnectionId;

  /// Creates a new [GetAttachedNetworkResult].
  /// [devCenterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [networkConnectionId] The ID of the attached Dev Center Network Connection.
  GetAttachedNetworkResult({
    required this.devCenterId,
    required this.id,
    required this.name,
    required this.networkConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'id': id,
      'name': name,
      'networkConnectionId': networkConnectionId,
    };
  }

  factory GetAttachedNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedNetworkResult(
      devCenterId: map['devCenterId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      networkConnectionId: map['networkConnectionId'] as String,
    );
  }
}

