// ignore_for_file: unused_element, unnecessary_cast


/// Specifies particular host endpoint settings.
class HostEndpointSettings {
  /// Specifies the InVMAccessControlProfileVersion resource id in the format of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/inVMAccessControlProfiles/{profile}/versions/{version}
  final String? inVMAccessControlProfileReferenceId;
  /// Specifies the execution mode. In Audit mode, the system acts as if it is enforcing the access control policy, including emitting access denial entries in the logs but it does not actually deny any requests to host endpoints. In Enforce mode, the system will enforce the access control and it is the recommended mode of operation.
  final String? mode;

  /// Creates a new [HostEndpointSettings].
  /// [inVMAccessControlProfileReferenceId] Specifies the InVMAccessControlProfileVersion resource id in the format of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/inVMAccessControlProfiles/{profile}/versions/{version}
  /// [mode] Specifies the execution mode. In Audit mode, the system acts as if it is enforcing the access control policy, including emitting access denial entries in the logs but it does not actually deny any requests to host endpoints. In Enforce mode, the system will enforce the access control and it is the recommended mode of operation.
  HostEndpointSettings({
    this.inVMAccessControlProfileReferenceId,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inVMAccessControlProfileReferenceId': ?inVMAccessControlProfileReferenceId,
      'mode': ?mode,
    };
  }

  factory HostEndpointSettings.fromMap(Map<String, dynamic> map) {
    return HostEndpointSettings(
      inVMAccessControlProfileReferenceId: map['inVMAccessControlProfileReferenceId'] == null ? null : map['inVMAccessControlProfileReferenceId'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

