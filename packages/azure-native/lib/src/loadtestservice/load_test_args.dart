// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_loadtestservice_load_test_args_doc}
/// The set of arguments for LoadTest.
/// {@endtemplate}
/// {@macro pulumi_loadtestservice_load_test_args_doc}
class LoadTestArgs {
  /// Description of the resource.
  final pulumi.Input<String>? description;
  /// CMK Encryption property.
  final pulumi.Input<EncryptionProperties>? encryption;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Load Test name
  final pulumi.Input<String>? loadTestName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LoadTestArgs].
  /// [description] Description of the resource.
  /// [encryption] CMK Encryption property.
  /// [identity] The managed service identities assigned to this resource.
  /// [loadTestName] Load Test name
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  LoadTestArgs({
    String? description,
    EncryptionProperties? encryption,
    ManagedServiceIdentity? identity,
    String? loadTestName,
    String? location,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      encryption = pulumi.Input.asOptionalInput<EncryptionProperties>(encryption),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      loadTestName = pulumi.Input.asOptionalInput<String>(loadTestName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'loadTestName': ?loadTestName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LoadTestArgs.fromMap(Map<String, dynamic> map) {
    return LoadTestArgs(
      description: map['description'] == null ? null : map['description'] as String,
      encryption: map['encryption'] == null ? null : EncryptionProperties.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      loadTestName: map['loadTestName'] == null ? null : map['loadTestName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

