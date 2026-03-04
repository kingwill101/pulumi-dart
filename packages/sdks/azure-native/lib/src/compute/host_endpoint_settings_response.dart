// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies particular host endpoint settings.
class HostEndpointSettingsResponse {
  /// Specifies the InVMAccessControlProfileVersion resource id in the format of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/inVMAccessControlProfiles/{profile}/versions/{version}
  final pulumi.Input<String>? inVMAccessControlProfileReferenceId;

  /// Specifies the execution mode. In Audit mode, the system acts as if it is enforcing the access control policy, including emitting access denial entries in the logs but it does not actually deny any requests to host endpoints. In Enforce mode, the system will enforce the access control and it is the recommended mode of operation.
  final pulumi.Input<String>? mode;

  /// Creates a new [HostEndpointSettingsResponse].
  /// [inVMAccessControlProfileReferenceId] Specifies the InVMAccessControlProfileVersion resource id in the format of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/inVMAccessControlProfiles/{profile}/versions/{version}
  /// [mode] Specifies the execution mode. In Audit mode, the system acts as if it is enforcing the access control policy, including emitting access denial entries in the logs but it does not actually deny any requests to host endpoints. In Enforce mode, the system will enforce the access control and it is the recommended mode of operation.
  HostEndpointSettingsResponse({
    this.inVMAccessControlProfileReferenceId,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inVMAccessControlProfileReferenceId':
          ?inVMAccessControlProfileReferenceId,
      'mode': ?mode,
    };
  }

  factory HostEndpointSettingsResponse.fromMap(Map<String, dynamic> map) {
    return HostEndpointSettingsResponse(
      inVMAccessControlProfileReferenceId: (() {
        final guardedValue = map['inVMAccessControlProfileReferenceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
