// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bundle_compute_type.dart';
import 'get_bundle_root_storage.dart';
import 'get_bundle_user_storage.dart';

/// Result data returned by getBundle.
class GetBundleResult {
  /// The ID of the bundle.
  final String? bundleId;

  /// The compute type. See supported fields below.
  final List<GetBundleComputeType> computeTypes;

  /// The description of the bundle.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the compute type.
  final String? name;

  /// The owner of the bundle.
  final String? owner;
  final String region;

  /// The root volume. See supported fields below.
  final List<GetBundleRootStorage> rootStorages;

  /// The user storage. See supported fields below.
  final List<GetBundleUserStorage> userStorages;

  /// Creates a new [GetBundleResult].
  /// [bundleId] The ID of the bundle.
  /// [computeTypes] The compute type. See supported fields below.
  /// [description] The description of the bundle.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the compute type.
  /// [owner] The owner of the bundle.
  /// [region] Required.
  /// [rootStorages] The root volume. See supported fields below.
  /// [userStorages] The user storage. See supported fields below.
  GetBundleResult({
    this.bundleId,
    required this.computeTypes,
    required this.description,
    required this.id,
    this.name,
    this.owner,
    required this.region,
    required this.rootStorages,
    required this.userStorages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'computeTypes':
          pulumi.Input.encodeList<GetBundleComputeType, Map<String, dynamic>>(
            computeTypes,
            (value) => value.toMap(),
          ),
      'description': description,
      'id': id,
      'name': ?name,
      'owner': ?owner,
      'region': region,
      'rootStorages':
          pulumi.Input.encodeList<GetBundleRootStorage, Map<String, dynamic>>(
            rootStorages,
            (value) => value.toMap(),
          ),
      'userStorages':
          pulumi.Input.encodeList<GetBundleUserStorage, Map<String, dynamic>>(
            userStorages,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetBundleResult.fromMap(Map<String, dynamic> map) {
    return GetBundleResult(
      bundleId: (() {
        final guardedValue = map['bundleId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      computeTypes: pulumi.Input.decodeList<GetBundleComputeType>(
        map['computeTypes']!,
        (value) => GetBundleComputeType.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      description: map['description'] as String,
      id: map['id'] as String,
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      rootStorages: pulumi.Input.decodeList<GetBundleRootStorage>(
        map['rootStorages']!,
        (value) => GetBundleRootStorage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      userStorages: pulumi.Input.decodeList<GetBundleUserStorage>(
        map['userStorages']!,
        (value) => GetBundleUserStorage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
