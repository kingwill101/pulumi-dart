// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_route_timeouts.dart';

/// Input properties used for looking up and filtering IpRoute resources.
class IpRouteState {
  /// IPv4 CIDR block, such as `10.0.0.0/24`. For a single address, use a `/32` block, such as `10.0.0.0/32`. Exactly one of `cidrIp` or `cidrIpv6` must be set. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? cidrIp;
  /// IPv6 CIDR block, such as `2001:db8::/64`. For a single address, use a `/128` block. Exactly one of `cidrIp` or `cidrIpv6` must be set. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? cidrIpv6;
  /// Description of the address block. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? description;
  /// Identifier of the directory to which to add the IP route. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? directoryId;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<IpRouteTimeouts?>? timeouts;
  /// Whether to update the inbound and outbound rules of the security group for the directory controllers. Changing this forces a new resource to be created. Defaults to `false`.
  final pulumi.Input<bool?>? updateSecurityGroupForDirectoryControllers;

  /// Creates a new [IpRouteState].
  /// [cidrIp] IPv4 CIDR block, such as `10.0.0.0/24`. For a single address, use a `/32` block, such as `10.0.0.0/32`. Exactly one of `cidrIp` or `cidrIpv6` must be set. Changing this forces a new resource to be created.
  /// [cidrIpv6] IPv6 CIDR block, such as `2001:db8::/64`. For a single address, use a `/128` block. Exactly one of `cidrIp` or `cidrIpv6` must be set. Changing this forces a new resource to be created.
  /// [description] Description of the address block. Changing this forces a new resource to be created.
  /// [directoryId] Identifier of the directory to which to add the IP route. Changing this forces a new resource to be created.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [updateSecurityGroupForDirectoryControllers] Whether to update the inbound and outbound rules of the security group for the directory controllers. Changing this forces a new resource to be created. Defaults to `false`.
  const IpRouteState({
    this.cidrIp,
    this.cidrIpv6,
    this.description,
    this.directoryId,
    this.region,
    this.timeouts,
    this.updateSecurityGroupForDirectoryControllers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': ?cidrIp,
      'cidrIpv6': ?cidrIpv6,
      'description': ?description,
      'directoryId': ?directoryId,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IpRouteTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updateSecurityGroupForDirectoryControllers': ?updateSecurityGroupForDirectoryControllers,
    };
  }

  factory IpRouteState.fromMap(Map<String, dynamic> map) {
    return IpRouteState(
      cidrIp: (() { final guardedValue = map['cidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrIpv6: (() { final guardedValue = map['cidrIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpRouteTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateSecurityGroupForDirectoryControllers: (() { final guardedValue = map['updateSecurityGroupForDirectoryControllers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
