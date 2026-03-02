// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteService resources.
class RouteServiceState {
  /// The region of the network instances that access the cloud services.
  final pulumi.Input<String>? accessRegionId;
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// The description of the cloud service.
  final pulumi.Input<String>? description;
  /// The domain name or IP address of the cloud service.
  final pulumi.Input<String>? host;
  /// The region of the cloud service.
  final pulumi.Input<String>? hostRegionId;
  /// The VPC associated with the cloud service.
  ///
  /// > **NOTE:** The values of `host_region_id` and `access_region_id` must be consistent.
  final pulumi.Input<String>? hostVpcId;
  /// The status of the cloud service.
  final pulumi.Input<String>? status;

  /// Creates a new [RouteServiceState].
  /// [accessRegionId] The region of the network instances that access the cloud services.
  /// [cenId] The ID of the CEN instance.
  /// [description] The description of the cloud service.
  /// [host] The domain name or IP address of the cloud service.
  /// [hostRegionId] The region of the cloud service.
  /// [hostVpcId] The VPC associated with the cloud service.
  /// [status] The status of the cloud service.
  RouteServiceState({
    this.accessRegionId,
    this.cenId,
    this.description,
    this.host,
    this.hostRegionId,
    this.hostVpcId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRegionId': ?accessRegionId,
      'cenId': ?cenId,
      'description': ?description,
      'host': ?host,
      'hostRegionId': ?hostRegionId,
      'hostVpcId': ?hostVpcId,
      'status': ?status,
    };
  }

  factory RouteServiceState.fromMap(Map<String, dynamic> map) {
    return RouteServiceState(
      accessRegionId: map['accessRegionId'] == null ? null : (map['accessRegionId'] as String).input(),
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      hostRegionId: map['hostRegionId'] == null ? null : (map['hostRegionId'] as String).input(),
      hostVpcId: map['hostVpcId'] == null ? null : (map['hostVpcId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

