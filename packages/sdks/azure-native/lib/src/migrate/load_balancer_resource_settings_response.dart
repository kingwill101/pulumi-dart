// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lbbackend_address_pool_resource_settings_response.dart';
import 'lbfrontend_ipconfiguration_resource_settings_response.dart';

/// Defines the load balancer resource settings.
class LoadBalancerResourceSettingsResponse {
  /// Gets or sets the backend address pools of the load balancer.
  final pulumi.Input<List<LBBackendAddressPoolResourceSettingsResponse>>?
  backendAddressPools;

  /// Gets or sets the frontend IP configurations of the load balancer.
  final pulumi.Input<List<LBFrontendIPConfigurationResourceSettingsResponse>>?
  frontendIPConfigurations;

  /// The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// Expected value is 'Microsoft.Network/loadBalancers'.
  final pulumi.Input<String> resourceType;

  /// Gets or sets load balancer sku (Basic/Standard).
  final pulumi.Input<String>? sku;

  /// Gets or sets the Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Gets or sets the target resource group name.
  final pulumi.Input<String>? targetResourceGroupName;

  /// Gets or sets the target Resource name.
  final pulumi.Input<String>? targetResourceName;

  /// Gets or sets the csv list of zones common for all frontend IP configurations. Note this is given
  /// precedence only if frontend IP configurations settings are not present.
  final pulumi.Input<String>? zones;

  /// Creates a new [LoadBalancerResourceSettingsResponse].
  /// [backendAddressPools] Gets or sets the backend address pools of the load balancer.
  /// [frontendIPConfigurations] Gets or sets the frontend IP configurations of the load balancer.
  /// [resourceType] The resource type. For example, the value can be Microsoft.Compute/virtualMachines.
  /// [sku] Gets or sets load balancer sku (Basic/Standard).
  /// [tags] Gets or sets the Resource tags.
  /// [targetResourceGroupName] Gets or sets the target resource group name.
  /// [targetResourceName] Gets or sets the target Resource name.
  /// [zones] Gets or sets the csv list of zones common for all frontend IP configurations. Note this is given
  LoadBalancerResourceSettingsResponse({
    this.backendAddressPools,
    this.frontendIPConfigurations,
    required this.resourceType,
    this.sku,
    this.tags,
    this.targetResourceGroupName,
    this.targetResourceName,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<LBBackendAddressPoolResourceSettingsResponse>,
            List<Map<String, dynamic>>
          >(
            backendAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  LBBackendAddressPoolResourceSettingsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'frontendIPConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<LBFrontendIPConfigurationResourceSettingsResponse>,
            List<Map<String, dynamic>>
          >(
            frontendIPConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  LBFrontendIPConfigurationResourceSettingsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceType': resourceType,
      'sku': ?sku,
      'tags': ?tags,
      'targetResourceGroupName': ?targetResourceGroupName,
      'targetResourceName': ?targetResourceName,
      'zones': ?zones,
    };
  }

  factory LoadBalancerResourceSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerResourceSettingsResponse(
      backendAddressPools: (() {
        final guardedValue = map['backendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LBBackendAddressPoolResourceSettingsResponse>(
            guardedValue,
            (value) => LBBackendAddressPoolResourceSettingsResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      frontendIPConfigurations: (() {
        final guardedValue = map['frontendIPConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            LBFrontendIPConfigurationResourceSettingsResponse
          >(
            guardedValue,
            (value) =>
                LBFrontendIPConfigurationResourceSettingsResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetResourceGroupName: (() {
        final guardedValue = map['targetResourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetResourceName: (() {
        final guardedValue = map['targetResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
