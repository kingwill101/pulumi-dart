// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_boost_spec_spec.dart';

class ToolDataStoreToolBoostSpec {
  /// The Data Store where the boosting configuration is applied. Full resource
  /// name of DataStore, such as
  /// projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}.
  final List<String> dataStores;
  /// A list of boosting specifications.
  /// Structure is documented below.
  final List<ToolDataStoreToolBoostSpecSpec> specs;

  /// Creates a new [ToolDataStoreToolBoostSpec].
  /// [dataStores] The Data Store where the boosting configuration is applied. Full resource
  /// [specs] A list of boosting specifications.
  ToolDataStoreToolBoostSpec({
    required this.dataStores,
    required this.specs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStores': dataStores,
      'specs': pulumi.Input.encodeList<ToolDataStoreToolBoostSpecSpec, Map<String, dynamic>>(specs, (value) => value.toMap()),
    };
  }

  factory ToolDataStoreToolBoostSpec.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreToolBoostSpec(
      dataStores: (map['dataStores'] as List).cast<String>(),
      specs: pulumi.Input.decodeList<ToolDataStoreToolBoostSpecSpec>(map['specs'], (value) => ToolDataStoreToolBoostSpecSpec.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

