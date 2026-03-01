// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'l2_connections_properties_edge_site.dart';
import 'l2_connections_properties_ground_station.dart';
import 'l2_connections_properties_ground_station_partner_router.dart';

/// {@template pulumi_orbital_l2_connection_args_doc}
/// The set of arguments for L2Connection.
/// {@endtemplate}
/// {@macro pulumi_orbital_l2_connection_args_doc}
class L2ConnectionArgs {
  /// A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
  final pulumi.Input<L2ConnectionsPropertiesEdgeSite> edgeSite;
  /// A reference to an Microsoft.Orbital/groundStations resource to route traffic for.
  final pulumi.Input<L2ConnectionsPropertiesGroundStation> groundStation;
  /// The name of the partner router to establish a connection to within the ground station.
  final pulumi.Input<L2ConnectionsPropertiesGroundStationPartnerRouter> groundStationPartnerRouter;
  /// L2 Connection name.
  final pulumi.Input<String>? l2ConnectionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The unique name of the partner router that cross-connects with the Orbital Edge Router at the edge site.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VLAN ID for the L2 connection.
  final pulumi.Input<int> vlanId;

  /// Creates a new [L2ConnectionArgs].
  /// [edgeSite] A reference to an Microsoft.Orbital/edgeSites resource to route traffic for.
  /// [groundStation] A reference to an Microsoft.Orbital/groundStations resource to route traffic for.
  /// [groundStationPartnerRouter] The name of the partner router to establish a connection to within the ground station.
  /// [l2ConnectionName] L2 Connection name.
  /// [location] The geo-location where the resource lives
  /// [name] The unique name of the partner router that cross-connects with the Orbital Edge Router at the edge site.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [vlanId] The VLAN ID for the L2 connection.
  L2ConnectionArgs({
    required L2ConnectionsPropertiesEdgeSite edgeSite,
    required L2ConnectionsPropertiesGroundStation groundStation,
    required L2ConnectionsPropertiesGroundStationPartnerRouter groundStationPartnerRouter,
    String? l2ConnectionName,
    String? location,
    required String name,
    required String resourceGroupName,
    Map<String, String>? tags,
    required int vlanId,
  }) :
      edgeSite = pulumi.Input.asInput<L2ConnectionsPropertiesEdgeSite>(edgeSite),
      groundStation = pulumi.Input.asInput<L2ConnectionsPropertiesGroundStation>(groundStation),
      groundStationPartnerRouter = pulumi.Input.asInput<L2ConnectionsPropertiesGroundStationPartnerRouter>(groundStationPartnerRouter),
      l2ConnectionName = pulumi.Input.asOptionalInput<String>(l2ConnectionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vlanId = pulumi.Input.asInput<int>(vlanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeSite': pulumi.Input.mapInputValue<L2ConnectionsPropertiesEdgeSite, Map<String, dynamic>>(edgeSite, (value) => value.toMap()),
      'groundStation': pulumi.Input.mapInputValue<L2ConnectionsPropertiesGroundStation, Map<String, dynamic>>(groundStation, (value) => value.toMap()),
      'groundStationPartnerRouter': pulumi.Input.mapInputValue<L2ConnectionsPropertiesGroundStationPartnerRouter, Map<String, dynamic>>(groundStationPartnerRouter, (value) => value.toMap()),
      'l2ConnectionName': ?l2ConnectionName,
      'location': ?location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vlanId': vlanId,
    };
  }

  factory L2ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return L2ConnectionArgs(
      edgeSite: L2ConnectionsPropertiesEdgeSite.fromMap((map['edgeSite'] as Map).cast<String, dynamic>()),
      groundStation: L2ConnectionsPropertiesGroundStation.fromMap((map['groundStation'] as Map).cast<String, dynamic>()),
      groundStationPartnerRouter: L2ConnectionsPropertiesGroundStationPartnerRouter.fromMap((map['groundStationPartnerRouter'] as Map).cast<String, dynamic>()),
      l2ConnectionName: map['l2ConnectionName'] == null ? null : map['l2ConnectionName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vlanId: map['vlanId'] as int,
    );
  }
}

