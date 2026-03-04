// ignore_for_file: unused_element, unnecessary_cast

import 'user_identity_response.dart';
import 'user_secret_store_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The creation date of the user profile.
  final String createdDate;

  /// The identifier of the resource.
  final String id;

  /// The identity of the user.
  final UserIdentityResponse? identity;

  /// The location of the resource.
  final String? location;

  /// The name of the resource.
  final String name;

  /// The provisioning status of the resource.
  final String provisioningState;

  /// The secret store of the user.
  final UserSecretStoreResponse? secretStore;

  /// The tags of the resource.
  final Map<String, String>? tags;

  /// The type of the resource.
  final String type;

  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;

  /// Creates a new [GetUserResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the user profile.
  /// [id] The identifier of the resource.
  /// [identity] The identity of the user.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning status of the resource.
  /// [secretStore] The secret store of the user.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  GetUserResult({
    required this.azureApiVersion,
    required this.createdDate,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.provisioningState,
    this.secretStore,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'secretStore': ?secretStore?.toMap(),
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return UserIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      secretStore: (() {
        final guardedValue = map['secretStore'];
        if (guardedValue == null) return null;
        return UserSecretStoreResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
    );
  }
}
