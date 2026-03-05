// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationHdfsNameNode {
  /// The hostname of the NameNode in the HDFS cluster. This value is the IP address or Domain Name Service (DNS) name of the NameNode. An agent that's installed on-premises uses this hostname to communicate with the NameNode in the network.
  final pulumi.Input<String> hostname;
  /// The port that the NameNode uses to listen to client requests.
  final pulumi.Input<int> port;

  /// Creates a new [LocationHdfsNameNode].
  /// [hostname] The hostname of the NameNode in the HDFS cluster. This value is the IP address or Domain Name Service (DNS) name of the NameNode. An agent that's installed on-premises uses this hostname to communicate with the NameNode in the network.
  /// [port] The port that the NameNode uses to listen to client requests.
  LocationHdfsNameNode({
    required this.hostname,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'port': port,
    };
  }

  factory LocationHdfsNameNode.fromMap(Map<String, dynamic> map) {
    return LocationHdfsNameNode(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

