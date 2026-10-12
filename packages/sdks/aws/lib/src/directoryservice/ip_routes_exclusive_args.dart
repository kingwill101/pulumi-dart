// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_routes_exclusive_ip_route.dart';
import 'ip_routes_exclusive_timeouts.dart';

/// {@template pulumi_directoryservice_ip_routes_exclusive_ip_routes_exclusive_args_doc}
/// The set of arguments for IpRoutesExclusive.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_ip_routes_exclusive_ip_routes_exclusive_args_doc}
class IpRoutesExclusiveArgs {
  /// Identifier of the directory. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> directoryId;
  /// Set of IP routes the directory should have. Omit all `ipRoute` blocks to remove every IP route from the directory. See `ipRoute` Block below.
  final pulumi.Input<List<IpRoutesExclusiveIpRoute>?>? ipRoutes;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<IpRoutesExclusiveTimeouts?>? timeouts;
  /// Whether to update the inbound and outbound rules of the security group for the directory controllers when adding IP routes. Applies only to IP routes added by this resource. Defaults to `false`.
  final pulumi.Input<bool?>? updateSecurityGroupForDirectoryControllers;

  /// Creates a new [IpRoutesExclusiveArgs].
  /// [directoryId] Identifier of the directory. Changing this forces a new resource to be created.
  /// [ipRoutes] Set of IP routes the directory should have. Omit all `ipRoute` blocks to remove every IP route from the directory. See `ipRoute` Block below.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [updateSecurityGroupForDirectoryControllers] Whether to update the inbound and outbound rules of the security group for the directory controllers when adding IP routes. Applies only to IP routes added by this resource. Defaults to `false`.
  const IpRoutesExclusiveArgs({
    required this.directoryId,
    this.ipRoutes,
    this.region,
    this.timeouts,
    this.updateSecurityGroupForDirectoryControllers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'ipRoutes': ?pulumi.Input.mapOptionalInputValue<List<IpRoutesExclusiveIpRoute>, List<Map<String, dynamic>>>(ipRoutes, (value) => pulumi.Input.encodeList<IpRoutesExclusiveIpRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IpRoutesExclusiveTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updateSecurityGroupForDirectoryControllers': ?updateSecurityGroupForDirectoryControllers,
    };
  }

  factory IpRoutesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return IpRoutesExclusiveArgs(
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      ipRoutes: (() { final guardedValue = map['ipRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpRoutesExclusiveIpRoute>(guardedValue, (value) => IpRoutesExclusiveIpRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpRoutesExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateSecurityGroupForDirectoryControllers: (() { final guardedValue = map['updateSecurityGroupForDirectoryControllers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
