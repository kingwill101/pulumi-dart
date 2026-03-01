// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_router_interface_router_interface_args_doc}
/// The set of arguments for RouterInterface.
/// {@endtemplate}
/// {@macro pulumi_networking_router_interface_router_interface_args_doc}
class RouterInterfaceArgs {
  /// A boolean indicating whether the routes from the
  /// corresponding router ID should be deleted so that the router interface can
  /// be destroyed without any errors. The default value is `false`.
  final pulumi.Input<bool>? forceDestroy;
  /// ID of the port this interface connects to. Changing
  /// this creates a new router interface.
  final pulumi.Input<String>? portId;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a router. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// router interface.
  final pulumi.Input<String>? region;
  /// ID of the router this interface belongs to. Changing
  /// this creates a new router interface.
  final pulumi.Input<String> routerId;
  /// ID of the subnet this interface connects to. Changing
  /// this creates a new router interface.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [RouterInterfaceArgs].
  /// [forceDestroy] A boolean indicating whether the routes from the
  /// [portId] ID of the port this interface connects to. Changing
  /// [region] The region in which to obtain the V2 networking client.
  /// [routerId] ID of the router this interface belongs to. Changing
  /// [subnetId] ID of the subnet this interface connects to. Changing
  RouterInterfaceArgs({
    bool? forceDestroy,
    String? portId,
    String? region,
    required String routerId,
    String? subnetId,
  }) :
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      portId = pulumi.Input.asOptionalInput<String>(portId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routerId = pulumi.Input.asInput<String>(routerId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDestroy': ?forceDestroy,
      'portId': ?portId,
      'region': ?region,
      'routerId': routerId,
      'subnetId': ?subnetId,
    };
  }

  factory RouterInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceArgs(
      forceDestroy: map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      portId: map['portId'] == null ? null : map['portId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routerId: map['routerId'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

