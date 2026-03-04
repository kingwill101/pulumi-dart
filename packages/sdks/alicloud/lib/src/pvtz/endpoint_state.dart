// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_ip_config.dart';

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// The name of the resource.
  final pulumi.Input<String>? endpointName;

  /// The Ip Configs. See `ip_configs` below. **NOTE:** In order to ensure high availability, add at least 2 and up to 6.
  final pulumi.Input<List<EndpointIpConfig>>? ipConfigs;

  /// The ID of the Security Group.
  final pulumi.Input<String>? securityGroupId;

  /// The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  final pulumi.Input<String>? status;

  /// The VPC ID.
  final pulumi.Input<String>? vpcId;

  /// The Region of the VPC.
  final pulumi.Input<String>? vpcRegionId;

  /// Creates a new [EndpointState].
  /// [endpointName] The name of the resource.
  /// [ipConfigs] The Ip Configs. See `ip_configs` below. **NOTE:** In order to ensure high availability, add at least 2 and up to 6.
  /// [securityGroupId] The ID of the Security Group.
  /// [status] The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  /// [vpcId] The VPC ID.
  /// [vpcRegionId] The Region of the VPC.
  EndpointState({
    this.endpointName,
    this.ipConfigs,
    this.securityGroupId,
    this.status,
    this.vpcId,
    this.vpcRegionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'ipConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointIpConfig>,
            List<Map<String, dynamic>>
          >(
            ipConfigs,
            (value) =>
                pulumi.Input.encodeList<EndpointIpConfig, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'vpcId': ?vpcId,
      'vpcRegionId': ?vpcRegionId,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      endpointName: (() {
        final guardedValue = map['endpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipConfigs: (() {
        final guardedValue = map['ipConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EndpointIpConfig>(
            guardedValue,
            (value) => EndpointIpConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      securityGroupId: (() {
        final guardedValue = map['securityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcRegionId: (() {
        final guardedValue = map['vpcRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
