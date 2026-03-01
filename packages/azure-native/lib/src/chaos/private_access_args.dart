// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chaos_private_access_args_doc}
/// The set of arguments for PrivateAccess.
/// {@endtemplate}
/// {@macro pulumi_chaos_private_access_args_doc}
class PrivateAccessArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the private access resource that is being created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  final pulumi.Input<String>? privateAccessName;
  /// Public Network Access Control for PrivateAccess resource.
  final pulumi.Input<String>? publicNetworkAccess;
  /// String that represents an Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PrivateAccessArgs].
  /// [location] The geo-location where the resource lives
  /// [privateAccessName] The name of the private access resource that is being created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  /// [publicNetworkAccess] Public Network Access Control for PrivateAccess resource.
  /// [resourceGroupName] String that represents an Azure resource group.
  /// [tags] Resource tags.
  PrivateAccessArgs({
    String? location,
    String? privateAccessName,
    String? publicNetworkAccess,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      privateAccessName = pulumi.Input.asOptionalInput<String>(privateAccessName),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'privateAccessName': ?privateAccessName,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PrivateAccessArgs.fromMap(Map<String, dynamic> map) {
    return PrivateAccessArgs(
      location: map['location'] == null ? null : map['location'] as String,
      privateAccessName: map['privateAccessName'] == null ? null : map['privateAccessName'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

