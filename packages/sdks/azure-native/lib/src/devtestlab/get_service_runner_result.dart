// ignore_for_file: unused_element, unnecessary_cast

import 'identity_properties_response.dart';

/// Result data returned by getServiceRunner.
class GetServiceRunnerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The identifier of the resource.
  final String id;
  /// The identity of the resource.
  final IdentityPropertiesResponse? identity;
  /// The location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetServiceRunnerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The identifier of the resource.
  /// [identity] The identity of the resource.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  GetServiceRunnerResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetServiceRunnerResult.fromMap(Map<String, dynamic> map) {
    return GetServiceRunnerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityPropertiesResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

