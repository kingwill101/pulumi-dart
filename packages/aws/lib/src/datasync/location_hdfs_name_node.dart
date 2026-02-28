// ignore_for_file: unused_element, unnecessary_cast

class LocationHdfsNameNode {
  /// The hostname of the NameNode in the HDFS cluster. This value is the IP address or Domain Name Service (DNS) name of the NameNode. An agent that's installed on-premises uses this hostname to communicate with the NameNode in the network.
  final String hostname;

  /// The port that the NameNode uses to listen to client requests.
  final int port;

  /// Creates a new [LocationHdfsNameNode].
  /// [hostname] The hostname of the NameNode in the HDFS cluster. This value is the IP address or Domain Name Service (DNS) name of the NameNode. An agent that's installed on-premises uses this hostname to communicate with the NameNode in the network.
  /// [port] The port that the NameNode uses to listen to client requests.
  LocationHdfsNameNode({
    required this.hostname,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostname'] = hostname;
    map['port'] = port;
    return map;
  }

  factory LocationHdfsNameNode.fromMap(Map<String, dynamic> map) {
    return LocationHdfsNameNode(
      hostname: map['hostname'] as String,
      port: map['port'] as int,
    );
  }
}
