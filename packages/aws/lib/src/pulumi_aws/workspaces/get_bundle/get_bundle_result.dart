// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_bundle_compute_type/get_bundle_compute_type.dart';
import '../get_bundle_root_storage/get_bundle_root_storage.dart';
import '../get_bundle_user_storage/get_bundle_user_storage.dart';

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
    final map = <String, dynamic>{};
    final bundleIdValue = bundleId;
    if (bundleIdValue != null) {
      map['bundleId'] = bundleIdValue;
    }
    map['computeTypes'] =
        Input.encodeList<GetBundleComputeType, Map<String, dynamic>>(
            computeTypes, (value) => value.toMap());
    map['description'] = description;
    map['id'] = id;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ownerValue = owner;
    if (ownerValue != null) {
      map['owner'] = ownerValue;
    }
    map['region'] = region;
    map['rootStorages'] =
        Input.encodeList<GetBundleRootStorage, Map<String, dynamic>>(
            rootStorages, (value) => value.toMap());
    map['userStorages'] =
        Input.encodeList<GetBundleUserStorage, Map<String, dynamic>>(
            userStorages, (value) => value.toMap());
    return map;
  }

  factory GetBundleResult.fromMap(Map<String, dynamic> map) {
    return GetBundleResult(
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
      computeTypes: Input.decodeList<GetBundleComputeType>(
          map['computeTypes'],
          (value) => GetBundleComputeType.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
      region: map['region'] as String,
      rootStorages: Input.decodeList<GetBundleRootStorage>(
          map['rootStorages'],
          (value) => GetBundleRootStorage.fromMap(
              (value as Map).cast<String, dynamic>())),
      userStorages: Input.decodeList<GetBundleUserStorage>(
          map['userStorages'],
          (value) => GetBundleUserStorage.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
