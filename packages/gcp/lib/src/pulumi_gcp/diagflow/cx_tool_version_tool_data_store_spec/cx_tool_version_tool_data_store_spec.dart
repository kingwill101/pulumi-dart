// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_tool_version_tool_data_store_spec_data_store_connection/cx_tool_version_tool_data_store_spec_data_store_connection.dart';

class CxToolVersionToolDataStoreSpec {
  /// List of data stores to search.
  /// Structure is documented below.
  final List<CxToolVersionToolDataStoreSpecDataStoreConnection>
      dataStoreConnections;

  /// Fallback prompt configurations to use.
  final Map<String, dynamic> fallbackPrompt;

  CxToolVersionToolDataStoreSpec({
    required this.dataStoreConnections,
    required this.fallbackPrompt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataStoreConnections'] = pulumi.Input.encodeList<
        CxToolVersionToolDataStoreSpecDataStoreConnection,
        Map<String, dynamic>>(dataStoreConnections, (value) => value.toMap());
    map['fallbackPrompt'] = fallbackPrompt;
    return map;
  }

  factory CxToolVersionToolDataStoreSpec.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolDataStoreSpec(
      dataStoreConnections: pulumi.Input.decodeList<
              CxToolVersionToolDataStoreSpecDataStoreConnection>(
          map['dataStoreConnections'],
          (value) => CxToolVersionToolDataStoreSpecDataStoreConnection.fromMap(
              (value as Map).cast<String, dynamic>())),
      fallbackPrompt: (map['fallbackPrompt'] as Map).cast<String, dynamic>(),
    );
  }
}
