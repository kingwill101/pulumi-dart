// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_input_destination_vpc.dart';

class GetInputDestination {
  final pulumi.Input<String> ip;
  final pulumi.Input<String> port;
  final pulumi.Input<String> url;
  final pulumi.Input<List<GetInputDestinationVpc>> vpcs;

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
    return <String, dynamic>{
      'ip': ip,
      'port': port,
      'url': url,
      'vpcs':
          pulumi.Input.mapInputValue<
            List<GetInputDestinationVpc>,
            List<Map<String, dynamic>>
          >(
            vpcs,
            (value) =>
                pulumi.Input.encodeList<
                  GetInputDestinationVpc,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInputDestination.fromMap(Map<String, dynamic> map) {
    return GetInputDestination(
      ip: pulumi.Input.fromValue(map['ip'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      vpcs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInputDestinationVpc>(
          map['vpcs']!,
          (value) => GetInputDestinationVpc.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
