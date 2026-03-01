// ignore_for_file: unused_element, unnecessary_cast


/// Status of the Provisioning for the managed network of a machine learning workspace.
class ManagedNetworkProvisionStatusResponse {
  final bool? sparkReady;
  /// Status for the managed network of a machine learning workspace.
  final String? status;

  /// Creates a new [ManagedNetworkProvisionStatusResponse].
  /// [sparkReady] Optional.
  /// [status] Status for the managed network of a machine learning workspace.
  ManagedNetworkProvisionStatusResponse({
    this.sparkReady,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sparkReady': ?sparkReady,
      'status': ?status,
    };
  }

  factory ManagedNetworkProvisionStatusResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkProvisionStatusResponse(
      sparkReady: map['sparkReady'] == null ? null : map['sparkReady'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

