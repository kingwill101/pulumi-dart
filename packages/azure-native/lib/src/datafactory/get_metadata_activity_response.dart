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
  final DatasetReferenceResponse dataset;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Fields of metadata to get from dataset.
  final List<dynamic>? fieldList;
  /// GetMetadata activity format settings.
  final BinaryReadSettingsResponse? formatSettings;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// GetMetadata activity store settings.
  final AmazonS3CompatibleReadSettingsResponse? storeSettings;
  /// Type of activity.
  /// Expected value is 'GetMetadata'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

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
      'dataset': dataset.toMap(),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'fieldList': ?fieldList,
      'formatSettings': ?formatSettings == null ? null : formatSettings!.toMap(),
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'storeSettings': ?storeSettings == null ? null : storeSettings!.toMap(),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory GetMetadataActivityResponse.fromMap(Map<String, dynamic> map) {
    return GetMetadataActivityResponse(
      dataset: DatasetReferenceResponse.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      fieldList: map['fieldList'] == null ? null : (map['fieldList'] as List).cast<dynamic>(),
      formatSettings: map['formatSettings'] == null ? null : BinaryReadSettingsResponse.fromMap((map['formatSettings'] as Map).cast<String, dynamic>()),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      storeSettings: map['storeSettings'] == null ? null : AmazonS3CompatibleReadSettingsResponse.fromMap((map['storeSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

