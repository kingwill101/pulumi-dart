// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_user_data_mapping_args_doc}
/// Arguments for getUserDataMapping.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_user_data_mapping_args_doc}
class GetUserDataMappingArgs {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userDataMappingId;

  /// Creates a new [GetUserDataMappingArgs].
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [userDataMappingId] Required.
  GetUserDataMappingArgs({
    required String consentStoreId,
    required String datasetId,
    required String location,
    String? project,
    required String userDataMappingId,
  })  : consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
        datasetId = pulumi.Input.asInput<String>(datasetId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        userDataMappingId = pulumi.Input.asInput<String>(userDataMappingId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consentStoreId'] = consentStoreId;
    map['datasetId'] = datasetId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['userDataMappingId'] = userDataMappingId;
    return map;
  }

  factory GetUserDataMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetUserDataMappingArgs(
      consentStoreId: map['consentStoreId'] as String,
      datasetId: map['datasetId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      userDataMappingId: map['userDataMappingId'] as String,
    );
  }
}
