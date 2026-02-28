// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_input_destination_vpc.dart';

class GetInputDestination {
  final String ip;
  final String port;
  final String url;
  final List<GetInputDestinationVpc> vpcs;

  /// Creates a new [GetInputDestination].
  /// [ip] Required.
  /// [port] Required.
  /// [url] Required.
  /// [vpcs] Required.
  GetInputDestination({
    required this.ip,
    required this.port,
    required this.url,
    required this.vpcs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ip'] = ip;
    map['port'] = port;
    map['url'] = url;
    map['vpcs'] =
        pulumi.Input.encodeList<GetInputDestinationVpc, Map<String, dynamic>>(
            vpcs, (value) => value.toMap());
    return map;
  }

  factory GetInputDestination.fromMap(Map<String, dynamic> map) {
    return GetInputDestination(
      ip: map['ip'] as String,
      port: map['port'] as String,
      url: map['url'] as String,
      vpcs: pulumi.Input.decodeList<GetInputDestinationVpc>(
          map['vpcs'],
          (value) => GetInputDestinationVpc.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
