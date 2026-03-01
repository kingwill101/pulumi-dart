// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_identity.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final GetAccountIdentity? identity;
  /// The Azure Region where the NetApp Account exists.
  final String location;
  final String name;
  final String resourceGroupName;
  final Map<String, String> tags;

  /// Creates a new [GetAccountResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identity] Optional.
  /// [location] The Azure Region where the NetApp Account exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] Required.
  GetAccountResult({
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      id: map['id'] as String,
      identity: map['identity'] == null ? null : GetAccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

