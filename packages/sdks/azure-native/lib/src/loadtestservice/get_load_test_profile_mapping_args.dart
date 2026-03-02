// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadtestservice_get_load_test_profile_mapping_args_doc}
/// Arguments for getLoadTestProfileMapping.
/// {@endtemplate}
/// {@macro pulumi_loadtestservice_get_load_test_profile_mapping_args_doc}
class GetLoadTestProfileMappingArgs {
  /// Load Test Profile Mapping name
  final pulumi.Input<String> loadTestProfileMappingName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetLoadTestProfileMappingArgs].
  /// [loadTestProfileMappingName] Load Test Profile Mapping name
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetLoadTestProfileMappingArgs({
    required this.loadTestProfileMappingName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadTestProfileMappingName': loadTestProfileMappingName,
      'resourceUri': resourceUri,
    };
  }

  factory GetLoadTestProfileMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadTestProfileMappingArgs(
      loadTestProfileMappingName: (map['loadTestProfileMappingName'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
    );
  }
}

