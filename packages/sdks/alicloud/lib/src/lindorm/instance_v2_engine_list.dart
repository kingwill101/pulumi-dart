// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_v2_engine_list_connect_address_list.dart';
import 'instance_v2_engine_list_node_group.dart';

class InstanceV2EngineList {
  /// Connect Address List
  final pulumi.Input<List<InstanceV2EngineListConnectAddressList>>?
  connectAddressLists;

  /// Engine
  ///
  /// Enumeration value:
  /// - `TABLE`: Wide table engine
  /// - `TSDB`: Time series Engine
  /// - `LSEARCH`: Search engine
  /// - `LTS`: LTS engine
  /// - `LVECTOR`: Vector engine
  /// - `LCOLUMN`: Column-store engine
  /// - `LAI`: AI engine
  /// - `FILE`: The underlying file engine
  /// - `LMESSAGE`: Message engine
  /// - `LROW`: Wide table Engine 3.0
  /// - `LSTREAM`: Stream engine
  final pulumi.Input<String> engineType;

  /// Whether it is the latest version
  final pulumi.Input<bool>? isLastVersion;

  /// Latest Version
  final pulumi.Input<String>? latestVersion;

  /// Node Group List See `node_group` below.
  final pulumi.Input<List<InstanceV2EngineListNodeGroup>>? nodeGroups;

  /// Engine Version
  final pulumi.Input<String>? version;

  /// Creates a new [InstanceV2EngineList].
  /// [connectAddressLists] Connect Address List
  /// [engineType] Engine
  /// [isLastVersion] Whether it is the latest version
  /// [latestVersion] Latest Version
  /// [nodeGroups] Node Group List See `node_group` below.
  /// [version] Engine Version
  InstanceV2EngineList({
    this.connectAddressLists,
    required this.engineType,
    this.isLastVersion,
    this.latestVersion,
    this.nodeGroups,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectAddressLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceV2EngineListConnectAddressList>,
            List<Map<String, dynamic>>
          >(
            connectAddressLists,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceV2EngineListConnectAddressList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'engineType': engineType,
      'isLastVersion': ?isLastVersion,
      'latestVersion': ?latestVersion,
      'nodeGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceV2EngineListNodeGroup>,
            List<Map<String, dynamic>>
          >(
            nodeGroups,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceV2EngineListNodeGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'version': ?version,
    };
  }

  factory InstanceV2EngineList.fromMap(Map<String, dynamic> map) {
    return InstanceV2EngineList(
      connectAddressLists: (() {
        final guardedValue = map['connectAddressLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceV2EngineListConnectAddressList>(
            guardedValue,
            (value) => InstanceV2EngineListConnectAddressList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      engineType: pulumi.Input.fromValue(map['engineType'] as String),
      isLastVersion: (() {
        final guardedValue = map['isLastVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      latestVersion: (() {
        final guardedValue = map['latestVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeGroups: (() {
        final guardedValue = map['nodeGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceV2EngineListNodeGroup>(
            guardedValue,
            (value) => InstanceV2EngineListNodeGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
