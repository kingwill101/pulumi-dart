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
    pulumi.Output<String>? accessRegionId,
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? host,
    pulumi.Output<String>? hostRegionId,
    pulumi.Output<String>? hostVpcId,
    pulumi.Output<String>? status,
  }) :
      accessRegionId = pulumi.Input.asOptionalInput<String>(accessRegionId),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      description = pulumi.Input.asOptionalInput<String>(description),
      host = pulumi.Input.asOptionalInput<String>(host),
      hostRegionId = pulumi.Input.asOptionalInput<String>(hostRegionId),
      hostVpcId = pulumi.Input.asOptionalInput<String>(hostVpcId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      accessRegionId: map['accessRegionId'] == null ? null : pulumi.Output.create<String>(map['accessRegionId'] as String),
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      hostRegionId: map['hostRegionId'] == null ? null : pulumi.Output.create<String>(map['hostRegionId'] as String),
      hostVpcId: map['hostVpcId'] == null ? null : pulumi.Output.create<String>(map['hostVpcId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

