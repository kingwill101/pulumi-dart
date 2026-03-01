// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_v2_engine_list_connect_address_list.dart';
import 'instance_v2_engine_list_node_group.dart';

class InstanceV2EngineList {
  /// Connect Address List
  final List<InstanceV2EngineListConnectAddressList>? connectAddressLists;
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
  final String engineType;
  /// Whether it is the latest version
  final bool? isLastVersion;
  /// Latest Version
  final String? latestVersion;
  /// Node Group List See `node_group` below.
  final List<InstanceV2EngineListNodeGroup>? nodeGroups;
  /// Engine Version
  final String? version;

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
      'connectAddressLists': ?connectAddressLists == null ? null : pulumi.Input.encodeList<InstanceV2EngineListConnectAddressList, Map<String, dynamic>>(connectAddressLists!, (value) => value.toMap()),
      'engineType': engineType,
      'isLastVersion': ?isLastVersion,
      'latestVersion': ?latestVersion,
      'nodeGroups': ?nodeGroups == null ? null : pulumi.Input.encodeList<InstanceV2EngineListNodeGroup, Map<String, dynamic>>(nodeGroups!, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory InstanceV2EngineList.fromMap(Map<String, dynamic> map) {
    return InstanceV2EngineList(
      connectAddressLists: map['connectAddressLists'] == null ? null : pulumi.Input.decodeList<InstanceV2EngineListConnectAddressList>(map['connectAddressLists'], (value) => InstanceV2EngineListConnectAddressList.fromMap((value as Map).cast<String, dynamic>())),
      engineType: map['engineType'] as String,
      isLastVersion: map['isLastVersion'] == null ? null : map['isLastVersion'] as bool,
      latestVersion: map['latestVersion'] == null ? null : map['latestVersion'] as String,
      nodeGroups: map['nodeGroups'] == null ? null : pulumi.Input.decodeList<InstanceV2EngineListNodeGroup>(map['nodeGroups'], (value) => InstanceV2EngineListNodeGroup.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

