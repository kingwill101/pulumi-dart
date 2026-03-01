// ignore_for_file: unused_element, unnecessary_cast


/// Status of the Provisioning for the managed network of a machine learning workspace.
class ManagedNetworkProvisionStatus {
  final bool? sparkReady;
  /// Status for the managed network of a machine learning workspace.
  final String? status;

  /// Creates a new [ManagedNetworkProvisionStatus].
  /// [sparkReady] Optional.
  /// [status] Status for the managed network of a machine learning workspace.
  ManagedNetworkProvisionStatus({
    this.sparkReady,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sparkReady': ?sparkReady,
      'status': ?status,
    };
  }

  factory ManagedNetworkProvisionStatus.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkProvisionStatus(
      sparkReady: map['sparkReady'] == null ? null : map['sparkReady'] as bool,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

