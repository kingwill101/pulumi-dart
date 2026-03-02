// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'failover_group_spec_response.dart';

/// The properties of a failover group resource.
class FailoverGroupPropertiesResponse {
  /// The resource ID of the partner SQL managed instance.
  final pulumi.Input<String> partnerManagedInstanceId;
  /// The provisioning state of the failover group resource.
  final pulumi.Input<String> provisioningState;
  /// The specifications of the failover group resource.
  final pulumi.Input<FailoverGroupSpecResponse> spec;
  /// The status of the failover group custom resource.
  final pulumi.Input<dynamic>? status;

  /// Creates a new [FailoverGroupPropertiesResponse].
  /// [partnerManagedInstanceId] The resource ID of the partner SQL managed instance.
  /// [provisioningState] The provisioning state of the failover group resource.
  /// [spec] The specifications of the failover group resource.
  /// [status] The status of the failover group custom resource.
  FailoverGroupPropertiesResponse({
    required this.partnerManagedInstanceId,
    required this.provisioningState,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerManagedInstanceId': partnerManagedInstanceId,
      'provisioningState': provisioningState,
      'spec': pulumi.Input.mapInputValue<FailoverGroupSpecResponse, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory FailoverGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FailoverGroupPropertiesResponse(
      partnerManagedInstanceId: (map['partnerManagedInstanceId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      spec: (FailoverGroupSpecResponse.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']!).input(),
    );
  }
}

