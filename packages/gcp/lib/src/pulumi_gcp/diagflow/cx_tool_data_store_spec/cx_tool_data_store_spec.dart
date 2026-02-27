// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_tool_data_store_spec_data_store_connection/cx_tool_data_store_spec_data_store_connection.dart';

class CxToolDataStoreSpec {
  /// List of data stores to search.
  /// Structure is documented below.
  final List<CxToolDataStoreSpecDataStoreConnection> dataStoreConnections;

  /// Fallback prompt configurations to use.
  final Map<String, dynamic> fallbackPrompt;

  CxToolDataStoreSpec({
    required this.dataStoreConnections,
    required this.fallbackPrompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataStoreConnections'] = pulumi.Input.encodeList<
        CxToolDataStoreSpecDataStoreConnection,
        Map<String, dynamic>>(dataStoreConnections, (value) => value.toMap());
    map['fallbackPrompt'] = fallbackPrompt;
    return map;
  }

  factory CxToolDataStoreSpec.fromMap(Map<String, dynamic> map) {
    return CxToolDataStoreSpec(
      dataStoreConnections:
          pulumi.Input.decodeList<CxToolDataStoreSpecDataStoreConnection>(
              map['dataStoreConnections'],
              (value) => CxToolDataStoreSpecDataStoreConnection.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fallbackPrompt: (map['fallbackPrompt'] as Map).cast<String, dynamic>(),
    );
  }
}
