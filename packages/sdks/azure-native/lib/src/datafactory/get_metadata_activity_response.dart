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
      'dataset':
          pulumi.Input.mapInputValue<
            DatasetReferenceResponse,
            Map<String, dynamic>
          >(dataset, (value) => value.toMap()),
      'dependsOn':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActivityDependencyResponse>,
            List<Map<String, dynamic>>
          >(
            dependsOn,
            (value) =>
                pulumi.Input.encodeList<
                  ActivityDependencyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'fieldList': ?fieldList,
      'formatSettings':
          ?pulumi.Input.mapOptionalInputValue<
            BinaryReadSettingsResponse,
            Map<String, dynamic>
          >(formatSettings, (value) => value.toMap()),
      'linkedServiceName':
          ?pulumi.Input.mapOptionalInputValue<
            LinkedServiceReferenceResponse,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityPolicyResponse,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
      'state': ?state,
      'storeSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AmazonS3CompatibleReadSettingsResponse,
            Map<String, dynamic>
          >(storeSettings, (value) => value.toMap()),
      'type': type,
      'userProperties':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserPropertyResponse>,
            List<Map<String, dynamic>>
          >(
            userProperties,
            (value) =>
                pulumi.Input.encodeList<
                  UserPropertyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetMetadataActivityResponse.fromMap(Map<String, dynamic> map) {
    return GetMetadataActivityResponse(
      dataset: pulumi.Input.fromValue(
        DatasetReferenceResponse.fromMap(
          (map['dataset']! as Map).cast<String, dynamic>(),
        ),
      ),
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActivityDependencyResponse>(
            guardedValue,
            (value) => ActivityDependencyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fieldList: (() {
        final guardedValue = map['fieldList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      formatSettings: (() {
        final guardedValue = map['formatSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BinaryReadSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      linkedServiceName: (() {
        final guardedValue = map['linkedServiceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinkedServiceReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() {
        final guardedValue = map['onInactiveMarkAs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storeSettings: (() {
        final guardedValue = map['storeSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AmazonS3CompatibleReadSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() {
        final guardedValue = map['userProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserPropertyResponse>(
            guardedValue,
            (value) => UserPropertyResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
