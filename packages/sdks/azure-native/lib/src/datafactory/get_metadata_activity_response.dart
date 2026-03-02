// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'amazon_s3_compatible_read_settings_response.dart';
import 'binary_read_settings_response.dart';
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Activity to get metadata of dataset
class GetMetadataActivityResponse {
  /// GetMetadata activity dataset reference.
  final pulumi.Input<DatasetReferenceResponse> dataset;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Fields of metadata to get from dataset.
  final pulumi.Input<List<dynamic>>? fieldList;
  /// GetMetadata activity format settings.
  final pulumi.Input<BinaryReadSettingsResponse>? formatSettings;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// GetMetadata activity store settings.
  final pulumi.Input<AmazonS3CompatibleReadSettingsResponse>? storeSettings;
  /// Type of activity.
  /// Expected value is 'GetMetadata'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [GetMetadataActivityResponse].
  /// [dataset] GetMetadata activity dataset reference.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [fieldList] Fields of metadata to get from dataset.
  /// [formatSettings] GetMetadata activity format settings.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storeSettings] GetMetadata activity store settings.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  GetMetadataActivityResponse({
    required this.dataset,
    this.dependsOn,
    this.description,
    this.fieldList,
    this.formatSettings,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    this.storeSettings,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': pulumi.Input.mapInputValue<DatasetReferenceResponse, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'fieldList': ?fieldList,
      'formatSettings': ?pulumi.Input.mapOptionalInputValue<BinaryReadSettingsResponse, Map<String, dynamic>>(formatSettings, (value) => value.toMap()),
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'storeSettings': ?pulumi.Input.mapOptionalInputValue<AmazonS3CompatibleReadSettingsResponse, Map<String, dynamic>>(storeSettings, (value) => value.toMap()),
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMetadataActivityResponse.fromMap(Map<String, dynamic> map) {
    return GetMetadataActivityResponse(
      dataset: (DatasetReferenceResponse.fromMap((map['dataset'] as Map).cast<String, dynamic>())).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn']!, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fieldList: map['fieldList'] == null ? null : ((map['fieldList']! as List).cast<dynamic>()).input(),
      formatSettings: map['formatSettings'] == null ? null : (BinaryReadSettingsResponse.fromMap((map['formatSettings']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      storeSettings: map['storeSettings'] == null ? null : (AmazonS3CompatibleReadSettingsResponse.fromMap((map['storeSettings']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties']!, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

