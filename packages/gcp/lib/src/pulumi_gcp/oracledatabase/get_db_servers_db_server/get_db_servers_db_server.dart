// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_db_servers_db_server_property/get_db_servers_db_server_property.dart';

class GetDbServersDbServer {
  /// The Display name
  final String displayName;
  final List<GetDbServersDbServerProperty> properties;

  GetDbServersDbServer({
    required this.displayName,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['properties'] =
        Input.encodeList<GetDbServersDbServerProperty, Map<String, dynamic>>(
            properties, (value) => value.toMap());
    return map;
  }

  factory GetDbServersDbServer.fromMap(Map<String, dynamic> map) {
    return GetDbServersDbServer(
      displayName: map['displayName'] as String,
      properties: Input.decodeList<GetDbServersDbServerProperty>(
          map['properties'],
          (value) => GetDbServersDbServerProperty.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
