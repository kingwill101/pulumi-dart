// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadtestservice_get_load_test_mapping_args_doc}
/// Arguments for getLoadTestMapping.
/// {@endtemplate}
/// {@macro pulumi_loadtestservice_get_load_test_mapping_args_doc}
class GetLoadTestMappingArgs {
  /// Load Test Mapping name
  final pulumi.Input<String> loadTestMappingName;

  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetLoadTestMappingArgs].
  /// [loadTestMappingName] Load Test Mapping name
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetLoadTestMappingArgs({
    required this.loadTestMappingName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadTestMappingName': loadTestMappingName,
      'resourceUri': resourceUri,
    };
  }

  factory GetLoadTestMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadTestMappingArgs(
      loadTestMappingName: pulumi.Input.fromValue(
        map['loadTestMappingName'] as String,
      ),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
