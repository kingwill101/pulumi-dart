// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_response.dart';

/// IP configuration profile child resource.
class IPConfigurationProfileResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the IP configuration profile resource.
  final String provisioningState;
  /// The reference to the subnet resource to create a container network interface ip configuration.
  final SubnetResponse? subnet;
  /// Sub Resource type.
  final String type;

  /// Creates a new [IPConfigurationProfileResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the IP configuration profile resource.
  /// [subnet] The reference to the subnet resource to create a container network interface ip configuration.
  /// [type] Sub Resource type.
  IPConfigurationProfileResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': type,
    };
  }

  factory IPConfigurationProfileResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationProfileResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      subnet: map['subnet'] == null ? null : SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

